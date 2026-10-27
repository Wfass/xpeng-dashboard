.class public Landroid/car/hardware/power/CarPowerManager;
.super Landroid/car/CarManagerBase;
.source "CarPowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/power/CarPowerManager$CarWakeLock;,
        Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;,
        Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final FORCE_SCREEN_TAG:Ljava/lang/String; = "setXpScreenForceOnOrAdviseOff"

.field private static final TAG:Ljava/lang/String; = "CarPowerManager"

.field public static final WAKELOCK_TAG_SCREEN_OFF_16:I = 0x2

.field public static final WAKELOCK_TAG_SCREEN_OFF_17:I = 0x3

.field public static final WAKELOCK_TAG_SCREEN_OFF_18:I = 0x4

.field public static final WAKELOCK_TAG_SCREEN_OFF_19:I = 0x5

.field public static final WAKELOCK_TAG_SCREEN_OFF_20:I = 0x6

.field public static final WAKELOCK_TAG_SCREEN_OFF_21:I = 0x7

.field public static final WAKELOCK_TAG_SCREEN_OFF_22:I = 0x8

.field public static final WAKELOCK_TAG_SCREEN_OFF_23:I = 0x9

.field public static final WAKELOCK_TAG_SCREEN_OFF_24:I = 0xa

.field public static final WAKELOCK_TAG_SCREEN_OFF_25:I = 0xb

.field public static final WAKELOCK_TAG_SCREEN_OFF_26:I = 0xc

.field public static final WAKELOCK_TAG_SCREEN_OFF_27:I = 0xd

.field public static final WAKELOCK_TAG_SCREEN_OFF_28:I = 0xe

.field public static final WAKELOCK_TAG_SCREEN_OFF_29:I = 0xf

.field public static final WAKELOCK_TAG_SCREEN_OFF_30:I = 0x10

.field public static final WAKELOCK_TAG_SCREEN_OFF_31:I = 0x11

.field public static final WAKELOCK_TAG_SCREEN_OFF_32:I = 0x12

.field public static final WAKELOCK_TAG_SCREEN_OFF_33:I = 0x13

.field public static final WAKELOCK_TAG_SCREEN_OFF_34:I = 0x14

.field public static final WAKELOCK_TAG_SCREEN_OFF_35:I = 0x15

.field public static final WAKELOCK_TAG_SCREEN_OFF_36:I = 0x16

.field public static final WAKELOCK_TAG_SCREEN_OFF_37:I = 0x17

.field public static final WAKELOCK_TAG_SCREEN_OFF_38:I = 0x18

.field public static final WAKELOCK_TAG_SCREEN_OFF_39:I = 0x19

.field public static final WAKELOCK_TAG_SCREEN_OFF_40:I = 0x1a

.field public static final WAKELOCK_TAG_SCREEN_ON:I = 0x1

.field public static final WAKELOCK_TIMEOUT:I = 0x927c0

.field private static sCarLock:Ljava/lang/Object;

.field private static sCarLockHandler:Landroid/os/Handler;

.field private static sCarWakeLock:Landroid/car/hardware/power/CarPowerManager$CarWakeLock;


# instance fields
.field private mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

.field private mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

.field private mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/car/hardware/power/ICarPower;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/car/hardware/power/CarPowerManager;->sCarLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarPowerManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/car/hardware/power/CarPowerManager;->sCarLockHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 45
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    .line 302
    invoke-static {p2}, Landroid/car/hardware/power/ICarPower$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPower;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    return-void
.end method

