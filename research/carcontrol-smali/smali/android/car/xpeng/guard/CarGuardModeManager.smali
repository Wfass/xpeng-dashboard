.class public final Landroid/car/xpeng/guard/CarGuardModeManager;
.super Landroid/car/CarManagerBase;
.source "CarGuardModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;,
        Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;
    }
.end annotation


# static fields
.field public static final CAR_GUARD_MODE_LEVEL_0:I = 0x0

.field public static final CAR_GUARD_MODE_LEVEL_1:I = 0x1

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_INTELLIGENT_PARK:I = 0xd

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_REASON_IG_ON:I = 0x4

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_REASON_POWER_LOW:I = 0x2

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_REASON_POWER_RECOVERY:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_REASON_REMOTE_CONTROL:I = 0x5

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_REASON_REPAIR_MODE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_REASON_TIMEOUT:I = 0x1

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_REASON_USER:I = 0x0

.field public static final CAR_GUARD_MODE_LEVEL_CHANGED_REBOOT_RECOVERY:I = 0xc

.field public static final CAR_GUARD_MODE_LEVEL_SET_REASON_POWER_LOW:I = 0x1

.field public static final CAR_GUARD_MODE_SCENE_ORIT_CHANGED_FRONT:I = 0x1

.field public static final CAR_GUARD_MODE_SCENE_ORIT_CHANGED_INVALID:I = 0x0

.field public static final CAR_GUARD_MODE_SCENE_ORIT_CHANGED_LEFT:I = 0x3

.field public static final CAR_GUARD_MODE_SCENE_ORIT_CHANGED_REAR:I = 0x2

.field public static final CAR_GUARD_MODE_SCENE_ORIT_CHANGED_RIGHT:I = 0x4

.field public static final CAR_GUARD_MODE_SENSITIVITY_HIGH:I = 0x3

.field public static final CAR_GUARD_MODE_SENSITIVITY_LOW:I = 0x1

.field public static final CAR_GUARD_MODE_SENSITIVITY_MID:I = 0x2

.field public static final CAR_GUARD_MODE_SENSITIVITY_SET_ERROR_SWITCH_OFF:I = -0x1

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarGuardModeManager"


# instance fields
.field private mCarGuardModeActive:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

.field private mCarGuardModeLevel:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCarGuardeModeSceneOrientation:I

.field private final mCarListenerToService:Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;

.field private final mCarListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 169
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    .line 254
    invoke-static {p2}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/guard/ICarGuardModeSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    .line 255
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mMainHandler:Landroid/os/Handler;

    .line 256
    new-instance p1, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;

    invoke-direct {p1, p0}, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;-><init>(Landroid/car/xpeng/guard/CarGuardModeManager;)V

    iput-object p1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListenerToService:Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;

    return-void
.end method

