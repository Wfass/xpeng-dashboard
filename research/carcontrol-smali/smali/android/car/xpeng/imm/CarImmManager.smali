.class public final Landroid/car/xpeng/imm/CarImmManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarImmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;,
        Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;,
        Landroid/car/xpeng/imm/CarImmManager$PropertyId;
    }
.end annotation


# static fields
.field public static final CAR_IMM_SERVICE:Ljava/lang/String; = "imm"

.field private static final DBG:Z = false

.field public static final ID_IMM_ACTION_SCRIPT_ID:I = 0x2140520e

.field public static final ID_IMM_COORDINATE:I = 0x2161520f

.field public static final ID_IMM_COORDINATE_Y:I = 0x21605204

.field public static final ID_IMM_COORDINATE_Z:I = 0x21605205

.field public static final ID_IMM_DEFAULT_POS_CMD:I = 0x21405209

.field public static final ID_IMM_EMER_STOP:I = 0x2140520d

.field public static final ID_IMM_ERROR_RESET:I = 0x2140520b

.field public static final ID_IMM_MACH_ZERO_RESET:I = 0x2140520c

.field public static final ID_IMM_MAIN_STATE:I = 0x21405201

.field public static final ID_IMM_MOVING_SPEED:I = 0x21405208

.field public static final ID_IMM_MOVING_STATE:I = 0x21405203

.field public static final ID_IMM_POWER_OFF:I = 0x2140520a

.field public static final ID_IMM_SOFT_STOP:I = 0x21405211

.field public static final ID_IMM_SUB_STATE:I = 0x21405202

.field public static final ID_IMM_TOUCH_MODE:I = 0x21405207

.field public static final ID_IMM_TOUCH_VIB:I = 0x21405206

.field public static final IMM_AI_ORIENTATION_AVM_MODE:I = 0x3

.field public static final IMM_AI_ORIENTATION_DRIVER_PRIORITY_MODE:I = 0x2

.field public static final IMM_AI_ORIENTATION_NOMAL_MODE:I = 0x0

.field public static final IMM_AI_ORIENTATION_RACER_MODE:I = 0x1

.field public static final IMM_MACH_ZERO_REQ:I = 0x1

.field public static final IMM_MOVING_DOWN:I = 0x2

.field public static final IMM_MOVING_LEFT:I = 0x3

.field public static final IMM_MOVING_RIGHT:I = 0x4

.field public static final IMM_MOVING_UP:I = 0x1

.field public static final IMM_ORIENTATION_CENTER:I = 0x2

.field public static final IMM_ORIENTATION_DRIVER:I = 0x0

.field public static final IMM_ORIENTATION_LEFT:I = 0x3

.field public static final IMM_ORIENTATION_PASSENGER:I = 0x1

.field public static final IMM_ORIENTATION_RIGHT:I = 0x4

.field public static final IMM_SERVICE_STATE_ARM_FAULT:I = 0x29

.field public static final IMM_SERVICE_STATE_BLOCK_PROTECTION:I = 0x25

.field public static final IMM_SERVICE_STATE_BUS_TIMEOUT:I = 0x2a

.field public static final IMM_SERVICE_STATE_CALIBRATE_FAILED:I = 0x2b

.field public static final IMM_SERVICE_STATE_CALIBRATING:I = 0x1d

.field public static final IMM_SERVICE_STATE_DISCONNECTED:I = 0x27

.field public static final IMM_SERVICE_STATE_ELECTRIC_FAULT:I = 0x32

.field public static final IMM_SERVICE_STATE_EMERGENCY_BRAKE:I = 0x22

.field public static final IMM_SERVICE_STATE_ENCODER_FAULT:I = 0x31

.field public static final IMM_SERVICE_STATE_ERROR:I = -0x1

.field public static final IMM_SERVICE_STATE_EXTREME_OVERHEAT:I = 0x2c

.field public static final IMM_SERVICE_STATE_HARDWARE_FAULT:I = 0x28

.field public static final IMM_SERVICE_STATE_INIT:I = 0xd

