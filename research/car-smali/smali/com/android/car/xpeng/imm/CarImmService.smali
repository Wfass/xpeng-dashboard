.class public Lcom/android/car/xpeng/imm/CarImmService;
.super Landroid/car/xpeng/imm/ICarImmSvc$Stub;
.source "CarImmService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;,
        Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;
    }
.end annotation


# static fields
.field private static final IMM_AI_AVM_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.imm.ai.avm.mode"

.field private static final IMM_AI_DRIVER_PRIORITY_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.imm.ai.driver.priority.mode"

.field private static final IMM_AI_RACER_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.imm.ai.racer.mode"

.field private static final IMM_AI_VOICE_AWAKEN_MODE_PROPERTY:Ljava/lang/String; = "persist.sys.imm.ai.voice.awaken.mode"

.field private static final IMM_BASE_ORIENTATION_PROPERTY:Ljava/lang/String; = "persist.sys.imm.base.orientation"

.field private static final IMM_COORDINATE_PROPERTY:Ljava/lang/String; = "persist.sys.imm.coord.values"

.field public static final IMM_PRIORITY_0:I = 0x0

.field public static final IMM_PRIORITY_1:I = 0x1

.field public static final IMM_PRIORITY_2:I = 0x2

.field public static final IMM_PRIORITY_3:I = 0x3