.method static synthetic access$000(Landroid/car/xpeng/guard/CarGuardModeManager;Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/xpeng/guard/CarGuardModeManager;->dispatchCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/xpeng/guard/CarGuardModeManager;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/xpeng/guard/CarGuardModeManager;->dispatchCarGuardWork(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/xpeng/guard/CarGuardModeManager;ILjava/util/Map;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager;->dispatchOtherStatistics(ILjava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Landroid/car/xpeng/guard/CarGuardModeManager;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager;->dispatchCarGuardModeLevelChanged(II)V

    return-void
.end method

.method static synthetic access$400(Landroid/car/xpeng/guard/CarGuardModeManager;ZI)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager;->dispatchCarGuardModeActiveChanged(ZI)V

    return-void
.end method

.method static synthetic access$500(Landroid/car/xpeng/guard/CarGuardModeManager;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/xpeng/guard/CarGuardModeManager;->dispatchCarGuardModeSceneOrientationChanged(I)V

    return-void
.end method

.method private dispatchCarGuardModeActiveChanged(ZI)V
    .locals 2

    .line 553
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$ocxpKmhFjyEr1KexS8TSfqUAZQs;

    invoke-direct {v1, p0, p1, p2}, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$ocxpKmhFjyEr1KexS8TSfqUAZQs;-><init>(Landroid/car/xpeng/guard/CarGuardModeManager;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 2

    .line 498
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$72BHevPRk18qP6tBnKA6f1ZQhHo;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$72BHevPRk18qP6tBnKA6f1ZQhHo;-><init>(Landroid/car/xpeng/guard/CarGuardModeManager;Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchCarGuardModeLastValue(Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CarGuardModeManager"

    const-string v1, "dispatchCarGuardModeLastValue: "

    .line 422
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeLevel:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeLevel:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeLevelChanged(II)V

    .line 426
    :cond_0
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeActive:Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeActive:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeActiveChanged(ZI)V

    .line 429
    :cond_1
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAction()Landroid/car/xpeng/Scene$Action;

    move-result-object v0

    sget-object v1, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    if-ne v0, v1, :cond_2

    .line 430
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-interface {p1, v0}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    :cond_2
    return-void
.end method

.method private dispatchCarGuardModeLevelChanged(II)V
    .locals 2

    .line 539
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$1AfWZN0WglYojZChlZRrq4lhdCA;

    invoke-direct {v1, p0, p1, p2}, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$1AfWZN0WglYojZChlZRrq4lhdCA;-><init>(Landroid/car/xpeng/guard/CarGuardModeManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchCarGuardModeSceneOrientationChanged(I)V
    .locals 2

    .line 566
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$LyKGnsvo1mmQ0DaoKRKSbT5Wa5M;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$LyKGnsvo1mmQ0DaoKRKSbT5Wa5M;-><init>(Landroid/car/xpeng/guard/CarGuardModeManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchCarGuardWork(Z)V
    .locals 2

    .line 512
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$uSig-te2JeR0rcVvrgX-_TCYUzU;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$uSig-te2JeR0rcVvrgX-_TCYUzU;-><init>(Landroid/car/xpeng/guard/CarGuardModeManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOtherStatistics(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;

    invoke-direct {v1, p0, p1, p2}, Landroid/car/xpeng/guard/-$$Lambda$CarGuardModeManager$tdxQJ-c1uQZNONqacjR18EZeALg;-><init>(Landroid/car/xpeng/guard/CarGuardModeManager;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "guard_mode"

    return-object v0
.end method


# virtual methods
.method public getCarGuardModeLevel()I
    .locals 4

    const-string v0, "CarGuardModeManager"

    .line 304
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    invoke-interface {v1}, Landroid/car/xpeng/guard/ICarGuardModeSvc;->getCarGuardModeLevel()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarGuardModeLevel: e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 308
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarGuardModeLevel: level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCarGuardModeSensitivity()I
    .locals 4

    const-string v0, "CarGuardModeManager"

    .line 340
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    invoke-interface {v1}, Landroid/car/xpeng/guard/ICarGuardModeSvc;->getCarGuardModeSensitivity()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarGuardModeSensitivity: e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 344
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarGuardModeSensitivity: sens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getCurrentCarGuardModeEvent()Landroid/car/xpeng/guard/CarGuardModeEvent;
    .locals 1

    .line 414
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    invoke-interface {v0}, Landroid/car/xpeng/guard/ICarGuardModeSvc;->getCurrentCarGuardModeEvent()Landroid/car/xpeng/guard/CarGuardModeEvent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 416
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$dispatchCarGuardModeActiveChanged$4$CarGuardModeManager(ZI)V
    .locals 3

    .line 554
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeActive:Landroid/util/Pair;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchCarGuardModeActiveChanged: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v1, :cond_0

    .line 559
    invoke-interface {v1, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeActiveChanged(ZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$dispatchCarGuardModeChanged$0$CarGuardModeManager(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 2

    .line 499
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iput-object p1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchCarGuardModeChanged: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v1, :cond_0

    .line 504
    invoke-interface {v1, p1}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$dispatchCarGuardModeLevelChanged$3$CarGuardModeManager(II)V
    .locals 3

    .line 540
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardModeLevel:Landroid/util/Pair;

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchCarGuardModeLevelChanged: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v1, :cond_0

    .line 545
    invoke-interface {v1, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeLevelChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$dispatchCarGuardModeSceneOrientationChanged$5$CarGuardModeManager(I)V
    .locals 2

    .line 567
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    iput p1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarGuardeModeSceneOrientation:I

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchCarGuardModeSceneOrientationChanged: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v1, :cond_0

    .line 572
    invoke-interface {v1, p1}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeSceneOrientationChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$dispatchCarGuardWork$1$CarGuardModeManager(Z)V
    .locals 2

    .line 513
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchCarGuardWork: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v1, :cond_0

    .line 517
    invoke-interface {v1, p1}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeWork(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$dispatchOtherStatistics$2$CarGuardModeManager(ILjava/util/Map;)V
    .locals 2

    .line 526
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchOtherStatistics: client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v1, :cond_0

    .line 530
    invoke-interface {v1, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onOtherStatistics(ILjava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 261
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 263
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/guard/CarGuardModeManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "guard_mode"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/guard/ICarGuardModeSvc;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {p0, v0}, Landroid/car/xpeng/guard/CarGuardModeManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerCarGuardModeListener(Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;)V
    .locals 4

    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    iget-object v2, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListenerToService:Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/guard/ICarGuardModeSvc;->registerCarGuardModeListener(Landroid/car/xpeng/guard/ICarGuardModeListener;)V

    .line 361
    :cond_0
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-direct {p0, p1}, Landroid/car/xpeng/guard/CarGuardModeManager;->dispatchCarGuardModeLastValue(Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;)V

    :cond_1
    const-string v1, "CarGuardModeManager"

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCarGuardModeListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
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

    .line 369
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setCarGuardModeLevel(I)I
    .locals 1

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/guard/ICarGuardModeSvc;->setCarGuardModeLevel(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 290
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setCarGuardModeSensitivity(I)I
    .locals 1

    .line 323
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/guard/ICarGuardModeSvc;->setCarGuardModeSensitivity(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 325
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized setCarGuardThresholdJson(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "CarGuardModeManager"

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCarGuardThresholdJson: json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :try_start_1
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/guard/ICarGuardModeSvc;->setCarGuardThresholdJson(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterCarGuardModeListener(Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;)V
    .locals 4

    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 381
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 383
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mService:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    iget-object v2, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListenerToService:Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/guard/ICarGuardModeSvc;->unregisterCarGuardModeListener(Landroid/car/xpeng/guard/ICarGuardModeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 385
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v1, "CarGuardModeManager"

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCarGuardModeListener: listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mListeners.size="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/guard/CarGuardModeManager;->mCarListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 389
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