.field public static final IMM_SERVICE_STATE_JOINT_OVERHEAT:I = 0x21

.field public static final IMM_SERVICE_STATE_MOTOR_FAULT:I = 0x30

.field public static final IMM_SERVICE_STATE_NORMAL:I = 0xe

.field public static final IMM_SERVICE_STATE_ORIENTATION_CENTER_ARRIVED:I = 0xb

.field public static final IMM_SERVICE_STATE_ORIENTATION_CENTER_UPDATED:I = 0xc

.field public static final IMM_SERVICE_STATE_ORIENTATION_DRIVER_ARRIVED:I = 0x9

.field public static final IMM_SERVICE_STATE_ORIENTATION_DRIVER_UPDATED:I = 0x7

.field public static final IMM_SERVICE_STATE_ORIENTATION_PASSENGER_ARRIVED:I = 0xa

.field public static final IMM_SERVICE_STATE_ORIENTATION_PASSENGER_UPDATED:I = 0x8

.field public static final IMM_SERVICE_STATE_OUT_OF_RY_MAX:I = 0x1

.field public static final IMM_SERVICE_STATE_OUT_OF_RY_MIN:I = 0x2

.field public static final IMM_SERVICE_STATE_OUT_OF_RZ_MAX:I = 0x3

.field public static final IMM_SERVICE_STATE_OUT_OF_RZ_MIN:I = 0x4

.field public static final IMM_SERVICE_STATE_OVERHEAT:I = 0x24

.field public static final IMM_SERVICE_STATE_OVERSPEED_SHAKE_ERROR:I = 0x2f

.field public static final IMM_SERVICE_STATE_PARAM_LOAD_ERROR:I = 0x2d

.field public static final IMM_SERVICE_STATE_POWER_FAULT:I = 0x26

.field public static final IMM_SERVICE_STATE_PRESS_PROTECTION:I = 0x20

.field public static final IMM_SERVICE_STATE_PROCESS_CONFLICT:I = 0x5

.field public static final IMM_SERVICE_STATE_SCRIPT_MOVING:I = 0x12

.field public static final IMM_SERVICE_STATE_SINGLE_MOVING:I = 0x14

.field public static final IMM_SERVICE_STATE_SOFTWARE_FAULT:I = 0x34

.field public static final IMM_SERVICE_STATE_SOFT_REBOOT:I = 0x6

.field public static final IMM_SERVICE_STATE_SUCCESS:I = 0x0

.field public static final IMM_SERVICE_STATE_TEMPERATURE_SENSOR_FAULT:I = 0x33

.field public static final IMM_SERVICE_STATE_TORQUE_LIMIT:I = 0xf

.field public static final IMM_SERVICE_STATE_UNLOCK_DRAGGING:I = 0x1e

.field public static final IMM_SERVICE_STATE_UNLOCK_DRAG_FINISHED:I = 0x1f

.field public static final IMM_SERVICE_STATE_WAIT_CALIBRATE:I = 0x35

.field public static final IMM_TOUCH_MODE_DISABLE:I = 0x0

.field public static final IMM_TOUCH_MODE_MIDDLE:I = 0x2

.field public static final IMM_TOUCH_MODE_SMALL:I = 0x1

.field public static final IMM_TOUCH_MODE_STRONG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CarImmManager"


# instance fields
.field private final mCarImmManagerListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarListenerToService:Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;

