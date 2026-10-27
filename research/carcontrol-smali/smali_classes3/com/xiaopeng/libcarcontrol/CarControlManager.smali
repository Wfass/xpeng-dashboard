.class public final Lcom/xiaopeng/libcarcontrol/CarControlManager;
.super Ljava/lang/Object;
.source "CarControlManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarControlManager"

.field private static volatile sInstance:Lcom/xiaopeng/libcarcontrol/CarControlManager;


# instance fields
.field private final mCallbackLock:Ljava/lang/Object;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/libcarcontrol/CarControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHandler:Landroid/os/Handler;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mQuickContentObserver:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    const-string v0, "CarControlManager"

    .line 52
    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CarControl-ContentObserver"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContentHandler:Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->registerObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->getBoolValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacPowerChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacInnerAqChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/libcarcontrol/CarControlManager;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacOutTempChanged(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacFrontDefrostChanged(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacBackDefrostChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacWindModeColorChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacAirPurgeModeChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacBlowerCtrlType(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleChargeStatusChanged(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleDriveDistanceChanged(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleElecPercentChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacAutoChanged(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleCentralLockChanged(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleDrvSeatOccupied(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handlePsnSeatOccupied(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleCarControlReady(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleDriveModeChanged(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/libcarcontrol/CarControlManager;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/libcarcontrol/CarControlManager;ZI)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleChargePortStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)F
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->getFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/libcarcontrol/CarControlManager;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacDrvTempChanged(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacDrvSyncChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/libcarcontrol/CarControlManager;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacPsnTempChanged(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/libcarcontrol/CarControlManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacPsnSyncChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/libcarcontrol/CarControlManager;Ljava/lang/String;)I
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/libcarcontrol/CarControlManager;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->handleHvacWindLevelChanged(I)V

    return-void
.end method

.method private getBoolValue(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getFloatValue(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/libcarcontrol/CarControlManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->sInstance:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/xiaopeng/libcarcontrol/CarControlManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/xiaopeng/libcarcontrol/CarControlManager;->sInstance:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/xiaopeng/libcarcontrol/CarControlManager;

    invoke-direct {v1, p0}, Lcom/xiaopeng/libcarcontrol/CarControlManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/libcarcontrol/CarControlManager;->sInstance:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->sInstance:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    return-object p0
.end method

.method private getIntValue(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private handleAutoDriveModeChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoMode"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 608
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onAutoDriveModeChanged(Z)V

    goto :goto_0

    .line 610
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleCarControlReady(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReady"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 575
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onCarControlReadyChanged(Z)V

    goto :goto_0

    .line 577
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleCentralLockChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 542
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onCentralLockChanged(Z)V

    goto :goto_0

    .line 544
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleChargePortStateChanged(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftSide",
            "state"
        }
    .end annotation

    .line 597
    invoke-static {p2}, Lcom/xiaopeng/libcarcontrol/ChargePortState;->fromBcmValue(I)Lcom/xiaopeng/libcarcontrol/ChargePortState;

    move-result-object p2

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 600
    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onChargePortStateChanged(ZLcom/xiaopeng/libcarcontrol/ChargePortState;)V

    goto :goto_0

    .line 602
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleChargeStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 548
    invoke-static {p1}, Lcom/xiaopeng/libcarcontrol/ChargeStatus;->fromVcuChargeStatus(I)Lcom/xiaopeng/libcarcontrol/ChargeStatus;

    move-result-object p1

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 551
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onChargeStatusChanged(Lcom/xiaopeng/libcarcontrol/ChargeStatus;)V

    goto :goto_0

    .line 553
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDriveDistanceChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 591
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onDriveDistanceChanged(I)V

    goto :goto_0

    .line 593
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDriveModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 616
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onDriveModeChanged(I)V

    goto :goto_0

    .line 618
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDrvSeatOccupied(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 559
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onDrvSeatOccupiedChanged(Z)V

    goto :goto_0

    .line 561
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleElecPercentChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 583
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onElecPercentChanged(I)V

    goto :goto_0

    .line 585
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacAirPurgeModeChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 510
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onAirPurgeModeChanged(Z)V

    goto :goto_0

    .line 512
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacAutoChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAuto"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 438
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacAutoChanged(Z)V

    goto :goto_0

    .line 440
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacBackDefrostChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 494
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacBackDefrostChanged(Z)V

    goto :goto_0

    .line 496
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacBlowerCtrlType(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAuto"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 534
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacBlowerCtrlTypeChange(Z)V

    goto :goto_0

    .line 536
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacDrvSyncChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSync"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 462
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacDriverSyncChanged(Z)V

    goto :goto_0

    .line 464
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacDrvTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 454
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacDriverTempChanged(F)V

    goto :goto_0

    .line 456
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacFrontDefrostChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 486
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacFrontDefrostChanged(Z)V

    goto :goto_0

    .line 488
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacInnerAqChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aqValue"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 518
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacInnerAqChanged(I)V

    goto :goto_0

    .line 520
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacOutTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 526
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacExternalTempChanged(F)V

    goto :goto_0

    .line 528
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacPowerChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPowerOn"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 430
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacPowerChanged(Z)V

    goto :goto_0

    .line 432
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacPsnSyncChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSync"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 478
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacPsnSyncChanged(Z)V

    goto :goto_0

    .line 480
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacPsnTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 470
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacPsnTempChanged(F)V

    goto :goto_0

    .line 472
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacWindLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 446
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacFanSpeedChanged(I)V

    goto :goto_0

    .line 448
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleHvacWindModeColorChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 502
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onHvacWindModeColorChanged(I)V

    goto :goto_0

    .line 504
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handlePsnSeatOccupied(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "occupied"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libcarcontrol/CarControlCallback;

    .line 567
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libcarcontrol/CarControlCallback;->onPsnSeatOccupiedChanged(Z)V

    goto :goto_0

    .line 569
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private registerObserver()V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;

    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/libcarcontrol/CarControlManager$1;-><init>(Lcom/xiaopeng/libcarcontrol/CarControlManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mQuickContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 723
    new-instance v0, Lcom/xiaopeng/libcarcontrol/CarControlManager$2;

    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/libcarcontrol/CarControlManager$2;-><init>(Lcom/xiaopeng/libcarcontrol/CarControlManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mQuickContentObserver:Landroid/database/ContentObserver;

    .line 754
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "left_charge_port_state"

    .line 755
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mQuickContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 754
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "right_charge_port_state"

    .line 758
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mQuickContentObserver:Landroid/database/ContentObserver;

    .line 757
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarControlManager"

    const-string v2, "register ContentObserver ac/dc port failed"

    .line 761
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 778
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mQuickContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public closeChargePort(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftSide"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "left_charge_port"

    goto :goto_0

    :cond_0
    const-string p1, "right_charge_port"

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public getChargePortState(Z)Lcom/xiaopeng/libcarcontrol/ChargePortState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftSide"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "left_charge_port_state"

    goto :goto_0

    :cond_0
    const-string p1, "right_charge_port_state"

    :goto_0
    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 397
    invoke-static {p1}, Lcom/xiaopeng/libcarcontrol/ChargePortState;->fromBcmValue(I)Lcom/xiaopeng/libcarcontrol/ChargePortState;

    move-result-object p1

    return-object p1
.end method

.method public getChargeStatus()Lcom/xiaopeng/libcarcontrol/ChargeStatus;
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charge_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 364
    invoke-static {v0}, Lcom/xiaopeng/libcarcontrol/ChargeStatus;->fromVcuChargeStatus(I)Lcom/xiaopeng/libcarcontrol/ChargeStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDriveDistance()I
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "available_distance"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDriveMode()I
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drive_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getElecPercent()I
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_percent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacAirPurgeMode()Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_air_purge_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHvacBlowerCtrlType()Z
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_blower_ctrl_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHvacDriverTemp()F
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_drv_temp"

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getHvacExternalTemp()F
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_out_temp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getHvacFanSpeed()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_wind_level"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacInnerAq()I
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_pm25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHvacPsnTemp()F
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_psn_temp"

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getHvacWindModeColor()I
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_wind_mode_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isCarControlReady()Z
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cc_ready"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCentralLockOn()Z
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "central_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDrvSeatOccupied()Z
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drv_occupied"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacAutoMode()Z
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_auto"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacBackDefrostEnable()Z
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_back_defrost"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacDriverSyncEnabled()Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_drv_sync"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacFrontDefrostEnable()Z
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_front_defrost"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacPowerOn()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHvacPsnSyncEnabled()Z
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_psn_sync"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPsnSeatOccupied()Z
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psn_occupied"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public openChargePort(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftSide"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "left_charge_port"

    goto :goto_0

    :cond_0
    const-string p1, "right_charge_port"

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public openRearTrunk()Z
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_rear_trunk"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/xiaopeng/libcarcontrol/CarControlCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public registerSystemObserver()Z
    .locals 4

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register ContentObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarControlManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->unregisterContentObserver()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public resetChargePort(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftSide"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v1, "reset_charge_port"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setCentralLock(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "central_lock_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setDriveMode(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drive_mode_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setHvacBackDefrostEnable(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_back_defrost_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setHvacDriverStep(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUp"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_drv_temp_step_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setHvacDriverSyncMode(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_drv_sync_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setHvacDriverTemp(F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_drv_temp_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p1

    return p1
.end method

.method public setHvacFrontDefrostEnable(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_front_defrost_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setHvacPower(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_power_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setHvacPsnStep(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUp"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_psn_temp_step_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setHvacPsnSyncMode(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_psn_sync_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setHvacPsnTemp(F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hvac_psn_temp_set"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p1

    return p1
.end method

.method public unregisterCallback(Lcom/xiaopeng/libcarcontrol/CarControlCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
