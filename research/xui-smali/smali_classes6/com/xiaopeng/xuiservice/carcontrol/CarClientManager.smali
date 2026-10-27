.class public Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
.super Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;
.source "CarClientManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;,
        Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static CarCallBackInited:Z = false

.field private static final EVENT_DISPATCH_TIME_INTERVAL_MS:J = 0x3e8L

.field private static mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static mEventListMaxSize:I

.field private static mRecordEvents:Z

.field private static final mUnInterestedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CAR_VCU_SPECIAL:Ljava/lang/String;

.field private DEBUG_EVENT_LOG:Z

.field private final ECU_CALLBACK_NOT_REGISTER:I

.field private final ECU_CALLBACK_REGISTED:I

.field private final ECU_CALLBACK_REGISTING:I

.field private carConditionEventListener:Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;

.field private mCarAmpEventCallback:Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

.field private mCarAmpManager:Landroid/car/hardware/amp/CarAmpManager;

.field private mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

.field private mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

.field private mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

.field private mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

.field private mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

.field private final mCarClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/car/CarManagerBase;",
            ">;"
        }
    .end annotation
.end field

.field private mCarConditionManager:Landroid/car/hardware/condition/CarConditionManager;

.field private mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

.field private mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

.field private mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

.field private mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

.field private mCarHudEventCallback:Landroid/car/hardware/hud/CarHudManager$CarHudEventCallback;

.field private mCarHudManager:Landroid/car/hardware/hud/CarHudManager;

.field private mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

.field private mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

.field private mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

.field private mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

.field private mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

.field private mCarInputManager:Landroid/car/hardware/input/CarInputManager;

.field private mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

.field private mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mCarMsmEventCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

.field private mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

.field private mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

.field private mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

.field private mCarRemindManager:Landroid/car/xpeng/remind/CarRemindManager;

.field private mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

.field private mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

.field private mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

.field private mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

.field private mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

.field private mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

.field private mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

.field private mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mCarVcuSpecialEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVpmEventCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

.field private mCarVpmManager:Landroid/car/hardware/vpm/CarVpmManager;

.field private mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

.field private mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

.field private mConnListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;",
            ">;"
        }
    .end annotation
.end field

.field private mEcuCallbackRegister:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPowerListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPropCountElapsed:J

.field private final mPropCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimingTimeOutLog:Lcom/xiaopeng/xuiservice/utils/TimingLog;

.field private mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

.field private mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