.field private final mImmPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private mService:Landroid/car/xpeng/imm/ICarImmSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p4, 0x0

    const-string p5, "CarImmManager"

    .line 606
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 41
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    .line 576
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x10

    new-array p2, p2, [Ljava/lang/Integer;

    const p5, 0x21405201

    .line 577
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p2, p4

    const p4, 0x21405202

    .line 578
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p2, p5

    const p4, 0x21405203

    .line 579
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x2

    aput-object p4, p2, p5

    const p4, 0x2161520f

    .line 580
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x3

    aput-object p4, p2, p5

    const p4, 0x21605204

    .line 581
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x4

    aput-object p4, p2, p5

    const p4, 0x21605205

    .line 582
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x5

    aput-object p4, p2, p5

    const p4, 0x21405207

    .line 583
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x6

    aput-object p4, p2, p5

    const p4, 0x21405206

    .line 584
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x7

    aput-object p4, p2, p5

    const p4, 0x21405208

    .line 585
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x8

    aput-object p4, p2, p5

    const p4, 0x21405209

    .line 586
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0x9

    aput-object p4, p2, p5

    const p4, 0x2140520c

    .line 587
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xa

    aput-object p4, p2, p5

    const p4, 0x2140520d

    .line 588
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xb

    aput-object p4, p2, p5

    const p4, 0x2140520a

    .line 589
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xc

    aput-object p4, p2, p5

    const p4, 0x2140520b

    .line 590
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xd

    aput-object p4, p2, p5

    const p4, 0x2140520e

    .line 591
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xe

    aput-object p4, p2, p5

    const p4, 0x21405211

    .line 592
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/16 p5, 0xf

    aput-object p4, p2, p5

    .line 576
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/xpeng/imm/CarImmManager;->mImmPropertyIds:Landroid/util/ArraySet;

    .line 607
    invoke-static {p3}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    .line 608
    new-instance p1, Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;

    invoke-direct {p1, p0}, Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;-><init>(Landroid/car/xpeng/imm/CarImmManager;)V

    iput-object p1, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarListenerToService:Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;

    .line 609
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/xpeng/imm/CarImmManager;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/xpeng/imm/CarImmManager;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/car/xpeng/imm/CarImmManager;->dispatchImmStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/xpeng/imm/CarImmManager;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/car/xpeng/imm/CarImmManager;->dispatchImmAvmStateChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/xpeng/imm/CarImmManager;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/car/xpeng/imm/CarImmManager;->dispatchImmVoiceAwakenStateChanged(Z)V

    return-void
.end method

.method private dispatchImmAvmStateChanged(Z)V
    .locals 2

    .line 725
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$NvUE62yOzO0XM7NgPMZyD6osl1w;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$NvUE62yOzO0XM7NgPMZyD6osl1w;-><init>(Landroid/car/xpeng/imm/CarImmManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchImmStateChanged(I)V
    .locals 2

    .line 712
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$2qQMwHK2nemJbDs4__zx-__W8kY;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$2qQMwHK2nemJbDs4__zx-__W8kY;-><init>(Landroid/car/xpeng/imm/CarImmManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchImmVoiceAwakenStateChanged(Z)V
    .locals 2

    .line 738
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$3WzsXuyAPMP-SQoZoiOP_nyo0Tk;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$3WzsXuyAPMP-SQoZoiOP_nyo0Tk;-><init>(Landroid/car/xpeng/imm/CarImmManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "imm"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getImmAvmMode()Z
    .locals 3

    .line 1069
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmAroundViewMonitorMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmAvmMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarImmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getImmDriverPriorityMode()Z
    .locals 3

    .line 1055
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmDriverPriorityMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmDriverPriorityMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarImmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getImmOrientation()I
    .locals 3

    .line 908
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmOrientation()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarImmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getImmOrientationCoord([F[F[F)I
    .locals 1

    .line 927
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmOrientationCoord([F[F[F)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 930
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getImmCoordinates: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarImmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public getImmRacerMode()Z
    .locals 3

    .line 1041
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmRacerMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmRacerMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarImmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getImmVoiceAwakenMode()Z
    .locals 3

    .line 1083
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmVoiceAwakenMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImmVoiceAwakenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarImmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mImmPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public synthetic lambda$dispatchImmAvmStateChanged$1$CarImmManager(Z)V
    .locals 2

    .line 726
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;

    if-eqz v1, :cond_0

    .line 729
    invoke-interface {v1, p1}, Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;->onCarImmAvmStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$dispatchImmStateChanged$0$CarImmManager(I)V
    .locals 2

    .line 713
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;

    if-eqz v1, :cond_0

    .line 716
    invoke-interface {v1, p1}, Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;->onCarImmStateChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$dispatchImmVoiceAwakenStateChanged$2$CarImmManager(Z)V
    .locals 2

    .line 739
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;

    if-eqz v1, :cond_0

    .line 742
    invoke-interface {v1, p1}, Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;->onCarImmVoiceAwakenStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 614
    invoke-super {p0}, Landroid/car/hardware/CarEcuManager;->onConnected()V

    .line 616
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/imm/CarImmManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "imm"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 618
    invoke-virtual {p0, v0}, Landroid/car/xpeng/imm/CarImmManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerCarImmServiceListener(Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;)V
    .locals 4

    monitor-enter p0

    .line 758
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 759
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    iget-object v2, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarListenerToService:Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/imm/ICarImmSvc;->registerListener(Landroid/car/xpeng/imm/ICarImmListener;)V

    .line 762
    :cond_0
    iget-object v1, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 763
    iget-object v1, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "CarImmManager"

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCarImmServiceListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 770
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 773
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public resetImmOrientationCoord()I
    .locals 3

    .line 1146
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0}, Landroid/car/xpeng/imm/ICarImmSvc;->resetImmOrientationCoord()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetImmOrientationCoord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarImmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public setImmAiOrientation(II)I
    .locals 1

    .line 976
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1, p2}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmAiOrientation(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 979
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setImmAiOrientation: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarImmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmAvmMode(Z)I
    .locals 2

    .line 844
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmAroundViewMonitorMode(Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmAvmMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmDriverPriorityMode(Z)I
    .locals 2

    .line 826
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmDriverPriorityMode(Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmDriverPriorityMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmMachZeroCalibrate()I
    .locals 3

    .line 1130
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmMachZeroCalibrate(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImmMachZeroCalibrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarImmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public setImmMovingDirection(I)I
    .locals 2

    .line 1167
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmMovingDirection(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmMovingDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmMovingDirectionValue(IF)I
    .locals 1

    .line 1190
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1, p2}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmMovingDirectionValue(IF)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1193
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setImmMovingDirectionValue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarImmManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmOrientation(I)I
    .locals 2

    .line 885
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmOrientation(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmOrientationCoord([[F)I
    .locals 3

    const/4 v0, 0x0

    .line 946
    :try_start_0
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 947
    aget-object v1, p1, v1

    const/4 v2, 0x2

    .line 948
    aget-object p1, p1, v2

    .line 949
    iget-object v2, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v2, v0, v1, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmOrientationCoord([F[F[F)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmCoordinates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmRacerMode(Z)I
    .locals 2

    .line 808
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmRacerMode(Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmRacerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmTouchVibPercentage(I)I
    .locals 2

    .line 1027
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmTouchVibPercentage(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmTouchVibPercentage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmVoiceAwakenFinish()I
    .locals 3

    .line 1115
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmVoiceAwakenFinish()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImmVoiceAwakenEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarImmManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public setImmVoiceAwakenMode(Z)I
    .locals 2

    .line 862
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmVoiceAwakenMode(Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmVoiceAwakenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public setImmVoiceAwakenRotation(I)I
    .locals 2

    .line 1101
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmVoiceAwakenRotation(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmVoiceAwakenOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public syncImmBaseOrientation(I)I
    .locals 2

    .line 992
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->syncImmBaseOrientation(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncImmBaseOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public triggerImmTouchVib(I)I
    .locals 2

    .line 1012
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->triggerImmTouchVib(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImmTouchMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarImmManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public declared-synchronized unregisterCarImmServiceListener(Landroid/car/xpeng/imm/CarImmManager$CarImmManagerListener;)V
    .locals 4

    monitor-enter p0

    .line 784
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 785
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 787
    iget-object v1, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Landroid/car/xpeng/imm/CarImmManager;->mService:Landroid/car/xpeng/imm/ICarImmSvc;

    iget-object v2, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarListenerToService:Landroid/car/xpeng/imm/CarImmManager$CarListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/imm/ICarImmSvc;->unregisterListener(Landroid/car/xpeng/imm/ICarImmListener;)V

    :cond_0
    const-string v1, "CarImmManager"

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCarImmServiceListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/imm/CarImmManager;->mCarImmManagerListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 794
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 796
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
