.class public Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
.super Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;
.source "CarAutoWakeService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;,
        Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ALARMS_PER_UID:I = 0x1c2

.field private static final REQUIRED_PROPERTIES:[I

.field private static final TAG:Ljava/lang/String; = "CarAutoWakeService"

.field public static final TASK_ALARM_OVERDUE_MS:J = 0xea60L

.field public static final TASK_CLOCK_OVERDUE_MS:J = 0xea60L

.field public static final TIME_HV_REQ_TIMEOUT_EXIT_6_HOURS:I = 0x1499700

.field private static final sDataLock:Ljava/lang/Object;


# instance fields
.field private final mAutoWakeTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarBcmEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

.field private final mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

.field private final mCarHvacEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

.field private final mCarMcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mCarVcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

.field private mCltcAvailableDrivingDistanceFloat:F

.field private final mContext:Landroid/content/Context;

.field private final mCurrentAutoWakeTaskIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentHVTaskRootIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnduranceMileageMode:I

.field private mHvDurationTimeMs:J

.field private mHvRequestLogFlag:I

.field private mHvRequestStFlag:J

.field private mHvStartTimeMs:J

.field private mHvacMachineStateSwitch:I

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mIGStatus:I

.field private final mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

.field private mNetworkStatus:I

.field private mOTAPrevState:I

.field private mOTAState:I

.field private final mPackageClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageTaskIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPowerOffSource:I

.field private mPowerTimeMs:J

.field private mRemoteTaskCyle:J

.field private final mTaskIdPackageNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVcuHighVoltageState:I

.field private mWltpAvailableDrivingDistanceFloat:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->sDataLock:Ljava/lang/Object;

    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->REQUIRED_PROPERTIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x21701403
        0x21401409
        0x21401210
        0x2160127b
        0x2160127a
        0x21401257
        0x21401a5e
        0x21401dc9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carPropertyService"    # Lcom/android/car/CarPropertyService;

    .line 328
    invoke-direct {p0}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentHVTaskRootIdList:Ljava/util/List;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mNetworkStatus:I

    .line 81
    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mIGStatus:I

    .line 82
    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPowerOffSource:I

    .line 83
    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mVcuHighVoltageState:I

    .line 84
    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvacMachineStateSwitch:I

    .line 85
    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mEnduranceMileageMode:I

    .line 86
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mWltpAvailableDrivingDistanceFloat:F

    .line 87
    iput v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCltcAvailableDrivingDistanceFloat:F

    .line 88
    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAPrevState:I

    .line 89
    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAState:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestStFlag:J

    .line 93
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestLogFlag:I

    .line 96
    iput-wide v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvDurationTimeMs:J

    .line 98
    iput-wide v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvStartTimeMs:J

    .line 100
    iput-wide v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mRemoteTaskCyle:J

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPowerTimeMs:J

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mTaskIdPackageNameMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageClientMap:Ljava/util/Map;

    .line 118
    new-instance v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 130
    new-instance v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$2;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$2;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarMcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 153
    new-instance v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarVcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 182
    new-instance v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$4;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$4;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarHvacEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 200
    new-instance v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$5;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$5;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarBcmEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 329
    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mContext:Landroid/content/Context;

    .line 330
    iput-object p2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 331
    new-instance v0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    invoke-direct {v0, p1}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    .line 332
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "car-pretreat-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "pretreatThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 334
    new-instance v1, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    .line 57
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mEnduranceMileageMode:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvacMachineStateSwitch:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleHvacMachineStateSwitchChanged(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPowerOffSource:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handlePowerOffSourceChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    .line 57
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->requestVcuHighVoltage()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # J

    .line 57
    iput-wide p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestStFlag:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;ZZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    .line 57
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->syncClocksToTbox()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Ljava/lang/String;Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->unregisterAutoWakeListener(Ljava/lang/String;Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # [B

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleNetworkStatusChanged([B)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mIGStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleIGStateChanged(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mVcuHighVoltageState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleHighVoltageStateChanged(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # F

    .line 57
    iput p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCltcAvailableDrivingDistanceFloat:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    .line 57
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handlegetAvailableDrivingDistanceChanged()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    .param p1, "x1"    # F

    .line 57
    iput p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mWltpAvailableDrivingDistanceFloat:F

    return p1
.end method

.method private checkAutoWakeTaskInvalid(Landroid/car/xpeng/ai/wake/AutoWakeTask;)Z
    .locals 4
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 837
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getLeafId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 841
    :cond_0
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClockType()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 842
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 843
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 844
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 845
    :cond_1
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAutoWakeTaskInvalid: task invalid. task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return v0

    .line 849
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 838
    :cond_3
    :goto_0
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAutoWakeTaskInvalid: task invalid. task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return v0
.end method

.method private checkOnceTaskExpired(Landroid/car/xpeng/ai/clock/AutoWakeClock;)Z
    .locals 7
    .param p1, "clock"    # Landroid/car/xpeng/ai/clock/AutoWakeClock;

    .line 897
    invoke-virtual {p1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getCycle()I

    move-result v0

    if-nez v0, :cond_1

    .line 898
    invoke-virtual {p1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/xpeng/ai/clock/DateUtil;->parseHHmmToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 899
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTimeStamp()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 901
    :cond_0
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOnceTaskExpired: expired for at least one minute. clock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v1, 0x1

    return v1

    .line 905
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkTaskNeedExitBeforeModify(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;

    .line 708
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTaskNeedExitBeforeModify: need to suspend taskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;I)V

    .line 712
    :cond_0
    return-void
.end method

.method private checkTodoTaskForTime(Landroid/car/xpeng/ai/wake/AutoWakeTask;J)Z
    .locals 12
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .param p2, "timeout"    # J

    .line 859
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkAutoWakeTaskInvalid(Landroid/car/xpeng/ai/wake/AutoWakeTask;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 860
    return v1

    .line 862
    :cond_0
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getCycle()I

    move-result v0

    .line 863
    .local v0, "cycle":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTimeStamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 865
    .local v3, "millis":J
    cmp-long v5, v3, p2

    if-gtz v5, :cond_1

    .line 867
    const-string v1, "CarAutoWakeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTodoTaskForTime: clock:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return v2

    .line 871
    .end local v3    # "millis":J
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 872
    .local v3, "current":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 873
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 874
    .local v5, "nowWeek":I
    sub-int/2addr v4, v5

    .line 875
    .local v4, "index":I
    shl-int v6, v2, v4

    .line 876
    .local v6, "target":I
    and-int v7, v0, v6

    if-eqz v7, :cond_2

    .line 877
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/car/xpeng/ai/clock/DateUtil;->parseHHmmToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    .line 878
    .local v7, "calendar":Ljava/util/Calendar;
    if-eqz v7, :cond_2

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 880
    .local v8, "millis":J
    cmp-long v10, v8, p2

    if-gtz v10, :cond_2

    .line 882
    const-string v1, "CarAutoWakeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkTodoTaskForTime: clock:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return v2

    .line 887
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v8    # "millis":J
    :cond_2
    return v1
.end method

.method private getCurrentAvailableDrivingDistance()F
    .locals 2

    .line 1191
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mEnduranceMileageMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1192
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCltcAvailableDrivingDistanceFloat:F

    return v0

    .line 1194
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mWltpAvailableDrivingDistanceFloat:F

    return v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 3

    .line 778
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 779
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 780
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/android/car/xpeng/ai/utils/ProcessUtil;->getProcessNameFromAm(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTaskClockTimestamp(Landroid/car/xpeng/ai/wake/AutoWakeTask;)J
    .locals 3
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 668
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTime()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/car/xpeng/ai/clock/DateUtil;->calcHHmmTimestamp(Ljava/lang/String;J)J

    move-result-wide v0

    .line 669
    .local v0, "timestamp":J
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getCycle()I

    move-result v2

    if-nez v2, :cond_0

    .line 670
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTimeStamp()J

    move-result-wide v0

    .line 672
    :cond_0
    return-wide v0
.end method

.method private handleAlarmAutoWakeTask(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V
    .locals 2
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkAutoWakeTaskInvalid(Landroid/car/xpeng/ai/wake/AutoWakeTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->removeTaskLocked(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 1063
    return-void

    .line 1065
    :cond_0
    const-wide/32 v0, 0xea60

    invoke-direct {p0, p1, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkTodoTaskForTime(Landroid/car/xpeng/ai/wake/AutoWakeTask;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskEnter(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 1068
    :cond_1
    return-void
.end method

.method private handleAllAutoWakeTaskAndClockUpdate()V
    .locals 2

    .line 699
    const-string v0, "CarAutoWakeService"

    const-string v1, "handleAllAutoWakeTaskAndClockUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->removeInvalidTaskLocked()V

    .line 701
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 702
    .local v1, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    invoke-direct {p0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleEveryTask(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 703
    .end local v1    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    goto :goto_0

    .line 704
    :cond_0
    return-void
.end method

.method private handleAutoWakeTaskEnter(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V
    .locals 1
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 1086
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskEnter(Landroid/car/xpeng/ai/wake/AutoWakeTask;Z)V

    .line 1087
    return-void
.end method

.method private handleAutoWakeTaskEnter(Landroid/car/xpeng/ai/wake/AutoWakeTask;Z)V
    .locals 5
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .param p2, "isRootScene"    # Z

    .line 1095
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAutoWakeTaskEnter: task already executing! taskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-void

    .line 1099
    :cond_0
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAutoWakeTaskEnter: task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mNetworkStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1101
    const-string v0, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAutoWakeTaskEnter: need to request network wakeup. mNetworkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mNetworkStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mIGStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1108
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;I)V

    .line 1109
    return-void

    .line 1111
    :cond_2
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvacMachineStateSwitch:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    .line 1112
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;I)V

    .line 1113
    return-void

    .line 1115
    :cond_3
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getCurrentAvailableDrivingDistance()F

    move-result v0

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 1116
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;I)V

    .line 1117
    return-void

    .line 1119
    :cond_4
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAPrevState:I

    if-ne v0, v1, :cond_5

    .line 1120
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;I)V

    .line 1121
    return-void

    .line 1132
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handlerHvDurationTimeTask(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 1133
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    new-instance v1, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$M0F7BnJIy3btkG5acFl9i-qb4cM;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Landroid/car/xpeng/ai/wake/AutoWakeTask;Z)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1144
    return-void
.end method

.method private handleAutoWakeTaskExit(ZZLjava/lang/String;I)V
    .locals 6
    .param p1, "force"    # Z
    .param p2, "cancelHv"    # Z
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "error"    # I

    .line 1147
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;IZ)V

    .line 1148
    return-void
.end method

.method private handleAutoWakeTaskExit(ZZLjava/lang/String;IZ)V
    .locals 6
    .param p1, "force"    # Z
    .param p2, "cancelHv"    # Z
    .param p3, "taskId"    # Ljava/lang/String;
    .param p4, "error"    # I
    .param p5, "isRootScene"    # Z

    .line 1158
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 1159
    .local v0, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    if-nez v0, :cond_0

    .line 1160
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAutoWakeTaskExit: task is null. force:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " taskId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void

    .line 1163
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1164
    .local v1, "isRun":Z
    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1186
    :cond_1
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAutoWakeTaskExit: task is not run. taskId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1165
    :cond_2
    :goto_0
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAutoWakeTaskExit: checked force:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " cancelHv:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRun:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " taskId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {v0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getCycle()I

    move-result v2

    if-nez v2, :cond_3

    .line 1167
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAutoWakeTaskExit: once task,need removed. force:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRun:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " taskId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_3
    if-eqz p2, :cond_4

    .line 1172
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(I)V

    .line 1173
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(I)V

    .line 1174
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendEmptyMessage(I)Z

    .line 1177
    :cond_4
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1178
    const-string v2, "CarAutoWakeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAutoWakeTaskExit: remove timeout task message. taskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    invoke-virtual {v2, v3, p3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1182
    :cond_5
    sget-object v2, Landroid/car/xpeng/ai/scene/CarScene$Action;->ACTION_EXIT:Landroid/car/xpeng/ai/scene/CarScene$Action;

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleCarSceneChanged(Landroid/car/xpeng/ai/wake/AutoWakeTask;Landroid/car/xpeng/ai/scene/CarScene$Action;IZ)V

    .line 1183
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1184
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentHVTaskRootIdList:Ljava/util/List;

    invoke-virtual {v0}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1188
    :goto_1
    return-void
.end method

.method private handleCarSceneChanged(Landroid/car/xpeng/ai/wake/AutoWakeTask;Landroid/car/xpeng/ai/scene/CarScene$Action;IZ)V
    .locals 10
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .param p2, "action"    # Landroid/car/xpeng/ai/scene/CarScene$Action;
    .param p3, "error"    # I
    .param p4, "isRootScene"    # Z

    .line 909
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mTaskIdPackageNameMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 910
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCarSceneChanged: packageName is null. task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageClientMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 915
    .local v1, "clientMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;>;"
    if-nez v1, :cond_1

    .line 916
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCarSceneChanged: clientMap is null. packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void

    .line 919
    :cond_1
    new-instance v2, Landroid/car/xpeng/ai/scene/CarScene;

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Landroid/car/xpeng/ai/scene/CarScene;-><init>(Ljava/lang/String;)V

    .line 920
    .local v2, "scene":Landroid/car/xpeng/ai/scene/CarScene;
    invoke-virtual {v2, p2}, Landroid/car/xpeng/ai/scene/CarScene;->setSceneAction(Landroid/car/xpeng/ai/scene/CarScene$Action;)Landroid/car/xpeng/ai/scene/CarScene;

    .line 921
    sget-object v3, Landroid/car/xpeng/ai/scene/CarScene$Type;->TYPE_AUTO_WAKE:Landroid/car/xpeng/ai/scene/CarScene$Type;

    invoke-virtual {v2, v3}, Landroid/car/xpeng/ai/scene/CarScene;->setSceneType(Landroid/car/xpeng/ai/scene/CarScene$Type;)Landroid/car/xpeng/ai/scene/CarScene;

    .line 922
    if-eqz p4, :cond_3

    .line 923
    sget-object v3, Landroid/car/xpeng/ai/scene/CarScene$Type;->TYPE_USER_ACTION:Landroid/car/xpeng/ai/scene/CarScene$Type;

    invoke-virtual {v2, v3}, Landroid/car/xpeng/ai/scene/CarScene;->setSceneType(Landroid/car/xpeng/ai/scene/CarScene$Type;)Landroid/car/xpeng/ai/scene/CarScene;

    goto :goto_1

    .line 924
    :cond_3
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClockType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 925
    sget-object v3, Landroid/car/xpeng/ai/scene/CarScene$Type;->TYPE_IG_OFF:Landroid/car/xpeng/ai/scene/CarScene$Type;

    invoke-virtual {v2, v3}, Landroid/car/xpeng/ai/scene/CarScene;->setSceneType(Landroid/car/xpeng/ai/scene/CarScene$Type;)Landroid/car/xpeng/ai/scene/CarScene;

    .line 928
    :cond_4
    :goto_1
    invoke-virtual {v2, p3}, Landroid/car/xpeng/ai/scene/CarScene;->setExitCode(I)Landroid/car/xpeng/ai/scene/CarScene;

    .line 930
    const-string v3, "CarAutoWakeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCarSceneChanged: clientMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    sget-object v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->sDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 932
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;

    .line 933
    .local v5, "client":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->access$2000(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;)Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 934
    const-string v6, "CarAutoWakeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCarSceneChanged: listener:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->access$2000(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;)Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    :try_start_1
    invoke-static {v5}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->access$2000(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;)Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;->onAutoWakeSceneChanged(Landroid/car/xpeng/ai/scene/CarScene;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    .end local v5    # "client":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
    :goto_3
    goto :goto_4

    .line 937
    .restart local v5    # "client":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
    :catch_0
    move-exception v6

    .line 938
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "CarAutoWakeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCarSceneChanged: error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 942
    :cond_5
    const-string v6, "CarAutoWakeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCarSceneChanged: binder fatal client:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v5    # "client":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
    :goto_4
    goto :goto_2

    .line 945
    :cond_6
    monitor-exit v3

    .line 946
    return-void

    .line 945
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private handleEveryTask(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V
    .locals 9
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 676
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClockType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 678
    return-void

    .line 680
    :cond_0
    const/4 v0, 0x0

    .line 681
    .local v0, "todo":Z
    const-wide/32 v1, 0xea60

    invoke-direct {p0, p1, v1, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkTodoTaskForTime(Landroid/car/xpeng/ai/wake/AutoWakeTask;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskEnter(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 684
    const/4 v0, 0x1

    .line 686
    :cond_1
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getCycle()I

    move-result v1

    .line 691
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    invoke-virtual {v1}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->getAlarmSize()I

    move-result v1

    const/16 v2, 0x1c2

    if-lt v1, v2, :cond_2

    .line 692
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEveryTask: Alarm size is too large! size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    invoke-virtual {v3}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->getAlarmSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 695
    :cond_2
    iget-object v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getTaskClockTimestamp(Landroid/car/xpeng/ai/wake/AutoWakeTask;)J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getCycle()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->addCycleAlarm(Ljava/lang/String;JILandroid/os/Bundle;)V

    .line 696
    return-void
.end method

.method private handleHighVoltageStateChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 975
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHighVoltageStateChanged: status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->interruptAutoWakeTask(IZ)V

    .line 980
    :cond_0
    return-void
.end method

.method private handleHvTaskEmpty()V
    .locals 3

    .line 1241
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentHVTaskRootIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    const-string v0, "CarAutoWakeService"

    const-string v1, "handleHvTaskEmpty: mCurrentHVTaskIdList is empty, remove hv request!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(I)V

    .line 1246
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(I)V

    .line 1247
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendEmptyMessage(I)Z

    .line 1249
    :cond_0
    return-void
.end method

.method private handleHvacMachineStateSwitchChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 960
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHvacMachineStateSwitchChanged: status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->interruptAutoWakeTask(IZ)V

    .line 964
    :cond_0
    return-void
.end method

.method private handleIGStateChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 983
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIGStateChanged: status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->interruptAutoWakeTask(IZ)V

    .line 987
    :cond_0
    return-void
.end method

.method private handleNetworkStatusChanged([B)V
    .locals 4
    .param p1, "powerSt"    # [B

    .line 1037
    const/4 v0, 0x0

    :try_start_0
    aget-byte v0, p1, v0

    .line 1038
    .local v0, "status":I
    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mNetworkStatus:I

    if-eq v1, v0, :cond_1

    .line 1039
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNetworkStatusChanged: status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " powerSt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mNetworkStatus:I

    .line 1041
    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mNetworkStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1043
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAllAutoWakeTaskAndClockUpdate()V

    .line 1045
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->syncClocksToTboxDeplay()V

    goto :goto_0

    .line 1048
    :cond_0
    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mNetworkStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    .end local v0    # "status":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1057
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private handlePowerOffSourceChanged(I)V
    .locals 4
    .param p1, "source"    # I

    .line 1004
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePowerOffSourceChanged: source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    new-instance v1, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$u63IPi8ktvctdZ1qrfhToXUdYhU;

    invoke-direct {v1, p0}, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$u63IPi8ktvctdZ1qrfhToXUdYhU;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1018
    :cond_0
    return-void
.end method

.method private declared-synchronized handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    monitor-enter p0

    .line 396
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 398
    monitor-exit p0

    return-void

    .line 400
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 401
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 402
    .local v1, "propId":I
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 403
    .local v2, "timestamp":J
    sparse-switch v1, :sswitch_data_0

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    goto/16 :goto_0

    .line 405
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :sswitch_0
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 406
    .local v4, "powerSt":[B
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleNetworkStatusChanged([B)V

    .line 407
    goto :goto_0

    .line 422
    .end local v4    # "powerSt":[B
    :sswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mWltpAvailableDrivingDistanceFloat:F

    .line 423
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handlegetAvailableDrivingDistanceChanged()V

    .line 424
    goto :goto_0

    .line 427
    :sswitch_2
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCltcAvailableDrivingDistanceFloat:F

    .line 428
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handlegetAvailableDrivingDistanceChanged()V

    .line 429
    goto :goto_0

    .line 441
    :sswitch_3
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 442
    .local v4, "status":I
    iput v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPowerOffSource:I

    .line 443
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handlePowerOffSourceChanged(I)V

    .line 444
    goto :goto_0

    .line 435
    .end local v4    # "status":I
    :sswitch_4
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 436
    .restart local v4    # "status":I
    iput v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvacMachineStateSwitch:I

    .line 437
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleHvacMachineStateSwitchChanged(I)V

    .line 438
    goto :goto_0

    .line 410
    .end local v4    # "status":I
    :sswitch_5
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 411
    .restart local v4    # "status":I
    iput v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mIGStatus:I

    .line 412
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleIGStateChanged(I)V

    .line 414
    .end local v4    # "status":I
    goto :goto_0

    .line 432
    :sswitch_6
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mEnduranceMileageMode:I

    .line 433
    goto :goto_0

    .line 416
    :sswitch_7
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 417
    .restart local v4    # "status":I
    iput v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mVcuHighVoltageState:I

    .line 418
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleHighVoltageStateChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .end local v4    # "status":I
    nop

    .line 449
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    :goto_0
    goto :goto_1

    .line 395
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 447
    .restart local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePropertyEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 395
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x21401210 -> :sswitch_7
        0x21401257 -> :sswitch_6
        0x21401409 -> :sswitch_5
        0x21401a5e -> :sswitch_4
        0x21401dc9 -> :sswitch_3
        0x2160127a -> :sswitch_2
        0x2160127b -> :sswitch_1
        0x21701403 -> :sswitch_0
    .end sparse-switch
.end method

.method private handlegetAvailableDrivingDistanceChanged()V
    .locals 4

    .line 967
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getCurrentAvailableDrivingDistance()F

    move-result v0

    .line 968
    .local v0, "distance":F
    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 969
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlegetAvailableDrivingDistanceChanged: distance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->interruptAutoWakeTask(IZ)V

    .line 972
    :cond_0
    return-void
.end method

.method private insertTaskLocked(Ljava/lang/String;Landroid/car/xpeng/ai/wake/AutoWakeTask;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 715
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertTaskLocked: packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    sget-object v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mTaskIdPackageNameMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 720
    .local v1, "packageTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 721
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v1, v2

    .line 722
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_0
    invoke-virtual {p2}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    .end local v1    # "packageTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private interruptAutoWakeTask(IZ)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "cancelHv"    # Z

    .line 1021
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interruptAutoWakeTask: errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1023
    .local v1, "taskId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 1024
    .local v2, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    if-eqz v2, :cond_0

    .line 1025
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1026
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1027
    invoke-virtual {v2}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1028
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 1029
    iput p2, v3, Landroid/os/Message;->arg2:I

    .line 1030
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    invoke-virtual {v4, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1032
    .end local v1    # "taskId":Ljava/lang/String;
    .end local v2    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    goto :goto_0

    .line 1033
    :cond_1
    return-void
.end method

.method public static synthetic lambda$handleAutoWakeTaskEnter$1(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Landroid/car/xpeng/ai/wake/AutoWakeTask;Z)V
    .locals 7
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .param p2, "isRootScene"    # Z

    .line 1135
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mVcuHighVoltageState:I

    if-nez v0, :cond_0

    .line 1137
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;IZ)V

    .line 1138
    return-void

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    sget-object v0, Landroid/car/xpeng/ai/scene/CarScene$Action;->ACTION_ENTER:Landroid/car/xpeng/ai/scene/CarScene$Action;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleCarSceneChanged(Landroid/car/xpeng/ai/wake/AutoWakeTask;Landroid/car/xpeng/ai/scene/CarScene$Action;IZ)V

    .line 1143
    return-void
.end method

.method public static synthetic lambda$handlePowerOffSourceChanged$0(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V
    .locals 4

    .line 1007
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mIGStatus:I

    if-nez v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 1010
    .local v1, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    invoke-virtual {v1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClockType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1011
    invoke-direct {p0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskEnter(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 1012
    goto :goto_1

    .line 1014
    .end local v1    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    :cond_0
    goto :goto_0

    .line 1016
    :cond_1
    :goto_1
    return-void
.end method

.method private removeAllAlarmClock()V
    .locals 2

    .line 784
    const-string v0, "CarAutoWakeService"

    const-string v1, "removeAllAlarmClock:"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    invoke-virtual {v0}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->removeAllCycleAlarm()V

    .line 786
    return-void
.end method

.method private removeInvalidTaskLocked()V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 754
    .local v1, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    invoke-direct {p0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkAutoWakeTaskInvalid(Landroid/car/xpeng/ai/wake/AutoWakeTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    invoke-direct {p0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->removeTaskLocked(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    goto :goto_1

    .line 756
    :cond_0
    invoke-virtual {v1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkOnceTaskExpired(Landroid/car/xpeng/ai/clock/AutoWakeClock;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    invoke-direct {p0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->removeTaskLocked(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 759
    .end local v1    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    :cond_1
    :goto_1
    goto :goto_0

    .line 760
    :cond_2
    return-void
.end method

.method private removeInvalidTaskLocked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;)V"
        }
    .end annotation

    .line 763
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/car/xpeng/ai/wake/AutoWakeTask;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 767
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_3

    .line 768
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 769
    .local v1, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    invoke-direct {p0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkAutoWakeTaskInvalid(Landroid/car/xpeng/ai/wake/AutoWakeTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 771
    :cond_1
    invoke-virtual {v1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkOnceTaskExpired(Landroid/car/xpeng/ai/clock/AutoWakeClock;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 772
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 767
    .end local v1    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 775
    .end local v0    # "index":I
    :cond_3
    return-void

    .line 764
    :cond_4
    :goto_2
    const-string v0, "CarAutoWakeService"

    const-string v1, "removeInvalidTaskLocked: taskList is empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-void
.end method

.method private removeTaskLocked(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V
    .locals 1
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 749
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->removeTaskLocked(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method private removeTaskLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "taskId"    # Ljava/lang/String;

    .line 729
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTaskLocked: taskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 732
    .local v1, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    if-eqz v1, :cond_2

    .line 733
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mTaskIdPackageNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 734
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 735
    iget-object v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 736
    .local v3, "packageTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 737
    invoke-virtual {v1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 739
    :cond_0
    const-string v4, "CarAutoWakeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove: taskIdList not exsist. taskId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v3    # "packageTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 742
    :cond_1
    const-string v3, "CarAutoWakeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove: packageName not exsist. taskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v1    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v0

    .line 746
    return-void

    .line 745
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestVcuHighVoltage()V
    .locals 4

    .line 1071
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestLogFlag:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestLogFlag:I

    if-nez v0, :cond_1

    .line 1072
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestLogFlag:I

    .line 1073
    const-string v0, "CarAutoWakeService"

    const-string v1, "requestVcuHighVoltage: only one minite\'s printf can be valid."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestLogFlag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestLogFlag:I

    .line 1078
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1079
    .local v0, "data":[I
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x2141145e

    invoke-virtual {v1, v2, v0}, Lcom/android/car/CarPropertyService;->setIntVectorProperty(I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v0    # "data":[I
    goto :goto_0

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestVcuHighVoltage: e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data
.end method

.method private declared-synchronized subscribeToProperties()V
    .locals 7

    monitor-enter p0

    .line 378
    :try_start_0
    sget-object v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 379
    .local v3, "propertyId":I
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local v3    # "propertyId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
    throw v0
.end method

.method private syncClocksToTbox()V
    .locals 11

    .line 797
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 798
    .local v0, "tboxClock":Lorg/json/JSONObject;
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 802
    .local v1, "jsonArray":Lorg/json/JSONArray;
    sget-object v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->sDataLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :try_start_1
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 804
    .local v5, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    invoke-direct {p0, v5}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkAutoWakeTaskInvalid(Landroid/car/xpeng/ai/wake/AutoWakeTask;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 805
    goto :goto_0

    .line 807
    :cond_0
    invoke-virtual {v5}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClockType()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 808
    goto :goto_0

    .line 810
    :cond_1
    invoke-virtual {v5}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getCycle()I

    move-result v6

    if-nez v6, :cond_2

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTimeStamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 812
    .local v6, "millis":J
    const-wide/32 v8, 0xea60

    cmp-long v8, v6, v8

    if-gtz v8, :cond_2

    .line 814
    const-string v8, "CarAutoWakeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncClocksToTbox: expired for at least one minute. clock:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    goto :goto_0

    .line 820
    .end local v6    # "millis":J
    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 821
    .local v6, "clockObj":Lorg/json/JSONObject;
    const-string v7, "id"

    invoke-virtual {v5}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    const-string v7, "time"

    invoke-virtual {v5}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v7, "type"

    invoke-virtual {v5}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getClock()Landroid/car/xpeng/ai/clock/AutoWakeClock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getCycle()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 825
    .end local v5    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    .end local v6    # "clockObj":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 826
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    :try_start_2
    const-string v2, "order"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncClocksToTbox() tboxClock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v3, 0x2110105f

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/car/CarPropertyService;->setStringProperty(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 833
    .end local v0    # "tboxClock":Lorg/json/JSONObject;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 826
    .restart local v0    # "tboxClock":Lorg/json/JSONObject;
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 831
    .end local v0    # "tboxClock":Lorg/json/JSONObject;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncClocksToTbox: e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private syncClocksToTboxDeplay()V
    .locals 4

    .line 789
    const-string v0, "CarAutoWakeService"

    const-string v1, "syncClocksToTboxDeplay: "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(I)V

    .line 792
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 793
    return-void
.end method

.method private unregisterAutoWakeListener(Ljava/lang/String;Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    .line 513
    if-eqz p2, :cond_3

    .line 516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterAutoWakeListener: packageName is null. binder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    .line 520
    :cond_0
    invoke-interface {p2}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 521
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageClientMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 522
    .local v1, "clientMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;>;"
    if-nez v1, :cond_1

    .line 523
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterAutoWakeListener: clientMap is null. packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " binder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 526
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;

    .line 527
    .local v2, "client":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
    if-nez v2, :cond_2

    .line 528
    const-string v3, "CarAutoWakeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterAutoWakeListener client not exist. packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " binder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    :cond_2
    const-string v3, "CarAutoWakeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterAutoWakeListener:  packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " binder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :goto_0
    return-void

    .line 514
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "clientMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;>;"
    .end local v2    # "client":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public deleteAllAutoWakeTask()V
    .locals 5

    .line 536
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 539
    .local v1, "packageTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .local v3, "taskId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkTaskNeedExitBeforeModify(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->removeTaskLocked(Ljava/lang/String;)V

    .line 543
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    invoke-virtual {v4, v3}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->removeCycleAlarm(Ljava/lang/String;)V

    .line 544
    .end local v3    # "taskId":Ljava/lang/String;
    goto :goto_0

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAllAutoWakeTask: packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->syncClocksToTboxDeplay()V

    .line 549
    :cond_1
    return-void
.end method

.method public deleteAutoWakeTaskId(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 558
    :cond_0
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAutoWakeTaskId: packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 560
    .local v2, "taskId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    invoke-direct {p0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkTaskNeedExitBeforeModify(Ljava/lang/String;)V

    .line 562
    invoke-direct {p0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->removeTaskLocked(Ljava/lang/String;)V

    .line 563
    iget-object v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    invoke-virtual {v3, v2}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->removeCycleAlarm(Ljava/lang/String;)V

    .line 565
    .end local v2    # "taskId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 566
    :cond_2
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->syncClocksToTboxDeplay()V

    .line 567
    return-void

    .line 555
    :cond_3
    :goto_1
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAutoWakeTaskId: taskList is empty. packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 462
    const-string v0, "*CarAutoWakeService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentAutoWakeTaskIdList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentHVTaskRootIdList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentHVTaskRootIdList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mNetworkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIGStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mIGStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVcuHighVoltageState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mVcuHighVoltageState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHvacMachineStateSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvacMachineStateSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnduranceMileageMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mEnduranceMileageMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWltpAvailableDrivingDistanceFloat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mWltpAvailableDrivingDistanceFloat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCltcAvailableDrivingDistanceFloat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCltcAvailableDrivingDistanceFloat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOTAPrevState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAPrevState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOTAState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHvRequestLog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestLogFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoWakeTaskMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPackageTaskIdMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTaskIdPackageNameMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mTaskIdPackageNameMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPackageClientMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageClientMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mClockCycleAlarmMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarClockWrapper:Lcom/android/car/xpeng/ai/clock/CarClockWrapper;

    invoke-virtual {v1}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->getClockCycleAlarmMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public getRunningAutoWakeTaskId()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    return-object v0
.end method

.method public handleAlarmReceivedData(Ljava/lang/String;)V
    .locals 4
    .param p1, "lockId"    # Ljava/lang/String;

    .line 949
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAlarmReceivedData: lockId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 951
    .local v0, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    if-eqz v0, :cond_0

    .line 952
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAlarmAutoWakeTask(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    goto :goto_0

    .line 954
    :cond_0
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAlarmReceivedData: task not exist! lockId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_0
    return-void
.end method

.method public handleOTAStateChanged(II)V
    .locals 3
    .param p1, "prevState"    # I
    .param p2, "state"    # I

    .line 991
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOTAStateChanged: mOTAPrevState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOTAState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAPrevState:I

    if-eq v0, p1, :cond_0

    .line 993
    iput p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAPrevState:I

    .line 994
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 995
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->interruptAutoWakeTask(IZ)V

    .line 998
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAState:I

    if-eq v0, p2, :cond_1

    .line 999
    iput p2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mOTAState:I

    .line 1001
    :cond_1
    return-void
.end method

.method public handlerHvDurationTimeTask(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V
    .locals 11
    .param p1, "task"    # Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 1201
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentHVTaskRootIdList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerHvDurationTime: task already executing! taskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentHVTaskRootIdList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-wide v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestStFlag:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 1208
    const-wide/32 v3, 0x6ddd00

    iput-wide v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvDurationTimeMs:J

    .line 1209
    const-string v0, "CarAutoWakeService"

    const-string v3, "handlerHvDurationTime: init hv duration time 2 hours."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendEmptyMessage(I)Z

    .line 1211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvStartTimeMs:J

    .line 1212
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    iget-wide v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvDurationTimeMs:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1215
    :cond_1
    const-wide/16 v3, 0x1

    iput-wide v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvRequestStFlag:J

    .line 1218
    :goto_0
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getDurationTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 1219
    .local v3, "milliseconds":J
    const-wide/32 v5, 0x1499700

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 1220
    const-wide/32 v3, 0x1499700

    .line 1222
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvStartTimeMs:J

    sub-long/2addr v5, v7

    .line 1223
    .local v5, "hvKeepTime":J
    iget-wide v7, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvDurationTimeMs:J

    sub-long/2addr v7, v5

    .line 1224
    .local v7, "leftTime":J
    cmp-long v0, v7, v3

    if-gez v0, :cond_3

    .line 1225
    iput-wide v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvDurationTimeMs:J

    .line 1226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvStartTimeMs:J

    .line 1227
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->removeMessages(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    iget-wide v9, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvDurationTimeMs:J

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1232
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1233
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1234
    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1235
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1236
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlerHvDurationTime: task executed! taskId:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " milliseconds:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " mHvDurationTimeMs:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mHvDurationTimeMs:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mMessageHandler:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1238
    return-void
.end method

.method public init()V
    .locals 2

    .line 343
    const-string v0, "CarAutoWakeService"

    const-string v1, "init: "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->subscribeToProperties()V

    .line 375
    return-void
.end method

.method public insertOrUpdateAutoWakeTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;)V"
        }
    .end annotation

    .line 571
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/car/xpeng/ai/wake/AutoWakeTask;>;"
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->removeInvalidTaskLocked(Ljava/util/List;)V

    .line 573
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 577
    :cond_0
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertOrUpdateAutoWakeTask: packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 579
    .local v2, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    invoke-virtual {v2}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkTaskNeedExitBeforeModify(Ljava/lang/String;)V

    .line 580
    invoke-direct {p0, v0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->insertTaskLocked(Ljava/lang/String;Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 581
    invoke-direct {p0, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleEveryTask(Landroid/car/xpeng/ai/wake/AutoWakeTask;)V

    .line 582
    .end local v2    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    goto :goto_0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->syncClocksToTboxDeplay()V

    .line 584
    return-void

    .line 574
    :cond_2
    :goto_1
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertOrUpdateAutoWakeTask: taskList is empty. packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method public notifyNoRunningScene()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 652
    .local v1, "packageTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 656
    :cond_0
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyNoRunningScene: packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " current task:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCurrentAutoWakeTaskIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 658
    .local v3, "taskId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 659
    .local v4, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    if-eqz v4, :cond_1

    .line 661
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xe

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;I)V

    .line 663
    .end local v3    # "taskId":Ljava/lang/String;
    .end local v4    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    :cond_1
    goto :goto_0

    .line 664
    :cond_2
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleHvTaskEmpty()V

    .line 665
    return-void

    .line 653
    :cond_3
    :goto_1
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyNoRunningScene: packageTaskList is empty. packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void
.end method

.method public overrideAutoWakeTask(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;)V"
        }
    .end annotation

    .line 588
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Landroid/car/xpeng/ai/wake/AutoWakeTask;>;"
    const-string v0, "CarAutoWakeService"

    const-string v1, "overrideAutoWakeTask: "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->deleteAllAutoWakeTask()V

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->insertOrUpdateAutoWakeTask(Ljava/util/List;)V

    .line 591
    return-void
.end method

.method public registerAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    .line 489
    if-eqz p1, :cond_2

    .line 492
    invoke-interface {p1}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 493
    .local v0, "binder":Landroid/os/IBinder;
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageClientMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 495
    .local v2, "clientMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;>;"
    if-nez v2, :cond_0

    .line 496
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v2, v3

    .line 497
    iget-object v3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageClientMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;

    .line 500
    .local v3, "client":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
    if-nez v3, :cond_1

    .line 501
    new-instance v4, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;-><init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Ljava/lang/String;Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V

    move-object v3, v4

    .line 502
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_1
    const-string v4, "CarAutoWakeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerAutoWakeListener:  packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " binder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 490
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "clientMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;>;"
    .end local v3    # "client":Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 6

    .line 388
    sget-object v0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 389
    .local v3, "property":I
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v5, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 388
    .end local v3    # "property":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method public startRootSceneByUser(Ljava/lang/String;)V
    .locals 6
    .param p1, "rootSceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRootSceneByUser: rootSceneId is empty. packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 606
    .local v1, "packageTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 610
    :cond_1
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRootSceneByUser: packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rootSceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 612
    .local v3, "taskId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 613
    .local v4, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    if-eqz v4, :cond_2

    .line 614
    invoke-virtual {v4}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getLeafId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 616
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->checkTaskNeedExitBeforeModify(Ljava/lang/String;)V

    .line 617
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskEnter(Landroid/car/xpeng/ai/wake/AutoWakeTask;Z)V

    .line 620
    .end local v3    # "taskId":Ljava/lang/String;
    .end local v4    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    :cond_2
    goto :goto_0

    .line 621
    :cond_3
    return-void

    .line 607
    :cond_4
    :goto_1
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRootSceneByUser: packageTaskList is empty. packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method public stopRootSceneByUser(Ljava/lang/String;)V
    .locals 12
    .param p1, "rootSceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    const-string v1, "CarAutoWakeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRootSceneByUser: rootSceneId is empty. packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mPackageTaskIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 631
    .local v1, "packageTaskList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 635
    :cond_1
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRootSceneByUser: packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rootSceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 637
    .local v3, "taskId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->mAutoWakeTaskMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/xpeng/ai/wake/AutoWakeTask;

    .line 638
    .local v4, "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getRootId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 640
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/car/xpeng/ai/wake/AutoWakeTask;->getTaskId()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xe

    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAutoWakeTaskExit(ZZLjava/lang/String;IZ)V

    goto :goto_1

    .line 642
    :cond_2
    const-string v5, "CarAutoWakeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopRootSceneByUser: rootScene cannot find. packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " rootSceneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v3    # "taskId":Ljava/lang/String;
    .end local v4    # "task":Landroid/car/xpeng/ai/wake/AutoWakeTask;
    :goto_1
    goto :goto_0

    .line 645
    :cond_3
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleHvTaskEmpty()V

    .line 646
    return-void

    .line 632
    :cond_4
    :goto_2
    const-string v2, "CarAutoWakeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRootSceneByUser: packageTaskList is empty. packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void
.end method

.method public unregisterAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    .line 509
    invoke-direct {p0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->unregisterAutoWakeListener(Ljava/lang/String;Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V

    .line 510
    return-void
.end method

.method public vehicleHalReconnected()V
    .locals 0

    .line 457
    invoke-super {p0}, Lcom/android/car/CarServiceBase;->vehicleHalReconnected()V

    .line 458
    return-void
.end method