.method static synthetic access$100(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/ICarPower;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 41
    sget-object v0, Landroid/car/hardware/power/CarPowerManager;->sCarLockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/car/hardware/power/CarPowerManager;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Landroid/car/hardware/power/CarPowerManager;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->updateFutureLocked(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    return-object p0
.end method

.method static synthetic access$600(Landroid/car/hardware/power/CarPowerManager;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static synthetic access$700(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    return-object p0
.end method

.method static synthetic access$800(Landroid/car/hardware/power/CarPowerManager;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->tryFinish(I)V

    return-void
.end method

.method private cleanupFutureLocked()V
    .locals 2

    .line 703
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 707
    iput-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    :cond_1
    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "power"

    return-object v0
.end method

.method private setServiceForListenerLocked(Z)V
    .locals 1

    .line 596
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    if-nez v0, :cond_1

    .line 597
    new-instance v0, Landroid/car/hardware/power/CarPowerManager$1;

    invoke-direct {v0, p0, p1}, Landroid/car/hardware/power/CarPowerManager$1;-><init>(Landroid/car/hardware/power/CarPowerManager;Z)V

    if-eqz p1, :cond_0

    .line 625
    :try_start_0
    iget-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p1, v0}, Landroid/car/hardware/power/ICarPower;->registerListenerWithCompletion(Landroid/car/hardware/power/ICarPowerStateListener;)V

    goto :goto_0

    .line 627
    :cond_0
    iget-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p1, v0}, Landroid/car/hardware/power/ICarPower;->registerListener(Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 629
    :goto_0
    iput-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 631
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private tryFinish(I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 669
    :cond_0
    :try_start_0
    iget-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    invoke-interface {p1, v0}, Landroid/car/hardware/power/ICarPower;->finished(Landroid/car/hardware/power/ICarPowerStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 671
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFutureLocked(I)V
    .locals 1

    .line 677
    invoke-direct {p0}, Landroid/car/hardware/power/CarPowerManager;->cleanupFutureLocked()V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 682
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 683
    new-instance v0, Landroid/car/hardware/power/-$$Lambda$CarPowerManager$MRapa2PEiAi77wzcvKFzSUySzMc;

    invoke-direct {v0, p0}, Landroid/car/hardware/power/-$$Lambda$CarPowerManager$MRapa2PEiAi77wzcvKFzSUySzMc;-><init>(Landroid/car/hardware/power/CarPowerManager;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_0

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->tryFinish(I)V

    :goto_0
    return-void
.end method

.method private validateCarWakeLockParameters(ILjava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public adviseXpScreenOff(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    :try_start_0
    sget-object p1, Landroid/car/hardware/power/CarPowerManager;->sCarLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :try_start_1
    sget-object v0, Landroid/car/hardware/power/CarPowerManager;->sCarWakeLock:Landroid/car/hardware/power/CarPowerManager$CarWakeLock;

    if-nez v0, :cond_0

    .line 534
    monitor-exit p1

    return-void

    .line 536
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    :try_start_2
    invoke-virtual {v0}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 536
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public clearListener()V
    .locals 3

    .line 642
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    const/4 v2, 0x0

    .line 644
    iput-object v2, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    .line 645
    iput-object v2, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 646
    iput-object v2, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    .line 647
    invoke-direct {p0}, Landroid/car/hardware/power/CarPowerManager;->cleanupFutureLocked()V

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string v0, "CarPowerManager"

    const-string/jumbo v1, "unregisterListener: listener was not registered"

    .line 651
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 656
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {v0, v1}, Landroid/car/hardware/power/ICarPower;->unregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 658
    invoke-virtual {p0, v0}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 648
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBootReason()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 489
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {v0}, Landroid/car/hardware/power/ICarPower;->getBootReason()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "CarPowerManager"

    const-string v2, "Exception in getBootReason"

    .line 491
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    new-instance v1, Landroid/car/CarNotConnectedException;

    invoke-direct {v1, v0}, Landroid/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getCanState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCarBatteryState()I
    .locals 1

    .line 552
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {v0}, Landroid/car/hardware/power/ICarPower;->getCarBatteryState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {p0, v0}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getPowerState()I
    .locals 1

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {v0}, Landroid/car/hardware/power/ICarPower;->getPowerState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {p0, v0}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    const/4 v0, 0x6

    return v0
.end method

.method public synthetic lambda$updateFutureLocked$0$CarPowerManager(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 684
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_0

    const-string p1, "CarPowerManager"

    const-string v0, "Exception occurred while waiting for future"

    .line 685
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    :cond_0
    iget-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 689
    :try_start_0
    iget-object p2, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    .line 690
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :try_start_1
    iget-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p1, p2}, Landroid/car/hardware/power/ICarPower;->finished(Landroid/car/hardware/power/ICarPowerStateListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 694
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 690
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public newCarWakeLock(ILjava/lang/String;)Landroid/car/hardware/power/CarPowerManager$CarWakeLock;
    .locals 2

    .line 326
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/power/CarPowerManager;->validateCarWakeLockParameters(ILjava/lang/String;)V

    const-string v0, "CarPowerManager"

    const-string v1, "carwakelock: newCarWakeLock"

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;-><init>(Landroid/car/hardware/power/CarPowerManager;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCarDisconnected()V
    .locals 2

    .line 714
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    .line 715
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 716
    :try_start_0
    iput-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 717
    iput-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    .line 718
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConnected()V
    .locals 2

    .line 307
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 309
    :try_start_0
    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "power"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/hardware/power/ICarPower$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPower;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {p0, v0}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public requestShutdownOnNextSuspend()V
    .locals 1

    .line 422
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {v0}, Landroid/car/hardware/power/ICarPower;->requestShutdownOnNextSuspend()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {p0, v0}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public scheduleNextWakeupTime(I)V
    .locals 1

    .line 442
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {v0, p1}, Landroid/car/hardware/power/ICarPower;->scheduleNextWakeupTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 444
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public scheduleNextWakeupTimeWithUTC(J)V
    .locals 0

    return-void
.end method

.method public setHmiAction()V
    .locals 0

    return-void
.end method

.method public setListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
    .locals 2

    .line 469
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    if-nez v1, :cond_0

    .line 474
    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    const/4 p1, 0x0

    .line 475
    invoke-direct {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->setServiceForListenerLocked(Z)V

    .line 476
    monitor-exit v0

    return-void

    .line 471
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Listener must be cleared first"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 476
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->setListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V

    return-void
.end method

.method public setListenerWithCompletion(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;)V
    .locals 2

    .line 585
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    if-nez v1, :cond_0

    .line 590
    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    const/4 p1, 0x1

    .line 591
    invoke-direct {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->setServiceForListenerLocked(Z)V

    .line 592
    monitor-exit v0

    return-void

    .line 587
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Listener must be cleared first"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setXpScreenForceOn(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    :try_start_0
    sget-object p1, Landroid/car/hardware/power/CarPowerManager;->sCarLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :try_start_1
    sget-object v0, Landroid/car/hardware/power/CarPowerManager;->sCarWakeLock:Landroid/car/hardware/power/CarPowerManager$CarWakeLock;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;

    const/4 v1, 0x1

    const-string/jumbo v2, "setXpScreenForceOnOrAdviseOff"

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;-><init>(Landroid/car/hardware/power/CarPowerManager;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/car/hardware/power/CarPowerManager;->sCarWakeLock:Landroid/car/hardware/power/CarPowerManager$CarWakeLock;

    .line 513
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :try_start_2
    sget-object p1, Landroid/car/hardware/power/CarPowerManager;->sCarWakeLock:Landroid/car/hardware/power/CarPowerManager$CarWakeLock;

    invoke-virtual {p1}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 513
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