.field private mXpRemindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->CarCallBackInited:Z

    .line 184
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventList:Ljava/util/LinkedList;

    .line 185
    const-string v1, "persist.sys.xiaopeng.xui.car.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mRecordEvents:Z

    .line 186
    const-string v1, "persist.sys.xiaopeng.xui.car.eventsize"

    const/16 v2, 0x5460

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventListMaxSize:I

    .line 187
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    .line 189
    const v3, 0x21403809

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 188
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mUnInterestedIds:Landroid/util/ArraySet;

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "persist.xuiservice.event.log.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->DEBUG_EVENT_LOG:Z

    .line 118
    const-string v0, "VCU_SPECIAL"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->CAR_VCU_SPECIAL:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    .line 121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPowerListener:Ljava/util/Set;

    .line 122
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEcuCallbackRegister:Landroid/util/ArrayMap;

    .line 123
    iput v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->ECU_CALLBACK_NOT_REGISTER:I

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->ECU_CALLBACK_REGISTING:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->ECU_CALLBACK_REGISTED:I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/TimingLog;

    const-string v1, "CarClientManager:onChangeEvent"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/TimingLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mTimingTimeOutLog:Lcom/xiaopeng/xuiservice/utils/TimingLog;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarClientMap:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountMap:Ljava/util/Map;

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountElapsed:J

    .line 334
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$1;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->carConditionEventListener:Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    const-string v0, "carapi"

    new-instance v1, Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$8LEMONbYq_viPuh8st96i90RCGg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$8LEMONbYq_viPuh8st96i90RCGg;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 145
    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/car/hardware/CarPropertyValue;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->dispatchEvent(Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->dispatchErrorEvent(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
    .param p1, "x1"    # I

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->dispatchPowerEvent(I)V

    return-void
.end method

.method private addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 4
    .param p1, "serviceid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 1023
    if-nez p2, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener error: callback is null, serviceid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1030
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1031
    if-nez v1, :cond_1

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 1034
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1035
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->checkEcuListenerExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1036
    sget-boolean v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->CarCallBackInited:Z

    if-eqz v0, :cond_2

    .line 1037
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->registerCarListener(Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->setCarRegisterStatus(Ljava/lang/String;I)V

    .line 1041
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    monitor-enter v1

    .line 1043
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1046
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1047
    :try_start_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1044
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1050
    :cond_4
    :goto_1
    return-void

    .line 1030
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method private checkEcuListenerExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serviceID"    # Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1072
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1075
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1074
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1072
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dispatchErrorEvent(Ljava/lang/String;II)V
    .locals 8
    .param p1, "serviceid"    # Ljava/lang/String;
    .param p2, "propertyId"    # I
    .param p3, "zone"    # I

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 295
    .local v0, "enterTick":J
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->DEBUG_EVENT_LOG:Z

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchErrorEvent serviceid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " propertyId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 301
    .local v3, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 302
    if-eqz v3, :cond_2

    .line 303
    monitor-enter v3

    .line 304
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 305
    .local v4, "callback":Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    invoke-interface {v4, p2, p3}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onErrorEvent(II)V

    .line 306
    .end local v4    # "callback":Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    goto :goto_0

    .line 307
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 309
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 310
    .local v4, "delta":J
    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 311
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchErrorEvent slow,time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",service="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",prop id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_3
    return-void

    .line 301
    .end local v3    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    .end local v4    # "delta":J
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private dispatchEvent(Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V
    .locals 7
    .param p1, "serviceid"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 246
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->DEBUG_EVENT_LOG:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchEvent value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->incrementSignalCount(Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 254
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 255
    if-eqz v1, :cond_4

    .line 256
    sget-boolean v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mRecordEvents:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mUnInterestedIds:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$1;)V

    .line 258
    .local v0, "record":Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;->eventTick:J

    .line 259
    iput-object p1, v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;->serviceId:Ljava/lang/String;

    .line 260
    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;->propertyId:I

    .line 262
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;->callbacks:Ljava/util/ArrayList;

    .line 263
    sget-object v3, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventList:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :try_start_2
    sget-object v4, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    sget v5, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventListMaxSize:I

    if-lt v4, v5, :cond_1

    .line 265
    sget-object v4, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;

    .line 267
    .local v4, "first":Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;->callbacks:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 268
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 269
    iput-object v2, v4, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;->callbacks:Ljava/util/ArrayList;

    .line 270
    nop

    .line 273
    .end local v4    # "first":Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;
    :cond_1
    sget-object v2, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v3

    .line 277
    goto :goto_0

    .line 274
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchEvent e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v0    # "record":Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    monitor-enter v1

    .line 281
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 282
    .local v2, "callback":Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 283
    .local v3, "enterTick":J
    new-instance v5, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;

    invoke-direct {v5, p2, v2, v3, v4}, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 285
    .local v5, "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->carCallbackEnter(Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;)V

    .line 286
    invoke-interface {v2, p2}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 287
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->carCallbackLeave(Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;)V

    .line 288
    .end local v2    # "callback":Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    .end local v3    # "enterTick":J
    .end local v5    # "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    goto :goto_1

    .line 289
    :cond_3
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 291
    :cond_4
    :goto_2
    return-void

    .line 254
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private dispatchPowerEvent(I)V
    .locals 6
    .param p1, "state"    # I

    .line 317
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->DEBUG_EVENT_LOG:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchPowerEvent state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPowerListener:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPowerListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 322
    .local v1, "listener":Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 323
    .local v2, "enterTick":J
    new-instance v4, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 325
    .local v4, "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->carCallbackEnter(Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;)V

    .line 326
    invoke-interface {v1, p1}, Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;->onStateChanged(I)V

    .line 327
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->carCallbackLeave(Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;)V

    .line 329
    .end local v1    # "listener":Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;
    .end local v2    # "enterTick":J
    .end local v4    # "record":Lcom/xiaopeng/xuiservice/debug/WatchDog$CarCallbackRecord;
    goto :goto_0

    .line 331
    :cond_1
    return-void
.end method

.method private doRegisterAfterCarInited()V
    .locals 4

    .line 1053
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEcuCallbackRegister:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEcuCallbackRegister:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    .local v1, "serviceId":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEcuCallbackRegister:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1056
    .local v2, "status":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1057
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->registerCarListener(Ljava/lang/String;)V

    .line 1053
    .end local v1    # "serviceId":Ljava/lang/String;
    .end local v2    # "status":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;
    .locals 1

    .line 152
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    return-object v0
.end method

.method private incrementSignalCount(Ljava/lang/String;Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountMap:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 225
    .local v0, "signalCountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y;->INSTANCE:Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    const v2, 0x21401409

    if-ne v1, v2, :cond_2

    .line 231
    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "igOff, clear mPropCountMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountElapsed:J

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p2}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 236
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "igOn, mPropCountMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountElapsed:J

    goto :goto_0

    .line 239
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountElapsed:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPropCountMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPropCountElapsed:J

    .line 243
    :cond_3
    :goto_0
    return-void
.end method

.method private initCarCallback()V
    .locals 2

    .line 343
    sget-boolean v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->CarCallBackInited:Z

    if-eqz v0, :cond_0

    .line 344
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    const-string v1, "initCarCallback()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$2;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 359
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$3;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    .line 372
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$4;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 384
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$5;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuSpecialEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 397
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$6;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 410
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$7;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 423
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$8;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 436
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$9;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmEventCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    .line 449
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$10;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 461
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$11;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$11;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmEventCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    .line 474
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$12;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$12;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 502
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$13;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$13;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 514
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$14;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$14;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 526
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$15;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$15;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 538
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$16;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$16;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    .line 550
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$17;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$17;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 562
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$18;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$18;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    .line 574
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$19;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$19;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpEventCallback:Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    .line 586
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$20;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$20;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    .line 598
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$21;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$21;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 605
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$22;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$22;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    .line 617
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$23;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$23;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    .line 629
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$24;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$24;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpRemindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    .line 641
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->CarCallBackInited:Z

    .line 642
    return-void
.end method

.method public static synthetic lambda$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private registerCarListener(Ljava/lang/String;)V
    .locals 18
    .param p1, "serviceid"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 697
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCarListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xf

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/4 v13, 0x3

    const/16 v16, 0xc

    const/4 v0, 0x2

    const/4 v15, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v3, "xp_input"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v3, v16

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "VCU_SPECIAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v3, "xp_remind"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v3, "xp_diagnostic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "power"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "hvac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v15

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v3, "xp_xpu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v13

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v3, "xp_vpm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v3, "xp_vcu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v11

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v3, "xp_srs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v3, "xp_scu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v9

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v3, "xp_msm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v3, "xp_mcu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v3, "xp_llu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v3, "xp_icm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v3, "xp_hud"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto :goto_1

    :sswitch_10
    const-string/jumbo v3, "xp_esp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_11
    const-string/jumbo v3, "xp_eps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_12
    const-string/jumbo v3, "xp_ciu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_13
    const-string/jumbo v3, "xp_bcm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_14
    const-string/jumbo v3, "xp_atl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto :goto_1

    :sswitch_15
    const-string/jumbo v3, "xp_amp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_1

    :sswitch_16
    const-string/jumbo v3, "xp_tpms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto :goto_1

    :sswitch_17
    const-string/jumbo v3, "xp_tbox"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 839
    :pswitch_0
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHudManager:Landroid/car/hardware/hud/CarHudManager;

    if-nez v3, :cond_1a

    .line 840
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/hud/CarHudManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHudManager:Landroid/car/hardware/hud/CarHudManager;

    goto/16 :goto_2

    .line 831
    :pswitch_1
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarRemindManager:Landroid/car/xpeng/remind/CarRemindManager;

    if-nez v3, :cond_1

    .line 832
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/xpeng/remind/CarRemindManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarRemindManager:Landroid/car/xpeng/remind/CarRemindManager;

    .line 834
    :cond_1
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarRemindManager:Landroid/car/xpeng/remind/CarRemindManager;

    .line 835
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForRemind()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpRemindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    .line 834
    invoke-virtual {v3, v4, v5}, Landroid/car/xpeng/remind/CarRemindManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 837
    goto/16 :goto_3

    .line 822
    :pswitch_2
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    if-nez v3, :cond_2

    .line 823
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/diagnostic/XpDiagnosticManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    .line 825
    :cond_2
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    .line 826
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForXpDiagnostic()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    .line 825
    invoke-virtual {v3, v4, v5, v15}, Landroid/car/diagnostic/XpDiagnosticManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 829
    goto/16 :goto_3

    .line 812
    :pswitch_3
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    if-nez v3, :cond_3

    .line 813
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/tpms/CarTpmsManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    .line 814
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForTpms()Landroid/util/ArraySet;

    move-result-object v3

    .line 815
    .local v3, "propSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_4

    .line 816
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    invoke-virtual {v4, v3, v5, v15}, Landroid/car/hardware/tpms/CarTpmsManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    goto/16 :goto_3

    .line 818
    :cond_4
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    const-string v5, "registerPropCallbackWithFlag, null prop set"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    goto/16 :goto_3

    .line 807
    .end local v3    # "propSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :pswitch_4
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-nez v3, :cond_5

    .line 808
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 809
    :cond_5
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForVcuSpecialIds()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuSpecialEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/vcu/CarVcuManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 810
    goto/16 :goto_3

    .line 801
    :pswitch_5
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-nez v3, :cond_6

    .line 802
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/power/CarPowerManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 803
    :cond_6
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {v3}, Landroid/car/hardware/power/CarPowerManager;->clearListener()V

    .line 804
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    iget-object v4, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/car/hardware/power/CarPowerManager;->setListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;Ljava/util/concurrent/Executor;)V

    .line 805
    goto/16 :goto_3

    .line 796
    :pswitch_6
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmManager:Landroid/car/hardware/vpm/CarVpmManager;

    if-nez v3, :cond_7

    .line 797
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/vpm/CarVpmManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmManager:Landroid/car/hardware/vpm/CarVpmManager;

    .line 798
    :cond_7
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmManager:Landroid/car/hardware/vpm/CarVpmManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForVpm()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmEventCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/vpm/CarVpmManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 799
    goto/16 :goto_3

    .line 791
    :pswitch_7
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-nez v3, :cond_8

    .line 792
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/llu/CarLluManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    .line 793
    :cond_8
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForLlu()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/llu/CarLluManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 794
    goto/16 :goto_3

    .line 786
    :pswitch_8
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    if-nez v3, :cond_9

    .line 787
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/eps/CarEpsManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    .line 788
    :cond_9
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForEps()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/eps/CarEpsManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 789
    goto/16 :goto_3

    .line 781
    :pswitch_9
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpManager:Landroid/car/hardware/amp/CarAmpManager;

    if-nez v3, :cond_a

    .line 782
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/amp/CarAmpManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpManager:Landroid/car/hardware/amp/CarAmpManager;

    .line 783
    :cond_a
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpManager:Landroid/car/hardware/amp/CarAmpManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForAmp()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpEventCallback:Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/amp/CarAmpManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 784
    goto/16 :goto_3

    .line 776
    :pswitch_a
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    if-nez v3, :cond_b

    .line 777
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/atl/CarAtlManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    .line 778
    :cond_b
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForAtl()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/atl/CarAtlManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 779
    goto/16 :goto_3

    .line 771
    :pswitch_b
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    if-nez v3, :cond_c

    .line 772
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/input/CarInputManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    .line 773
    :cond_c
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForInput()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/input/CarInputManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 774
    goto/16 :goto_3

    .line 766
    :pswitch_c
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    if-nez v3, :cond_d

    .line 767
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/esp/CarEspManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    .line 768
    :cond_d
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForEsp()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/esp/CarEspManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 769
    goto/16 :goto_3

    .line 761
    :pswitch_d
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-nez v3, :cond_e

    .line 762
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/icm/CarIcmManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    .line 763
    :cond_e
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForIcm()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/icm/CarIcmManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 764
    goto/16 :goto_3

    .line 751
    :pswitch_e
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    if-nez v3, :cond_f

    .line 752
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/srs/CarSrsManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    .line 753
    :cond_f
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForSrs()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/srs/CarSrsManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 754
    goto/16 :goto_3

    .line 746
    :pswitch_f
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-nez v3, :cond_10

    .line 747
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/tbox/CarTboxManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    .line 748
    :cond_10
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForTbox()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/tbox/CarTboxManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 749
    goto/16 :goto_3

    .line 741
    :pswitch_10
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    if-nez v3, :cond_11

    .line 742
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/scu/CarScuManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    .line 743
    :cond_11
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForScu()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/scu/CarScuManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 744
    goto/16 :goto_3

    .line 731
    :pswitch_11
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-nez v3, :cond_12

    .line 732
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 733
    :cond_12
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForVcu()Landroid/util/ArraySet;

    move-result-object v14

    iget-object v12, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v3, v14, v12, v15}, Landroid/car/hardware/vcu/CarVcuManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 734
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarConditionManager:Landroid/car/hardware/condition/CarConditionManager;

    if-nez v3, :cond_13

    .line 735
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    const-string/jumbo v12, "xp_condition"

    invoke-virtual {v3, v12}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/condition/CarConditionManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarConditionManager:Landroid/car/hardware/condition/CarConditionManager;

    .line 736
    :cond_13
    new-instance v3, Landroid/car/hardware/condition/CarConditionInfo$Builder;

    invoke-direct {v3}, Landroid/car/hardware/condition/CarConditionInfo$Builder;-><init>()V

    .line 737
    .local v3, "builder":Landroid/car/hardware/condition/CarConditionInfo$Builder;
    const/16 v12, 0x14

    new-array v12, v12, [Ljava/lang/Float;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v8

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v15

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v0

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v13

    const/4 v8, 0x4

    const/high16 v13, 0x41700000    # 15.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x5

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v8

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v11

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v9

    const/16 v8, 0x8

    const/high16 v9, 0x420c0000    # 35.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v12, v8

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v10

    const/high16 v8, 0x42340000    # 45.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v6

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v12, v5

    const/high16 v5, 0x425c0000    # 55.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v12, v16

    const/16 v5, 0xd

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v12, v5

    const/16 v5, 0xe

    const/high16 v6, 0x42820000    # 65.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v12, v5

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v12, v4

    const v4, 0x42986666    # 76.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v12, v7

    const v4, 0x42a1eb85    # 80.96f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x11

    aput-object v4, v12, v5

    const v4, 0x42ab6d91

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x12

    aput-object v4, v12, v5

    const v4, 0x42e679db

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x13

    aput-object v4, v12, v5

    invoke-virtual {v3, v12}, Landroid/car/hardware/condition/CarConditionInfo$Builder;->setCarSpeedLimit([Ljava/lang/Float;)Landroid/car/hardware/condition/CarConditionInfo$Builder;

    .line 738
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarConditionManager:Landroid/car/hardware/condition/CarConditionManager;

    const v5, 0x21601225

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/car/hardware/condition/CarConditionInfo$Builder;->build()Landroid/car/hardware/condition/CarConditionInfo;

    move-result-object v6

    iget-object v7, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->carConditionEventListener:Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;

    invoke-virtual {v4, v5, v6, v7}, Landroid/car/hardware/condition/CarConditionManager;->registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;)V

    .line 739
    goto/16 :goto_3

    .line 726
    .end local v3    # "builder":Landroid/car/hardware/condition/CarConditionInfo$Builder;
    :pswitch_12
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-nez v3, :cond_14

    .line 727
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 728
    :cond_14
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForBcm()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/bcm/CarBcmManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 729
    goto/16 :goto_3

    .line 721
    :pswitch_13
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    if-nez v3, :cond_15

    .line 722
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/ciu/CarCiuManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    .line 723
    :cond_15
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForCiu()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/ciu/CarCiuManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 724
    goto/16 :goto_3

    .line 716
    :pswitch_14
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    if-nez v3, :cond_16

    .line 717
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/CarXpuManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    .line 718
    :cond_16
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForXpu()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/xpu/CarXpuManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 719
    goto :goto_3

    .line 711
    :pswitch_15
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    if-nez v3, :cond_17

    .line 712
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/msm/CarMsmManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    .line 713
    :cond_17
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForMsm()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmEventCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/msm/CarMsmManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 714
    goto :goto_3

    .line 706
    :pswitch_16
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-nez v3, :cond_18

    .line 707
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 708
    :cond_18
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForHvac()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/hvac/CarHvacManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 709
    goto :goto_3

    .line 701
    :pswitch_17
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-nez v3, :cond_19

    .line 702
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v3, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 703
    :cond_19
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForMcu()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v3, v4, v5, v15}, Landroid/car/hardware/mcu/CarMcuManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    .line 704
    goto :goto_3

    .line 844
    :cond_1a
    :goto_2
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCarListener ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :goto_3
    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->setCarRegisterStatus(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    goto :goto_4

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->handleException(Ljava/lang/Exception;)V

    .line 851
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f848242 -> :sswitch_17
        -0x6f844df7 -> :sswitch_16
        -0x2ce38403 -> :sswitch_15
        -0x2ce3832e -> :sswitch_14
        -0x2ce3817b -> :sswitch_13
        -0x2ce37cf8 -> :sswitch_12
        -0x2ce3749f -> :sswitch_11
        -0x2ce37445 -> :sswitch_10
        -0x2ce368d0 -> :sswitch_f
        -0x2ce36734 -> :sswitch_e
        -0x2ce35ad2 -> :sswitch_d
        -0x2ce35828 -> :sswitch_c
        -0x2ce35640 -> :sswitch_b
        -0x2ce341a2 -> :sswitch_a
        -0x2ce33fd3 -> :sswitch_9
        -0x2ce3365f -> :sswitch_8
        -0x2ce334d4 -> :sswitch_7
        -0x2ce32d4a -> :sswitch_6
        0x310db0 -> :sswitch_5
        0x65e8905 -> :sswitch_4
        0xfbe974e -> :sswitch_3
        0x5c52882c -> :sswitch_2
        0x6e69f6a2 -> :sswitch_1
        0x7e5eafc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 2
    .param p1, "serviceid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 1201
    if-nez p2, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    const-string v1, "removeListerner error: callback is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    return-void

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1208
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1209
    if-eqz v1, :cond_2

    .line 1210
    monitor-enter v1

    .line 1211
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1214
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1216
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->checkEcuListenerExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1217
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1219
    :cond_3
    return-void

    .line 1208
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private resetCarApi()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    const-string v1, "resetCarApi"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    .line 656
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    .line 657
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 658
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 659
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 660
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    .line 661
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmManager:Landroid/car/hardware/vpm/CarVpmManager;

    .line 662
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    .line 663
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    .line 664
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    .line 665
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAvasManager:Landroid/car/hardware/avas/CarAvasManager;

    .line 666
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    .line 667
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    .line 668
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    .line 669
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    .line 670
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 671
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    .line 672
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    .line 673
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 674
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarConditionManager:Landroid/car/hardware/condition/CarConditionManager;

    .line 675
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    .line 676
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpManager:Landroid/car/hardware/amp/CarAmpManager;

    .line 677
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    .line 678
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarRemindManager:Landroid/car/xpeng/remind/CarRemindManager;

    .line 679
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHudManager:Landroid/car/hardware/hud/CarHudManager;

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarClientMap:Ljava/util/Map;

    monitor-enter v0

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarClientMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 683
    monitor-exit v0

    .line 684
    return-void

    .line 683
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCarRegisterStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "serviceID"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 1063
    monitor-enter p0

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEcuCallbackRegister:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    monitor-exit p0

    .line 1066
    return-void

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterCarListener(Ljava/lang/String;)V
    .locals 4
    .param p1, "serviceid"    # Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCarListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "xp_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "VCU_SPECIAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "xp_diagnostic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "hvac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "xp_vpm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v1, "xp_vcu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "xp_srs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "xp_scu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "xp_msm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "xp_llu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :sswitch_c
    const-string/jumbo v1, "xp_icm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_d
    const-string/jumbo v1, "xp_esp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_e
    const-string/jumbo v1, "xp_eps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_f
    const-string/jumbo v1, "xp_ciu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_10
    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_11
    const-string/jumbo v1, "xp_atl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :sswitch_12
    const-string/jumbo v1, "xp_amp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :sswitch_13
    const-string/jumbo v1, "xp_tpms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :sswitch_14
    const-string/jumbo v1, "xp_tbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 977
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    goto/16 :goto_1

    .line 971
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    if-nez v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/diagnostic/XpDiagnosticManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/diagnostic/XpDiagnosticManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 975
    goto/16 :goto_2

    .line 962
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    if-nez v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    const-string/jumbo v1, "xp_tpms"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    .line 964
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->getRegisterPropertyIdsForTpms()Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsManager:Landroid/car/hardware/tpms/CarTpmsManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/tpms/CarTpmsManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto/16 :goto_2

    .line 967
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    const-string v1, "unregisterCallback, prop set null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    goto/16 :goto_2

    .line 957
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-nez v0, :cond_4

    .line 958
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    const-string/jumbo v1, "xp_scu"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 959
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuSpecialEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 960
    goto/16 :goto_2

    .line 952
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmManager:Landroid/car/hardware/vpm/CarVpmManager;

    if-nez v0, :cond_5

    .line 953
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vpm/CarVpmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmManager:Landroid/car/hardware/vpm/CarVpmManager;

    .line 954
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmManager:Landroid/car/hardware/vpm/CarVpmManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVpmEventCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/vpm/CarVpmManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 955
    goto/16 :goto_2

    .line 947
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    if-nez v0, :cond_6

    .line 948
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    .line 949
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluManager:Landroid/car/hardware/llu/CarLluManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 950
    goto/16 :goto_2

    .line 942
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    if-nez v0, :cond_7

    .line 943
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/eps/CarEpsManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    .line 944
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 945
    goto/16 :goto_2

    .line 937
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpManager:Landroid/car/hardware/amp/CarAmpManager;

    if-nez v0, :cond_8

    .line 938
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/amp/CarAmpManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpManager:Landroid/car/hardware/amp/CarAmpManager;

    .line 939
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpManager:Landroid/car/hardware/amp/CarAmpManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAmpEventCallback:Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/amp/CarAmpManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 940
    goto/16 :goto_2

    .line 932
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    if-nez v0, :cond_9

    .line 933
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    .line 934
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/CarAtlManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 935
    goto/16 :goto_2

    .line 927
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    if-nez v0, :cond_a

    .line 928
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/input/CarInputManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    .line 929
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputManager:Landroid/car/hardware/input/CarInputManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/input/CarInputManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 930
    goto/16 :goto_2

    .line 922
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    if-nez v0, :cond_b

    .line 923
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    .line 924
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspManager:Landroid/car/hardware/esp/CarEspManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/esp/CarEspManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 925
    goto/16 :goto_2

    .line 917
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-nez v0, :cond_c

    .line 918
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    .line 919
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 920
    goto/16 :goto_2

    .line 907
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    if-nez v0, :cond_d

    .line 908
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/srs/CarSrsManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    .line 909
    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsManager:Landroid/car/hardware/srs/CarSrsManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/srs/CarSrsManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 910
    goto/16 :goto_2

    .line 902
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-nez v0, :cond_e

    .line 903
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    .line 904
    :cond_e
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 905
    goto/16 :goto_2

    .line 897
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    if-nez v0, :cond_f

    .line 898
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    .line 899
    :cond_f
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/scu/CarScuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 900
    goto/16 :goto_2

    .line 889
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-nez v0, :cond_10

    .line 890
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 891
    :cond_10
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/vcu/CarVcuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 892
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarConditionManager:Landroid/car/hardware/condition/CarConditionManager;

    if-eqz v0, :cond_17

    .line 893
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarConditionManager:Landroid/car/hardware/condition/CarConditionManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->carConditionEventListener:Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/condition/CarConditionManager;->unregisterCondition(Landroid/car/hardware/condition/CarConditionManager$CarConditionCallback;)V

    goto/16 :goto_2

    .line 884
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-nez v0, :cond_11

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 886
    :cond_11
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 887
    goto/16 :goto_2

    .line 879
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    if-nez v0, :cond_12

    .line 880
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/ciu/CarCiuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    .line 881
    :cond_12
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuManager:Landroid/car/hardware/ciu/CarCiuManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/ciu/CarCiuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 882
    goto/16 :goto_2

    .line 874
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    if-nez v0, :cond_13

    .line 875
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    .line 876
    :cond_13
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuManager:Landroid/car/hardware/xpu/CarXpuManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 877
    goto :goto_2

    .line 869
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    if-nez v0, :cond_14

    .line 870
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/msm/CarMsmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    .line 871
    :cond_14
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmManager:Landroid/car/hardware/msm/CarMsmManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMsmEventCallback:Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/msm/CarMsmManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 872
    goto :goto_2

    .line 864
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-nez v0, :cond_15

    .line 865
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 866
    :cond_15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 867
    goto :goto_2

    .line 859
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-nez v0, :cond_16

    .line 860
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 861
    :cond_16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 862
    goto :goto_2

    .line 977
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterCarListener ID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_17
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->setCarRegisterStatus(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    goto :goto_3

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->handleException(Ljava/lang/Exception;)V

    .line 984
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f848242 -> :sswitch_14
        -0x6f844df7 -> :sswitch_13
        -0x2ce38403 -> :sswitch_12
        -0x2ce3832e -> :sswitch_11
        -0x2ce3817b -> :sswitch_10
        -0x2ce37cf8 -> :sswitch_f
        -0x2ce3749f -> :sswitch_e
        -0x2ce37445 -> :sswitch_d
        -0x2ce36734 -> :sswitch_c
        -0x2ce35ad2 -> :sswitch_b
        -0x2ce35828 -> :sswitch_a
        -0x2ce35640 -> :sswitch_9
        -0x2ce341a2 -> :sswitch_8
        -0x2ce33fd3 -> :sswitch_7
        -0x2ce3365f -> :sswitch_6
        -0x2ce334d4 -> :sswitch_5
        -0x2ce32d4a -> :sswitch_4
        0x310db0 -> :sswitch_3
        0xfbe974e -> :sswitch_2
        0x6e69f6a2 -> :sswitch_1
        0x7e5eafc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    .line 1165
    const-string/jumbo v0, "xp_amp"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1166
    return-void
.end method

.method public addAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    .line 1160
    const-string/jumbo v0, "xp_atl"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1161
    return-void
.end method

.method public addAvasManagerListener(Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    .line 1130
    const-string/jumbo v0, "xp_avas"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1131
    return-void
.end method

.method public addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 1090
    const-string/jumbo v0, "xp_bcm"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1091
    return-void
.end method

.method public addCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    .line 1197
    const-string/jumbo v0, "xp_remind"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1198
    return-void
.end method

.method public addCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    .line 1085
    const-string/jumbo v0, "xp_ciu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1086
    return-void
.end method

.method public addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V
    .locals 2
    .param p1, "con"    # Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 1373
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1374
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1375
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mIsCarConnect:Z

    if-eqz v0, :cond_1

    .line 1379
    invoke-interface {p1}, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;->onConnectedCar()V

    .line 1381
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mIsXuiConnect:Z

    if-eqz v0, :cond_2

    .line 1382
    invoke-interface {p1}, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;->onConnectXUI()V

    .line 1384
    :cond_2
    return-void

    .line 1377
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    .line 1170
    const-string/jumbo v0, "xp_eps"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1171
    return-void
.end method

.method public addEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 1145
    const-string/jumbo v0, "xp_esp"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1146
    return-void
.end method

.method public addHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 1155
    const-string v0, "hvac"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1156
    return-void
.end method

.method public addIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 1140
    const-string/jumbo v0, "xp_icm"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1141
    return-void
.end method

.method public addInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    .line 1150
    const-string/jumbo v0, "xp_input"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1151
    return-void
.end method

.method public addLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 1135
    const-string/jumbo v0, "xp_llu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1136
    return-void
.end method

.method public addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 1100
    const-string/jumbo v0, "xp_mcu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1101
    return-void
.end method

.method public addMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    .line 1120
    const-string/jumbo v0, "xp_msm"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1121
    return-void
.end method

.method public addPowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 1185
    if-eqz p1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPowerListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1188
    :cond_0
    return-void
.end method

.method public addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 1105
    const-string/jumbo v0, "xp_scu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1106
    return-void
.end method

.method public addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 1125
    const-string/jumbo v0, "xp_srs"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1126
    return-void
.end method

.method public addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 1115
    const-string/jumbo v0, "xp_tbox"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1116
    return-void
.end method

.method public addTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    .line 1192
    const-string/jumbo v0, "xp_tpms"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1193
    return-void
.end method

.method public addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 1095
    const-string/jumbo v0, "xp_vcu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1096
    return-void
.end method

.method public addVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 1175
    const-string v0, "VCU_SPECIAL"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1176
    return-void
.end method

.method public addVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    .line 1110
    const-string/jumbo v0, "xp_vpm"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1111
    return-void
.end method

.method public addXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    .line 1180
    const-string/jumbo v0, "xp_diagnostic"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1181
    return-void
.end method

.method public addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 1080
    const-string/jumbo v0, "xp_xpu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addListener(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1081
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    if-nez p2, :cond_0

    .line 197
    const-string v0, "please input cmds"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 202
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x209b4bf4

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "-eventall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_3
    sget-object v0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventList:Ljava/util/LinkedList;

    monitor-enter v0

    .line 205
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capacity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventListMaxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    const-string v2, "event list:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    sget-object v2, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;

    .line 209
    .local v3, "record":Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 210
    .end local v3    # "record":Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager$EventRecord;
    goto :goto_2

    .line 211
    :cond_4
    monitor-exit v0

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 220
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 1353
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarClientMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarManagerBase;

    .line 1354
    .local v0, "manager":Landroid/car/CarManagerBase;
    if-eqz v0, :cond_0

    .line 1355
    return-object v0

    .line 1358
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    if-eqz v1, :cond_1

    .line 1359
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v1, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarManagerBase;

    move-object v0, v1

    .line 1360
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarClientMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarClientMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    monitor-exit v1

    .line 1363
    return-object v0

    .line 1362
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1367
    :cond_1
    goto :goto_0

    .line 1365
    :catch_0
    move-exception v1

    .line 1366
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->handleException(Ljava/lang/Exception;)V

    .line 1368
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic init()V
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->init()V

    return-void
.end method

.method protected initCarManager()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    const-string v1, "initCarManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->initCarCallback()V

    .line 692
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->reRegisterCarCallBack()V

    .line 693
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->doRegisterAfterCarInited()V

    .line 694
    return-void
.end method

.method protected onConnectXUI()V
    .locals 3

    .line 1421
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->onConnectXUI()V

    .line 1422
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1423
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 1424
    .local v2, "conn":Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;
    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;->onConnectXUI()V

    .line 1425
    .end local v2    # "conn":Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;
    goto :goto_0

    .line 1426
    :cond_0
    monitor-exit v0

    .line 1427
    return-void

    .line 1426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onConnectedCar()V
    .locals 3

    .line 1398
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->onConnectedCar()V

    .line 1399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarClientManager onConnectedCar() mConnListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1401
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 1402
    .local v2, "conn":Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;
    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;->onConnectedCar()V

    .line 1403
    .end local v2    # "conn":Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;
    goto :goto_0

    .line 1404
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    const-string v0, "power"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->registerCarListener(Ljava/lang/String;)V

    .line 1406
    return-void

    .line 1404
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onDisconnectCar()V
    .locals 3

    .line 1410
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->onDisconnectCar()V

    .line 1411
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->resetCarApi()V

    .line 1412
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1413
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 1414
    .local v2, "conn":Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;
    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;->onDisconnectCar()V

    .line 1415
    .end local v2    # "conn":Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;
    goto :goto_0

    .line 1416
    :cond_0
    monitor-exit v0

    .line 1417
    return-void

    .line 1416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDisconnectXUI()V
    .locals 3

    .line 1431
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->onDisconnectXUI()V

    .line 1432
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1433
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 1434
    .local v2, "conn":Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;
    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;->onDisconnectXUI()V

    .line 1435
    .end local v2    # "conn":Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;
    goto :goto_0

    .line 1436
    :cond_0
    monitor-exit v0

    .line 1437
    return-void

    .line 1436
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInit()V
    .locals 0

    .line 989
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 994
    :try_start_0
    const-string/jumbo v0, "xp_mcu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 995
    const-string v0, "hvac"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 996
    const-string/jumbo v0, "xp_xpu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 997
    const-string/jumbo v0, "xp_ciu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 998
    const-string/jumbo v0, "xp_bcm"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 999
    const-string/jumbo v0, "xp_vcu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1000
    const-string/jumbo v0, "xp_scu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1001
    const-string/jumbo v0, "xp_tbox"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1002
    const-string/jumbo v0, "xp_srs"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1003
    const-string/jumbo v0, "xp_icm"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1004
    const-string/jumbo v0, "xp_esp"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v0, "xp_input"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1006
    const-string/jumbo v0, "xp_eps"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v0, "xp_vpm"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1008
    const-string/jumbo v0, "xp_llu"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v0, "xp_vpm"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1010
    const-string/jumbo v0, "xp_tpms"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v0, "xp_diagnostic"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->unregisterCarListener(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mListener:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1015
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1016
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1019
    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->handleException(Ljava/lang/Exception;)V

    .line 1020
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected reRegisterCarCallBack()V
    .locals 4

    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->mXUICarEcuList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 646
    sget-object v1, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->mXUICarEcuList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->checkEcuListenerExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reRegisterCarCallBack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->mXUICarEcuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    sget-object v1, Lcom/xiaopeng/xuiservice/carcontrol/CarPropertyId;->mXUICarEcuList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->registerCarListener(Ljava/lang/String;)V

    .line 645
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->release()V

    return-void
.end method

.method public removeAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    .line 1308
    const-string/jumbo v0, "xp_amp"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1309
    return-void
.end method

.method public removeAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    .line 1303
    const-string/jumbo v0, "xp_atl"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1304
    return-void
.end method

.method public removeAvasManagerListener(Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    .line 1273
    const-string/jumbo v0, "xp_avas"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1274
    return-void
.end method

.method public removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 1233
    const-string/jumbo v0, "xp_bcm"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1234
    return-void
.end method

.method public removeCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    .line 1348
    const-string/jumbo v0, "xp_remind"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1349
    return-void
.end method

.method public removeCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    .line 1228
    const-string/jumbo v0, "xp_ciu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1229
    return-void
.end method

.method public removeConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V
    .locals 2
    .param p1, "con"    # Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 1388
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1389
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mConnListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1392
    :cond_0
    monitor-exit v0

    .line 1393
    return-void

    .line 1392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    .line 1313
    const-string/jumbo v0, "xp_eps"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1314
    const-string/jumbo v0, "xp_eps"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->checkEcuListenerExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1316
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsManager:Landroid/car/hardware/eps/CarEpsManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/eps/CarEpsManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    :cond_0
    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->handleException(Ljava/lang/Exception;)V

    .line 1322
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public removeEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 1288
    const-string/jumbo v0, "xp_esp"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1289
    return-void
.end method

.method public removeHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 1298
    const-string v0, "hvac"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1299
    return-void
.end method

.method public removeIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 1283
    const-string/jumbo v0, "xp_icm"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1284
    return-void
.end method

.method public removeInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    .line 1293
    const-string/jumbo v0, "xp_input"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1294
    return-void
.end method

.method public removeLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 1278
    const-string/jumbo v0, "xp_llu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1279
    return-void
.end method

.method public removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 1243
    const-string/jumbo v0, "xp_mcu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1244
    return-void
.end method

.method public removeMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    .line 1263
    const-string/jumbo v0, "xp_msm"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1264
    return-void
.end method

.method public removePowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 1326
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPowerListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->mPowerListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1329
    :cond_0
    return-void
.end method

.method public removeScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 1248
    const-string/jumbo v0, "xp_scu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1249
    return-void
.end method

.method public removeSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 1268
    const-string/jumbo v0, "xp_srs"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1269
    return-void
.end method

.method public removeTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 1258
    const-string/jumbo v0, "xp_tbox"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1259
    return-void
.end method

.method public removeTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    .line 1343
    const-string/jumbo v0, "xp_tpms"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1344
    return-void
.end method

.method public removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 1238
    const-string/jumbo v0, "xp_vcu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1239
    return-void
.end method

.method public removeVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 1333
    const-string v0, "VCU_SPECIAL"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1334
    return-void
.end method

.method public removeVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    .line 1253
    const-string/jumbo v0, "xp_vpm"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1254
    return-void
.end method

.method public removeXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    .line 1338
    const-string/jumbo v0, "xp_diagnostic"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1339
    return-void
.end method

.method public removeXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 1223
    const-string/jumbo v0, "xp_xpu"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeListerner(Ljava/lang/String;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 1224
    return-void
.end method