.field private static final REQUIRED_PROPERTIES:[I

.field private static final TAG:Ljava/lang/String; = "CarImmService"

.field private static final TEMP_POSITION_TIMEOUT:I = 0x2bf20


# instance fields
.field private isTimerRunning:Z

.field private mBootCompleteReceiver:Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;

.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mClientDispatchHandler:Landroid/os/Handler;

.field private final mClientDispatchThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/os/Handler;

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mIgStatus:I

.field private mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

.field private mImmMainState:I

.field private mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/xpeng/imm/ICarImmListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mScence:Lcom/android/car/xpeng/imm/CarImmScene;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 319
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/xpeng/imm/CarImmService;->REQUIRED_PROPERTIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x21405201
        0x21405202
        0x21405203
        0x2140122a
        0x21401205
        0x21401c4f
        0x21401409
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "carPropertyService"    # Lcom/android/car/CarPropertyService;

    .line 186
    invoke-direct {p0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;-><init>()V

    .line 51
    new-instance v0, Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-direct {v0}, Landroid/car/xpeng/imm/ImmCoordManager;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    .line 53
    new-instance v0, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;-><init>(Lcom/android/car/xpeng/imm/CarImmService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->isTimerRunning:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mIgStatus:I

    .line 329
    new-instance v0, Lcom/android/car/xpeng/imm/CarImmService$2;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/imm/CarImmService$2;-><init>(Lcom/android/car/xpeng/imm/CarImmService;)V

    iput-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 447
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    .line 188
    iput-object p1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mEventHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarImmServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mClientDispatchThread:Landroid/os/HandlerThread;

    .line 191
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mClientDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 192
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mClientDispatchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mClientDispatchHandler:Landroid/os/Handler;

    .line 193
    iput-object p3, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 194
    new-instance v0, Lcom/android/car/xpeng/imm/CarImmScene;

    invoke-direct {v0}, Lcom/android/car/xpeng/imm/CarImmScene;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mScence:Lcom/android/car/xpeng/imm/CarImmScene;

    .line 195
    const-string v0, "CarImmService"

    const-string v1, "CarImmService created"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/xpeng/imm/CarImmService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService;

    .line 44
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/car/xpeng/imm/CarImmService;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService;
    .param p1, "x1"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService;->handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

.method static synthetic access$1700(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 44
    invoke-static {p0}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmBaseOrientationProperty(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/car/xpeng/imm/CarImmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService;
    .param p1, "x1"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/android/car/xpeng/imm/CarImmService;->isTimerRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/car/xpeng/imm/CarImmService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService;

    .line 44
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/xpeng/imm/CarImmService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService;
    .param p1, "x1"    # I

    .line 44
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/xpeng/imm/CarImmService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/imm/CarImmService;
    .param p1, "x1"    # I

    .line 44
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService;->setImmMachZeroCalibrate(I)I

    move-result v0

    return v0
.end method

.method private static appendFloatArray(Ljava/lang/StringBuilder;[F)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "values"    # [F

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 112
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 114
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getImmActionScriptID()I
    .locals 3

    .line 1029
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2140520e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method private getImmCoord()[F
    .locals 4

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2161520f

    invoke-virtual {v0, v1}, Lcom/android/car/CarPropertyService;->getFloatVectorProperty(I)[F

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 814
    .local v1, "ang":[F
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getImmCoordY()F
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21605204

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method private getImmCoordZ()F
    .locals 3

    .line 867
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21605205

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method private getImmMainState()I
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21405201

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method private static getImmModeProperty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "property"    # Ljava/lang/String;

    .line 105
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "value":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private getImmMovingSpeed()I
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21405208

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method private getImmMovingState()I
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21405203

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method private getImmSubState()I
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21405202

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method private getImmTouchMode()I
    .locals 3

    .line 901
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21405207

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method private getImmTouchVib()I
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21405206

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public static getLocalImmCoordinate([F[F[F)I
    .locals 9
    .param p0, "coords1"    # [F
    .param p1, "coords2"    # [F
    .param p2, "coords3"    # [F

    .line 120
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    array-length v0, p1

    if-ne v0, v2, :cond_3

    array-length v0, p2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    const-string v0, "persist.sys.imm.coord.values"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 128
    return v4

    .line 131
    :cond_1
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "parts":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 133
    return v1

    .line 137
    :cond_2
    :try_start_0
    aget-object v5, v3, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "floatStrings1":[Ljava/lang/String;
    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, p0, v4

    .line 139
    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, p0, v6

    .line 141
    aget-object v7, v3, v6

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "floatStrings2":[Ljava/lang/String;
    aget-object v8, v7, v4

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, p1, v4

    .line 143
    aget-object v8, v7, v6

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, p1, v6

    .line 145
    aget-object v2, v3, v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "floatStrings3":[Ljava/lang/String;
    aget-object v8, v2, v4

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, p2, v4

    .line 147
    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, p2, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return v6

    .line 150
    .end local v2    # "floatStrings3":[Ljava/lang/String;
    .end local v5    # "floatStrings1":[Ljava/lang/String;
    .end local v7    # "floatStrings2":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    return v1

    .line 121
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v0, "CarImmService"

    const-string v2, "getLocalImmCoordinate: Each float array must have exactly two elements."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v1
.end method

.method private declared-synchronized handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 354
    const-string v0, "CarImmService"

    const-string v1, "notifyCarImmStatusChanged: 39"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 358
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 359
    .local v1, "propId":I
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 360
    .local v2, "timestamp":J
    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_0

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    goto/16 :goto_1

    .line 387
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :sswitch_0
    goto/16 :goto_1

    .line 376
    :sswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 377
    .local v4, "subState":I
    invoke-virtual {p0, v4}, Lcom/android/car/xpeng/imm/CarImmService;->immSubStateConvToImmServiceState(I)I

    move-result v5

    .line 378
    .local v5, "immStateCode":I
    invoke-direct {p0, v5}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 379
    const-string v6, "CarImmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyCarImmStatusChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v6, 0xc

    if-ne v4, v6, :cond_8

    .line 382
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->storeCurrentOrientationPosition()V

    goto/16 :goto_1

    .line 362
    .end local v4    # "subState":I
    .end local v5    # "immStateCode":I
    :sswitch_2
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 363
    .local v5, "mainState":I
    iget v6, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMainState:I

    if-eq v5, v6, :cond_1

    .line 364
    iput v5, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMainState:I

    .line 366
    :cond_1
    if-eqz v5, :cond_2

    .line 372
    goto/16 :goto_1

    .line 368
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 369
    const-string v4, "CarImmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyCarImmStatusChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    goto/16 :goto_1

    .line 415
    .end local v5    # "mainState":I
    :sswitch_3
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 417
    .local v4, "passengerOccupancy":I
    if-ne v4, v7, :cond_8

    .line 418
    const-string v5, "CarImmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "passengerOccupancy: PSNGR_OCCUPANCY_ST_OCCUPIED, value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v5, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 421
    invoke-virtual {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->syncImmBaseOrientation(I)I

    goto/16 :goto_1

    .line 426
    .end local v4    # "passengerOccupancy":I
    :sswitch_4
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mIgStatus:I

    .line 427
    iget v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mIgStatus:I

    if-nez v4, :cond_3

    .line 429
    const-string v4, "CarImmService"

    const-string v5, "IG off, set base orientation to center"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCenterOrientation()I

    goto/16 :goto_1

    .line 431
    :cond_3
    iget v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mIgStatus:I

    if-eq v4, v7, :cond_4

    iget v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mIgStatus:I

    if-ne v4, v6, :cond_8

    .line 432
    :cond_4
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1600(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 436
    :cond_5
    const-string v4, "CarImmService"

    const-string v6, "IG on, restore base orientation"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0, v5}, Lcom/android/car/xpeng/imm/CarImmService;->syncImmBaseOrientation(I)I

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    goto/16 :goto_1

    .line 433
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :cond_6
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->setImmOrientation(I)I

    goto/16 :goto_1

    .line 389
    :sswitch_5
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 391
    .local v6, "driveMode":I
    if-ne v6, v4, :cond_7

    .line 392
    const-string v4, "CarImmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "driveMode: DRIVING_MODE_STATUS_RACING, value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 394
    invoke-virtual {p0, v5, v7}, Lcom/android/car/xpeng/imm/CarImmService;->setImmAiOrientation(II)I

    goto :goto_1

    .line 397
    :cond_7
    const-string v4, "CarImmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "driveMode value: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 400
    invoke-virtual {p0, v7}, Lcom/android/car/xpeng/imm/CarImmService;->syncImmBaseOrientation(I)I

    goto :goto_1

    .line 405
    .end local v6    # "driveMode":I
    :sswitch_6
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 407
    .local v4, "gearLevel":I
    if-ne v4, v7, :cond_8

    .line 408
    const-string v7, "CarImmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gearLevel: GEAR_LEVEL_D, value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v7}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 410
    invoke-virtual {p0, v5, v6}, Lcom/android/car/xpeng/imm/CarImmService;->setImmAiOrientation(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    .end local v4    # "gearLevel":I
    :cond_8
    :goto_1
    goto :goto_2

    .line 350
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 442
    .restart local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 350
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :goto_3
    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService;
    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x21401205 -> :sswitch_6
        0x2140122a -> :sswitch_5
        0x21401409 -> :sswitch_4
        0x21401c4f -> :sswitch_3
        0x21405201 -> :sswitch_2
        0x21405202 -> :sswitch_1
        0x21405203 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDriveMode()Z
    .locals 5

    .line 1219
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401205

    invoke-virtual {v1, v2, v0}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v1

    .line 1220
    .local v1, "mode":I
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDriveMode: mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1222
    return v2

    .line 1224
    :cond_0
    return v0

    .line 1226
    .end local v1    # "mode":I
    :catch_0
    move-exception v1

    .line 1227
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDriveMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return v0
.end method

.method private isPassengerOccupied()Z
    .locals 5

    .line 1240
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401c4f

    invoke-virtual {v1, v2, v0}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v1

    .line 1241
    .local v1, "status":I
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPassengerOccupied: status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1243
    return v2

    .line 1245
    :cond_0
    return v0

    .line 1247
    .end local v1    # "status":I
    :catch_0
    move-exception v1

    .line 1248
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPassengerOccupied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    return v0
.end method

.method private isRacerMode()Z
    .locals 5

    .line 1199
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x2140122a

    invoke-virtual {v1, v2, v0}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v1

    .line 1200
    .local v1, "mode":I
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRacerMode: mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1202
    const/4 v0, 0x1

    return v0

    .line 1204
    :cond_0
    return v0

    .line 1206
    .end local v1    # "mode":I
    :catch_0
    move-exception v1

    .line 1207
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRacerMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return v0
.end method

.method private notifyCarImmAiAvmModeChanged(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 483
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/imm/ICarImmListener;

    .line 485
    .local v1, "listener":Landroid/car/xpeng/imm/ICarImmListener;
    :try_start_0
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface {v1, p1}, Landroid/car/xpeng/imm/ICarImmListener;->onImmAvmStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    goto :goto_1

    .line 487
    :catch_0
    move-exception v2

    .line 488
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarImmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    iget-object v3, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 492
    .end local v1    # "listener":Landroid/car/xpeng/imm/ICarImmListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method

.method private notifyCarImmStatusChanged(I)V
    .locals 6
    .param p1, "event"    # I

    .line 466
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/imm/ICarImmListener;

    .line 468
    .local v1, "listener":Landroid/car/xpeng/imm/ICarImmListener;
    :try_start_0
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-interface {v1, p1}, Landroid/car/xpeng/imm/ICarImmListener;->onImmStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    goto :goto_1

    .line 470
    :catch_0
    move-exception v2

    .line 471
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarImmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    iget-object v3, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 475
    .end local v1    # "listener":Landroid/car/xpeng/imm/ICarImmListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 476
    :cond_0
    return-void
.end method

.method private setImmActionScriptID(I)I
    .locals 3
    .param p1, "id"    # I

    .line 1015
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x2140520e

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1016
    return v1
.end method

.method private setImmCenterOrientation()I
    .locals 4

    .line 1101
    const/16 v0, 0x32

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmMovingSpeed(I)I

    .line 1102
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v0}, Landroid/car/xpeng/imm/ImmCoordManager;->getCenterCoords()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    .line 1103
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmCenterOrientation: centerCoordList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v2}, Landroid/car/xpeng/imm/ImmCoordManager;->getCenterCoords()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    const/4 v0, 0x0

    return v0

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmCenterOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v1, -0x1

    return v1
.end method

.method private setImmCoord([F)I
    .locals 4
    .param p1, "angle"    # [F

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2161520f

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarPropertyService;->setFloatVectorProperty(I[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    nop

    .line 797
    const/4 v0, 0x0

    return v0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v1, -0x1

    return v1
.end method

.method private setImmCoordY(F)I
    .locals 3
    .param p1, "angle"    # F

    .line 828
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x21605204

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setFloatProperty(IIF)V

    .line 829
    return v1
.end method

.method private setImmCoordZ(F)I
    .locals 3
    .param p1, "angle"    # F

    .line 854
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x21605205

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setFloatProperty(IIF)V

    .line 855
    return v1
.end method

.method private setImmDefaultPos(I)I
    .locals 3
    .param p1, "cmd"    # I

    .line 969
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x21405209

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 970
    return v1
.end method

.method private setImmDriverOrientation()I
    .locals 4

    .line 1070
    const/16 v0, 0x32

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmMovingSpeed(I)I

    .line 1071
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmDriverOrientation: driverCoordList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v2}, Landroid/car/xpeng/imm/ImmCoordManager;->getDriverCoords()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v0}, Landroid/car/xpeng/imm/ImmCoordManager;->getDriverCoords()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmDriverOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v1, -0x1

    return v1
.end method

.method private setImmEmerStop(I)I
    .locals 3
    .param p1, "cmd"    # I

    .line 1001
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x2140520d

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1002
    return v1
.end method

.method private setImmErrorReset(I)I
    .locals 3
    .param p1, "cmd"    # I

    .line 1060
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x2140520b

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1061
    return v1
.end method

.method private setImmMachZeroCalibrate(I)I
    .locals 3
    .param p1, "cmd"    # I

    .line 985
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x2140520c

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 986
    return v1
.end method

.method private setImmMovingSpeed(I)I
    .locals 3
    .param p1, "percentage"    # I

    .line 941
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x21405208

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 942
    return v1
.end method

.method private setImmPassengerOrientation()I
    .locals 4

    .line 1085
    const/16 v0, 0x32

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmMovingSpeed(I)I

    .line 1086
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v0}, Landroid/car/xpeng/imm/ImmCoordManager;->getPassengerCoords()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    .line 1087
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmPassengerOrientation: passengerCoordList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v2}, Landroid/car/xpeng/imm/ImmCoordManager;->getPassengerCoords()[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    const/4 v0, 0x0

    return v0

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmPassengerOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/4 v1, -0x1

    return v1
.end method

.method private setImmPowerOff(I)I
    .locals 3
    .param p1, "cmd"    # I

    .line 1044
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x2140520a

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1045
    return v1
.end method

.method private setImmTouchMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 884
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x21405207

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 885
    return v1
.end method

.method private setImmTouchVib(I)I
    .locals 3
    .param p1, "percentage"    # I

    .line 914
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v1, 0x0

    const v2, 0x21405206

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 915
    return v1
.end method

.method private storeCurrentOrientationPosition()V
    .locals 7

    .line 1259
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmCoord()[F

    move-result-object v0

    .line 1260
    .local v0, "currentCoord":[F
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v1, v0}, Landroid/car/xpeng/imm/ImmCoordManager;->getPositionOrientation([F)I

    move-result v1

    .line 1261
    .local v1, "currentOrientation":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1262
    const-string v4, "CarImmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeCurrentPosition: driverCoordList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-virtual {v4, v2, v3}, Landroid/car/xpeng/imm/ImmCoordManager;->setDriverCoords(FF)I

    .line 1264
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    goto :goto_0

    .line 1265
    :cond_0
    if-ne v1, v3, :cond_1

    .line 1266
    const-string v4, "CarImmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeCurrentPosition: passengerCoordList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-virtual {v4, v2, v3}, Landroid/car/xpeng/imm/ImmCoordManager;->setPassengerCoords(FF)I

    .line 1268
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    .end local v0    # "currentCoord":[F
    .end local v1    # "currentOrientation":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeCurrentPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static storeImmBaseOrientationProperty(I)V
    .locals 2
    .param p0, "orientation"    # I

    .line 90
    :try_start_0
    const-string v0, "persist.sys.imm.base.orientation"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static storeImmCoordinate([F[F[F)V
    .locals 5
    .param p0, "driverCoords"    # [F
    .param p1, "passengerCoords"    # [F
    .param p2, "centerCoords"    # [F

    .line 69
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/android/car/xpeng/imm/CarImmService;->appendFloatArray(Ljava/lang/StringBuilder;[F)V

    .line 74
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {v0, p1}, Lcom/android/car/xpeng/imm/CarImmService;->appendFloatArray(Ljava/lang/StringBuilder;[F)V

    .line 76
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v0, p2}, Lcom/android/car/xpeng/imm/CarImmService;->appendFloatArray(Ljava/lang/StringBuilder;[F)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "coordinateValue":Ljava/lang/String;
    :try_start_0
    const-string v2, "persist.sys.imm.coord.values"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    return-void

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "CarImmService"

    const-string v4, "Failed to set system property: persist.sys.imm.coord.values"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    throw v2

    .line 70
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "coordinateValue":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each float array must have exactly two elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static storeImmModeProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .line 98
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "1"

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1

    .line 98
    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_2

    .line 99
    :goto_1
    nop

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private declared-synchronized subscribeToProperties()V
    .locals 7

    monitor-enter p0

    .line 344
    :try_start_0
    sget-object v0, Lcom/android/car/xpeng/imm/CarImmService;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 345
    .local v3, "propertyId":I
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/car/xpeng/imm/CarImmService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    .end local v3    # "propertyId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_0
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/imm/CarImmService;
    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 272
    const-string v0, "*CarImmService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public getImmAroundViewMonitorMode()Z
    .locals 4

    .line 1810
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1600(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1811
    :catch_0
    move-exception v0

    .line 1812
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImmAroundViewMonitorMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const/4 v1, 0x0

    return v1
.end method

.method public getImmDriverPriorityMode()Z
    .locals 4

    .line 1790
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImmDriverPriorityMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const/4 v1, 0x0

    return v1
.end method

.method public getImmOrientation()I
    .locals 4

    .line 1561
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2000(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImmOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    const/4 v1, -0x1

    return v1
.end method

.method public getImmOrientationCoord([F[F[F)I
    .locals 7
    .param p1, "driverCoords"    # [F
    .param p2, "passengerCoords"    # [F
    .param p3, "centerCoords"    # [F

    .line 1581
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v1}, Landroid/car/xpeng/imm/ImmCoordManager;->getDriverCoords()[F

    move-result-object v1

    .line 1582
    .local v1, "tempDriverCoords":[F
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v2}, Landroid/car/xpeng/imm/ImmCoordManager;->getPassengerCoords()[F

    move-result-object v2

    .line 1583
    .local v2, "tempPassengerCoords":[F
    iget-object v3, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v3}, Landroid/car/xpeng/imm/ImmCoordManager;->getCenterCoords()[F

    move-result-object v3

    .line 1584
    .local v3, "tempCenterCoords":[F
    const-string v4, "CarImmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImmOrientationCoord: driverCoords: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", passengerCoords: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", centerCoords: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1584
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    array-length v4, p1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    array-length v4, p2

    if-lt v4, v5, :cond_0

    array-length v4, p3

    if-lt v4, v5, :cond_0

    .line 1590
    const/4 v4, 0x0

    invoke-static {v1, v4, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1591
    invoke-static {v2, v4, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1592
    invoke-static {v3, v4, p3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1597
    return v4

    .line 1594
    :cond_0
    const-string v4, "CarImmService"

    const-string v5, "getImmOrientationCoord: Provided arrays are too short."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    return v0

    .line 1598
    .end local v1    # "tempDriverCoords":[F
    .end local v2    # "tempPassengerCoords":[F
    .end local v3    # "tempCenterCoords":[F
    :catch_0
    move-exception v1

    .line 1599
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImmOrientationCoord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return v0
.end method

.method public getImmRacerMode()Z
    .locals 4

    .line 1780
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1781
    :catch_0
    move-exception v0

    .line 1782
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImmRacerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/4 v1, 0x0

    return v1
.end method

.method public getImmState()I
    .locals 3

    .line 1118
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmMainState()I

    move-result v0

    .line 1119
    .local v0, "mainState":I
    if-nez v0, :cond_0

    .line 1120
    const/16 v1, 0xd

    return v1

    .line 1122
    :cond_0
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmSubState()I

    move-result v1

    .line 1123
    .local v1, "subState":I
    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/imm/CarImmService;->immSubStateConvToImmServiceState(I)I

    move-result v2

    .line 1124
    .local v2, "immServiceState":I
    return v2
.end method

.method public getImmVoiceAwakenMode()Z
    .locals 4

    .line 1800
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1801
    :catch_0
    move-exception v0

    .line 1802
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImmVoiceAwakenMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const/4 v1, 0x0

    return v1
.end method

.method public immSubStateConvToImmServiceState(I)I
    .locals 1
    .param p1, "subState"    # I

    .line 1132
    packed-switch p1, :pswitch_data_0

    .line 1188
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 1186
    :pswitch_1
    const/16 v0, 0x34

    return v0

    .line 1184
    :pswitch_2
    const/16 v0, 0x33

    return v0

    .line 1182
    :pswitch_3
    const/16 v0, 0x32

    return v0

    .line 1180
    :pswitch_4
    const/16 v0, 0x31

    return v0

    .line 1178
    :pswitch_5
    const/16 v0, 0x30

    return v0

    .line 1176
    :pswitch_6
    const/16 v0, 0x2f

    return v0

    .line 1174
    :pswitch_7
    const/16 v0, 0x2d

    return v0

    .line 1172
    :pswitch_8
    const/16 v0, 0x2c

    return v0

    .line 1170
    :pswitch_9
    const/16 v0, 0x2b

    return v0

    .line 1168
    :pswitch_a
    const/16 v0, 0x2a

    return v0

    .line 1166
    :pswitch_b
    const/16 v0, 0x29

    return v0

    .line 1164
    :pswitch_c
    const/16 v0, 0x28

    return v0

    .line 1162
    :pswitch_d
    const/16 v0, 0x27

    return v0

    .line 1160
    :pswitch_e
    const/16 v0, 0x26

    return v0

    .line 1158
    :pswitch_f
    const/16 v0, 0x25

    return v0

    .line 1156
    :pswitch_10
    const/16 v0, 0x24

    return v0

    .line 1154
    :pswitch_11
    const/16 v0, 0x22

    return v0

    .line 1152
    :pswitch_12
    const/16 v0, 0x21

    return v0

    .line 1150
    :pswitch_13
    const/16 v0, 0x20

    return v0

    .line 1144
    :pswitch_14
    const/16 v0, 0x1d

    return v0

    .line 1148
    :pswitch_15
    const/16 v0, 0x1f

    return v0

    .line 1146
    :pswitch_16
    const/16 v0, 0x1e

    return v0

    .line 1142
    :pswitch_17
    const/16 v0, 0x14

    return v0

    .line 1140
    :pswitch_18
    const/16 v0, 0x12

    return v0

    .line 1138
    :pswitch_19
    const/16 v0, 0x35

    return v0

    .line 1136
    :pswitch_1a
    const/16 v0, 0xf

    return v0

    .line 1134
    :pswitch_1b
    const/16 v0, 0xe

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
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
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 9

    .line 204
    const-string v0, "config_car_imm"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "CarImmService"

    const-string v1, "CarImmService not support."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 209
    :cond_0
    const-string v0, "CarImmService"

    const-string v1, "CarImmService init"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmState()I

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_1

    .line 212
    const-string v0, "CarImmService"

    const-string v1, "Need to calibrate, register broadcast receiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;-><init>(Lcom/android/car/xpeng/imm/CarImmService;Lcom/android/car/xpeng/imm/CarImmService$1;)V

    iput-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mBootCompleteReceiver:Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;

    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mBootCompleteReceiver:Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    const-string v1, "CarImmService"

    const-string v2, "mBootCompleteReceiver registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mPowerManager:Landroid/os/PowerManager;

    .line 222
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 223
    .local v1, "driverCoords":[F
    new-array v2, v0, [F

    .line 224
    .local v2, "passengerCoords":[F
    new-array v0, v0, [F

    .line 225
    .local v0, "centerCoords":[F
    invoke-static {v1, v2, v0}, Lcom/android/car/xpeng/imm/CarImmService;->getLocalImmCoordinate([F[F[F)I

    move-result v3

    .line 226
    .local v3, "ret":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 228
    const-string v5, "CarImmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLocalImmCoordinate: driverCoords = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget v8, v1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v5, "CarImmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocalImmCoordinate: passengerCoords = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v5, "CarImmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocalImmCoordinate: centerCoords = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v5, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    aget v6, v1, v7

    aget v8, v1, v4

    invoke-virtual {v5, v6, v8}, Landroid/car/xpeng/imm/ImmCoordManager;->setDriverCoords(FF)I

    .line 232
    iget-object v5, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    aget v6, v2, v7

    aget v4, v2, v4

    invoke-virtual {v5, v6, v4}, Landroid/car/xpeng/imm/ImmCoordManager;->setPassengerCoords(FF)I

    .line 237
    :cond_2
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const-string v5, "persist.sys.imm.ai.racer.mode"

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService;->getImmModeProperty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$100(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 238
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const-string v5, "persist.sys.imm.ai.driver.priority.mode"

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService;->getImmModeProperty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 239
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const-string v5, "persist.sys.imm.ai.avm.mode"

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService;->getImmModeProperty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 240
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const-string v5, "persist.sys.imm.ai.voice.awaken.mode"

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService;->getImmModeProperty(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 244
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->subscribeToProperties()V

    .line 246
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmVoiceAwakenModeChanged(Z)V

    .line 249
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerHandler:Landroid/os/Handler;

    .line 250
    new-instance v4, Lcom/android/car/xpeng/imm/CarImmService$1;

    invoke-direct {v4, p0}, Lcom/android/car/xpeng/imm/CarImmService$1;-><init>(Lcom/android/car/xpeng/imm/CarImmService;)V

    iput-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerRunnable:Ljava/lang/Runnable;

    .line 260
    return-void
.end method

.method public notifyCarImmVoiceAwakenModeChanged(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 500
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/imm/ICarImmListener;

    .line 502
    .local v1, "listener":Landroid/car/xpeng/imm/ICarImmListener;
    :try_start_0
    const-string v2, "CarImmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-interface {v1, p1}, Landroid/car/xpeng/imm/ICarImmListener;->onImmVoiceAwakenStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    goto :goto_1

    .line 504
    :catch_0
    move-exception v2

    .line 505
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CarImmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    iget-object v3, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 509
    .end local v1    # "listener":Landroid/car/xpeng/imm/ICarImmListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 510
    :cond_0
    return-void
.end method

.method public refreshTimer()V
    .locals 4

    .line 304
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->isTimerRunning:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    const-string v0, "CarImmService"

    const-string v1, "timer refreshed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    return-void
.end method

.method public registerListener(Landroid/car/xpeng/imm/ICarImmListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/xpeng/imm/ICarImmListener;

    .line 451
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 268
    return-void
.end method

.method public setImmAiOrientation(II)I
    .locals 7
    .param p1, "orientation"    # I
    .param p2, "mode"    # I

    .line 1433
    const/4 v0, -0x1

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1445
    return v0

    .line 1441
    :pswitch_0
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/car/xpeng/imm/CarImmService;->setImmMovingSpeed(I)I

    .line 1442
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1443
    goto :goto_0

    .line 1438
    :pswitch_1
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1439
    goto :goto_0

    .line 1435
    :pswitch_2
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2100(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1436
    nop

    .line 1448
    :goto_0
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v2

    .line 1449
    .local v2, "immState":I
    const-string v4, "CarImmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImmAiOrientation immState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    if-nez v2, :cond_1

    .line 1451
    const/4 v4, -0x1

    .line 1452
    .local v4, "ret":I
    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_1

    .line 1472
    return v0

    .line 1466
    :pswitch_3
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1467
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCenterOrientation()I

    move-result v1

    .line 1468
    .end local v4    # "ret":I
    .local v1, "ret":I
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1469
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1470
    goto :goto_1

    .line 1460
    .end local v1    # "ret":I
    .restart local v4    # "ret":I
    :pswitch_4
    iget-object v6, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v6, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1461
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmPassengerOrientation()I

    move-result v3

    .line 1462
    .end local v4    # "ret":I
    .local v3, "ret":I
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1463
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1464
    nop

    .line 1474
    move v1, v3

    goto :goto_1

    .line 1454
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    :pswitch_5
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1455
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmDriverOrientation()I

    move-result v1

    .line 1456
    .end local v4    # "ret":I
    .restart local v1    # "ret":I
    iget-object v3, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v3, v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1457
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1458
    nop

    .line 1474
    :goto_1
    if-nez v1, :cond_0

    .line 1475
    return v5

    .line 1477
    :cond_0
    return v0

    .line 1480
    .end local v1    # "ret":I
    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setImmAroundViewMonitorMode(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 1758
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmAroundViewMonitorMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1761
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1762
    invoke-direct {p0, v2}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmAiAvmModeChanged(Z)V

    .line 1763
    const-string v1, "persist.sys.imm.ai.avm.mode"

    invoke-static {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmModeProperty(Ljava/lang/String;Z)V

    .line 1764
    return v0

    .line 1771
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1766
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v1, v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1767
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmAiAvmModeChanged(Z)V

    .line 1768
    const-string v1, "persist.sys.imm.ai.avm.mode"

    invoke-static {v1, v0}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmModeProperty(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    return v0

    .line 1771
    :goto_0
    nop

    .line 1772
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmAroundViewMonitorMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    const/4 v1, -0x1

    return v1
.end method

.method public setImmDriverPriorityMode(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 1707
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmDriverPriorityMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1710
    :try_start_0
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1711
    const-string v2, "persist.sys.imm.ai.driver.priority.mode"

    invoke-static {v2, v3}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmModeProperty(Ljava/lang/String;Z)V

    .line 1713
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->isDriveMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->isPassengerOccupied()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1714
    const-string v2, "CarImmService"

    const-string v3, "\u6253\u5f00\u5f00\u5173\u65f6\u5df2\u7ecf\u662fD\u6863\u4e14\u526f\u9a7e\u6ca1\u4eba, \u6fc0\u6d3b\u4e00\u6b21\u4e3b\u9a7e\u4f18\u5148\u667a\u80fd\u671d\u5411\u8f6c\u52a8"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-virtual {p0, v1, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmAiOrientation(II)I

    move-result v0

    return v0

    .line 1718
    :cond_0
    return v1

    .line 1729
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1720
    :cond_1
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1721
    const-string v2, "persist.sys.imm.ai.driver.priority.mode"

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmModeProperty(Ljava/lang/String;Z)V

    .line 1723
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1725
    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->syncImmBaseOrientation(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1727
    :cond_2
    return v1

    .line 1729
    :goto_0
    nop

    .line 1730
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmDriverPriorityMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/4 v1, -0x1

    return v1
.end method

.method public setImmOrientation(I)I
    .locals 10
    .param p1, "orientation"    # I

    .line 1292
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v0

    .line 1293
    .local v0, "immState":I
    if-nez v0, :cond_2

    .line 1294
    const/4 v2, -0x1

    .line 1295
    .local v2, "ret":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/16 v6, 0xb

    packed-switch p1, :pswitch_data_0

    .line 1400
    return v5

    .line 1366
    :pswitch_0
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v7}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2000(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 1396
    return v5

    .line 1385
    :pswitch_1
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmPassengerOrientation()I

    move-result v2

    .line 1386
    const-string v4, "CarImmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImmPassengerOrientation ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    if-nez v2, :cond_0

    .line 1388
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1389
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1900(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1390
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1391
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1392
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->breakAllImmAiActivate()V

    goto/16 :goto_0

    .line 1381
    :pswitch_2
    const-string v1, "CarImmService"

    const-string v4, "setImmOrientation: current is passenger, can\'t set right"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    goto/16 :goto_0

    .line 1369
    :pswitch_3
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCenterOrientation()I

    move-result v2

    .line 1370
    const-string v7, "CarImmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImmCenterOrientation ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    if-nez v2, :cond_0

    .line 1372
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v7, v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1373
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v7, v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1900(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1374
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1375
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1376
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->breakAllImmAiActivate()V

    goto/16 :goto_0

    .line 1331
    :pswitch_4
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v7}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2000(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)I

    move-result v7

    packed-switch v7, :pswitch_data_2

    .line 1361
    return v5

    .line 1350
    :pswitch_5
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmDriverOrientation()I

    move-result v2

    .line 1351
    const-string v4, "CarImmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImmDriverOrientation ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    if-nez v2, :cond_0

    .line 1353
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1354
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1900(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1355
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1356
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1357
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->breakAllImmAiActivate()V

    goto/16 :goto_0

    .line 1338
    :pswitch_6
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCenterOrientation()I

    move-result v2

    .line 1339
    const-string v7, "CarImmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImmCenterOrientation ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    if-nez v2, :cond_0

    .line 1341
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v7, v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1342
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v7, v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1900(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1343
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1344
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1345
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->breakAllImmAiActivate()V

    goto/16 :goto_0

    .line 1334
    :pswitch_7
    const-string v1, "CarImmService"

    const-string v4, "setImmOrientation: current is driver, can\'t set left"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    goto/16 :goto_0

    .line 1319
    :pswitch_8
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCenterOrientation()I

    move-result v2

    .line 1320
    const-string v4, "CarImmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImmCenterOrientation ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    if-nez v2, :cond_0

    .line 1322
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1323
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1900(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1324
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1325
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1326
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->breakAllImmAiActivate()V

    goto :goto_0

    .line 1308
    :pswitch_9
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmPassengerOrientation()I

    move-result v2

    .line 1309
    const-string v4, "CarImmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImmPassengerOrientation ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    if-nez v2, :cond_0

    .line 1311
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1312
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1900(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1313
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1314
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1315
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->breakAllImmAiActivate()V

    goto :goto_0

    .line 1297
    :pswitch_a
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmDriverOrientation()I

    move-result v2

    .line 1298
    const-string v4, "CarImmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImmDriverOrientation ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    if-nez v2, :cond_0

    .line 1300
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1301
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1900(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1302
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v4, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1303
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1304
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->breakAllImmAiActivate()V

    .line 1402
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 1403
    return v3

    .line 1405
    :cond_1
    return v5

    .line 1409
    .end local v2    # "ret":I
    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public setImmOrientationCoord([F[F[F)I
    .locals 5
    .param p1, "driverCoords"    # [F
    .param p2, "passengerCoords"    # [F
    .param p3, "centerCoords"    # [F

    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v0, v2, v4}, Landroid/car/xpeng/imm/ImmCoordManager;->setDriverCoords(FF)I

    .line 1616
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    aget v2, p2, v1

    aget v3, p2, v3

    invoke-virtual {v0, v2, v3}, Landroid/car/xpeng/imm/ImmCoordManager;->setPassengerCoords(FF)I

    .line 1618
    invoke-static {p1, p2, p3}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmCoordinate([F[F[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    return v1

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmOrientationCoord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const/4 v1, -0x1

    return v1
.end method

.method public setImmRacerMode(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 1671
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmRacerMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1674
    :try_start_0
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$100(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1675
    const-string v2, "persist.sys.imm.ai.racer.mode"

    invoke-static {v2, v0}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmModeProperty(Ljava/lang/String;Z)V

    .line 1677
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->isRacerMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1678
    const-string v2, "CarImmService"

    const-string v3, "\u6253\u5f00\u5f00\u5173\u65f6\u5df2\u7ecf\u662f\u8f66\u624b\u6a21\u5f0f, \u6fc0\u6d3b\u4e00\u6b21\u8f66\u624b\u6a21\u5f0f\u667a\u80fd\u671d\u5411\u8f6c\u52a8"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-virtual {p0, v1, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmAiOrientation(II)I

    move-result v0

    return v0

    .line 1683
    :cond_0
    return v1

    .line 1694
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1685
    :cond_1
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$100(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1686
    const-string v2, "persist.sys.imm.ai.racer.mode"

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmModeProperty(Ljava/lang/String;Z)V

    .line 1688
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1690
    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->syncImmBaseOrientation(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1692
    :cond_2
    return v1

    .line 1694
    :goto_0
    nop

    .line 1695
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmRacerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/4 v1, -0x1

    return v1
.end method

.method public setImmTouchVibPercentage(I)I
    .locals 2
    .param p1, "percentage"    # I

    .line 1656
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmMainState()I

    move-result v0

    .line 1657
    .local v0, "mainState":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1658
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService;->setImmTouchVib(I)I

    move-result v1

    return v1

    .line 1660
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmState()I

    move-result v1

    return v1
.end method

.method public setImmVoiceAwakenFinish()I
    .locals 2

    .line 1977
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2600(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1984
    :cond_0
    return v1

    .line 1978
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1979
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v0, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2700(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1980
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->stopTimer()V

    .line 1982
    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/imm/CarImmService;->syncImmBaseOrientation(I)I

    move-result v0

    return v0
.end method

.method public setImmVoiceAwakenMode(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 1737
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmVoiceAwakenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1740
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1741
    invoke-virtual {p0, v2}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmVoiceAwakenModeChanged(Z)V

    .line 1742
    const-string v1, "persist.sys.imm.ai.voice.awaken.mode"

    invoke-static {v1, p1}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmModeProperty(Ljava/lang/String;Z)V

    .line 1743
    return v0

    .line 1750
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1745
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v1, v0}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1746
    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmVoiceAwakenModeChanged(Z)V

    .line 1747
    const-string v1, "persist.sys.imm.ai.voice.awaken.mode"

    invoke-static {v1, p1}, Lcom/android/car/xpeng/imm/CarImmService;->storeImmModeProperty(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    return v0

    .line 1750
    :goto_0
    nop

    .line 1751
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmVoiceAwakenMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/4 v1, -0x1

    return v1
.end method

.method public setImmVoiceAwakenRotation(I)I
    .locals 11
    .param p1, "orientation"    # I

    .line 1819
    const/high16 v0, 0x40a00000    # 5.0f

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1970
    const/4 v0, -0x1

    return v0

    .line 1898
    :pswitch_0
    iget-object v5, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2600(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1900
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->refreshTimer()V

    .line 1901
    return v4

    .line 1904
    :cond_0
    iget-object v5, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1906
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmCoord()[F

    move-result-object v5

    .line 1907
    .local v5, "currentCoords":[F
    new-array v1, v1, [F

    aget v6, v5, v4

    aput v6, v1, v4

    aget v6, v5, v3

    add-float/2addr v6, v0

    aput v6, v1, v3

    move-object v0, v1

    .line 1908
    .local v0, "newCoords":[F
    const-string v1, "CarImmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImmVoiceAwakenRotation: \u526f\u9a7e\u62df\u4eba\u52a8\u4f5c\u5c1d\u8bd5 Rz+5, \u79fb\u52a8\u5230: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v1, v0}, Landroid/car/xpeng/imm/ImmCoordManager;->isOverSoftLimit([F)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1911
    const-string v1, "CarImmService"

    const-string v2, "setImmVoiceAwakenRotation: \u5b58\u5728\u8d85\u9650\u4f4d"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    return v4

    .line 1915
    :cond_1
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v1

    .line 1916
    .local v1, "immState":I
    if-nez v1, :cond_2

    .line 1917
    const-string v6, "CarImmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImmVoiceAwakenRotation: \u53ef\u4ee5\u8fd0\u52a8, \u526f\u9a7e\u62df\u4eba\u52a8\u4f5c\u89e6\u53d1, Rz+5, \u79fb\u52a8\u5230: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    .line 1919
    iget-object v6, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v6, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1920
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1921
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2700(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1923
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->refreshTimer()V

    .line 1924
    return v4

    .line 1926
    :cond_2
    return v1

    .line 1931
    .end local v0    # "newCoords":[F
    .end local v1    # "immState":I
    .end local v5    # "currentCoords":[F
    :cond_3
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmCoord()[F

    move-result-object v5

    .line 1932
    .restart local v5    # "currentCoords":[F
    new-array v6, v1, [F

    aget v7, v5, v4

    add-float/2addr v7, v0

    aput v7, v6, v4

    aget v7, v5, v3

    add-float/2addr v7, v0

    aput v7, v6, v3

    .line 1933
    .local v6, "newCoords":[F
    const-string v7, "CarImmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImmVoiceAwakenRotation: \u526f\u9a7e\u62df\u4eba\u52a8\u4f5c\u89e6\u53d1Ry+5, Rz+5, \u76ee\u6807\u70b9: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v7, v6}, Landroid/car/xpeng/imm/ImmCoordManager;->isOverSoftLimit([F)I

    move-result v7

    if-ne v7, v1, :cond_5

    .line 1936
    const-string v7, "CarImmService"

    const-string v8, "setImmVoiceAwakenRotation: \u4ec5Rz\u8d85\u9650, Ry\u6ca1\u8d85, \u4ec5\u79fb\u52a8Ry"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v7, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v7, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v7

    .line 1938
    .local v7, "immState":I
    if-nez v7, :cond_4

    .line 1939
    new-array v1, v1, [F

    aget v8, v5, v4

    add-float/2addr v8, v0

    aput v8, v1, v4

    aget v0, v5, v3

    aput v0, v1, v3

    move-object v0, v1

    .line 1940
    .local v0, "mCoords":[F
    const-string v1, "CarImmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImmVoiceAwakenRotation: \u53ef\u4ee5\u8fd0\u52a8, \u526f\u9a7e\u62df\u4eba\u52a8\u4f5c\u89e6\u53d1, \u4ec5\u79fb\u52a8Ry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    .line 1942
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1943
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v1, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2700(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1945
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->startTimer()V

    .line 1946
    return v4

    .line 1948
    .end local v0    # "mCoords":[F
    :cond_4
    return v7

    .line 1950
    .end local v7    # "immState":I
    :cond_5
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v0, v6}, Landroid/car/xpeng/imm/ImmCoordManager;->isOverSoftLimit([F)I

    move-result v0

    if-nez v0, :cond_7

    .line 1952
    const-string v0, "CarImmService"

    const-string v1, "setImmVoiceAwakenRotation: \u90fd\u6ca1\u8d85\u9650\u4f4d"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v0

    .line 1954
    .local v0, "immState":I
    if-nez v0, :cond_6

    .line 1955
    const-string v1, "CarImmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImmVoiceAwakenRotation: \u53ef\u4ee5\u8fd0\u52a8, \u526f\u9a7e\u62df\u4eba\u52a8\u4f5c\u89e6\u53d1Ry+5, Rz+5, \u79fb\u52a8\u5230: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    .line 1957
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1958
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v1, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2700(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1960
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->startTimer()V

    .line 1961
    return v4

    .line 1963
    :cond_6
    return v0

    .line 1968
    .end local v0    # "immState":I
    .end local v5    # "currentCoords":[F
    .end local v6    # "newCoords":[F
    :cond_7
    goto/16 :goto_0

    .line 1822
    :pswitch_1
    iget-object v5, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2500(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1824
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->refreshTimer()V

    .line 1825
    return v4

    .line 1828
    :cond_8
    iget-object v5, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v5}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2600(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)Z

    move-result v5

    const/16 v6, 0x64

    if-eqz v5, :cond_b

    .line 1830
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmCoord()[F

    move-result-object v5

    .line 1831
    .restart local v5    # "currentCoords":[F
    new-array v1, v1, [F

    aget v7, v5, v4

    aput v7, v1, v4

    aget v7, v5, v3

    sub-float/2addr v7, v0

    aput v7, v1, v3

    move-object v0, v1

    .line 1832
    .local v0, "newCoords":[F
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v1, v0}, Landroid/car/xpeng/imm/ImmCoordManager;->isOverSoftLimit([F)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1834
    return v4

    .line 1837
    :cond_9
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v1

    .line 1838
    .restart local v1    # "immState":I
    if-nez v1, :cond_a

    .line 1839
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->setImmMovingSpeed(I)I

    .line 1840
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    .line 1841
    const-string v6, "CarImmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setImmVoiceAwakenRotation: \u4e3b\u9a7e\u62df\u4eba\u52a8\u4f5c\u89e6\u53d1Rz-5, \u79fb\u52a8\u5230: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v6, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v6, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1843
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2700(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1844
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1846
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->refreshTimer()V

    .line 1847
    return v4

    .line 1850
    :cond_a
    return v1

    .line 1855
    .end local v0    # "newCoords":[F
    .end local v1    # "immState":I
    .end local v5    # "currentCoords":[F
    :cond_b
    const-string v5, "CarImmService"

    const-string v7, "setImmVoiceAwakenRotation: \u90fd\u6ca1\u6fc0\u6d3b\uff0c\u6b64\u65f6\u6fc0\u6d3b\u4e3b\u9a7e\uff0c\u8ba1\u7b97\u76ee\u6807\u5750\u6807 Ry+5, Rz-5\u5c1d\u8bd5\u504f\u8f6c"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmCoord()[F

    move-result-object v5

    .line 1857
    .restart local v5    # "currentCoords":[F
    new-array v7, v1, [F

    aget v8, v5, v4

    add-float/2addr v8, v0

    aput v8, v7, v4

    aget v8, v5, v3

    sub-float/2addr v8, v0

    aput v8, v7, v3

    .line 1858
    .local v7, "newCoords":[F
    const-string v8, "CarImmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setImmVoiceAwakenRotation: \u4e3b\u9a7e\u62df\u4eba\u52a8\u4f5c\u89e6\u53d1Ry+5, Rz-5, \u76ee\u6807\u70b9: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v8, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v8, v7}, Landroid/car/xpeng/imm/ImmCoordManager;->isOverSoftLimit([F)I

    move-result v8

    if-ne v8, v1, :cond_d

    .line 1861
    const-string v8, "CarImmService"

    const-string v9, "setImmVoiceAwakenRotation: \u4ec5Rz\u8d85\u9650, Ry\u6ca1\u8d85, \u4ec5\u79fb\u52a8Ry"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v8, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v8, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v8

    .line 1863
    .local v8, "immState":I
    if-nez v8, :cond_c

    .line 1864
    new-array v1, v1, [F

    aget v9, v5, v4

    add-float/2addr v9, v0

    aput v9, v1, v4

    aget v0, v5, v3

    aput v0, v1, v3

    move-object v0, v1

    .line 1865
    .local v0, "mCoords":[F
    const-string v1, "CarImmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setImmVoiceAwakenRotation: \u53ef\u4ee5\u8fd0\u52a8, \u4e3b\u9a7e\u62df\u4eba\u52a8\u4f5c\u89e6\u53d1, \u4ec5\u79fb\u52a8Ry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->setImmMovingSpeed(I)I

    .line 1867
    invoke-direct {p0, v0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    .line 1868
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1869
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v1, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1871
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->startTimer()V

    .line 1872
    return v4

    .line 1874
    .end local v0    # "mCoords":[F
    :cond_c
    return v8

    .line 1876
    .end local v8    # "immState":I
    :cond_d
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmCoordManager:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-virtual {v0, v7}, Landroid/car/xpeng/imm/ImmCoordManager;->isOverSoftLimit([F)I

    move-result v0

    if-nez v0, :cond_f

    .line 1878
    const-string v0, "CarImmService"

    const-string v1, "setImmVoiceAwakenRotation: \u90fd\u6ca1\u8d85\u9650\u4f4d"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v0

    .line 1880
    .local v0, "immState":I
    if-nez v0, :cond_e

    .line 1881
    const-string v1, "CarImmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImmVoiceAwakenRotation: \u53ef\u4ee5\u8fd0\u52a8, \u4e3b\u9a7e\u62df\u4eba\u52a8\u4f5c\u89e6\u53d1Ry+5, Rz-5, \u79fb\u52a8\u5230: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-direct {p0, v6}, Lcom/android/car/xpeng/imm/CarImmService;->setImmMovingSpeed(I)I

    .line 1883
    invoke-direct {p0, v7}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCoord([F)I

    .line 1884
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->updateCurrentPriority(I)V

    .line 1885
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v1, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1887
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->startTimer()V

    .line 1888
    return v4

    .line 1890
    :cond_e
    return v0

    .line 1894
    .end local v0    # "immState":I
    .end local v5    # "currentCoords":[F
    .end local v7    # "newCoords":[F
    :cond_f
    nop

    .line 1972
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTimer()V
    .locals 4

    .line 296
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->isTimerRunning:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->isTimerRunning:Z

    .line 299
    const-string v0, "CarImmService"

    const-string v1, "timer started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 312
    iget-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->isTimerRunning:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->isTimerRunning:Z

    .line 315
    const-string v0, "CarImmService"

    const-string v1, "timer stopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    return-void
.end method

.method public syncImmBaseOrientation(I)I
    .locals 7
    .param p1, "mode"    # I

    .line 1494
    const-string v0, "CarImmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncImmBaseOrientation: mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v0, -0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1510
    return v0

    .line 1507
    :pswitch_0
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2300(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1508
    goto :goto_0

    .line 1504
    :pswitch_1
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2200(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1505
    goto :goto_0

    .line 1501
    :pswitch_2
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2100(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;Z)V

    .line 1502
    goto :goto_0

    .line 1499
    :pswitch_3
    nop

    .line 1513
    :goto_0
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->isOtherImmAiActivate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1514
    const-string v0, "CarImmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncImmBaseOrientation: \u5b58\u5728\u5176\u4ed6\u667a\u80fd\u671d\u5411\u6fc0\u6d3b\u4e2d, mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return v1

    .line 1519
    :cond_0
    iget-object v2, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->canExecuteMovement(I)I

    move-result v2

    .line 1520
    .local v2, "immState":I
    if-nez v2, :cond_2

    .line 1521
    iget-object v4, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v4}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$2400(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;)I

    move-result v4

    .line 1522
    .local v4, "orientation":I
    const/4 v5, -0x1

    .line 1523
    .local v5, "ret":I
    packed-switch v4, :pswitch_data_1

    .line 1540
    return v0

    .line 1535
    :pswitch_4
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmCenterOrientation()I

    move-result v5

    .line 1536
    iget-object v6, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v6, v3}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1537
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1538
    goto :goto_1

    .line 1530
    :pswitch_5
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmPassengerOrientation()I

    move-result v5

    .line 1531
    iget-object v3, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1532
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1533
    goto :goto_1

    .line 1525
    :pswitch_6
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->setImmDriverOrientation()I

    move-result v5

    .line 1526
    iget-object v3, p0, Lcom/android/car/xpeng/imm/CarImmService;->mImmMotionStateMachine:Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;

    invoke-static {v3, v1}, Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;->access$1800(Lcom/android/car/xpeng/imm/CarImmService$ImmMotionStateMachine;I)V

    .line 1527
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/android/car/xpeng/imm/CarImmService;->notifyCarImmStatusChanged(I)V

    .line 1528
    nop

    .line 1542
    :goto_1
    if-nez v5, :cond_1

    .line 1543
    return v1

    .line 1545
    :cond_1
    return v0

    .line 1548
    .end local v4    # "orientation":I
    .end local v5    # "ret":I
    :cond_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public triggerImmTouchVib(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 1640
    invoke-direct {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmMainState()I

    move-result v0

    .line 1641
    .local v0, "mainState":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1642
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService;->setImmTouchMode(I)I

    move-result v1

    return v1

    .line 1644
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/xpeng/imm/CarImmService;->getImmState()I

    move-result v1

    return v1
.end method

.method public unregisterListener(Landroid/car/xpeng/imm/ICarImmListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/xpeng/imm/ICarImmListener;

    .line 458
    iget-object v0, p0, Lcom/android/car/xpeng/imm/CarImmService;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 459
    return-void
.end method
