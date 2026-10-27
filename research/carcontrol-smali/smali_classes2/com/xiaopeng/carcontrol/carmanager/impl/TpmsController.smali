.class public Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "TpmsController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/tpms/CarTpmsManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TpmsController"


# instance fields
.field private final mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 33
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private buildTireIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x21601e03

    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21601e02

    .line 555
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21601e05

    .line 556
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21601e04

    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "isSupportTpmsWarning"

    .line 558
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x21411e0c

    .line 559
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const v1, 0x21401e01

    .line 561
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private convertPosToPressureId(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertPosToPressureId Unknown position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TpmsController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x21601e05

    goto :goto_0

    :cond_1
    const p1, 0x21601e04

    goto :goto_0

    :cond_2
    const p1, 0x21601e03

    goto :goto_0

    :cond_3
    const p1, 0x21601e02

    :goto_0
    return p1
.end method

.method private convertPressureIdToPos(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertPressureIdToPos Unknown id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TpmsController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x21601e02
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertTpmsSensorWarningState([I)[Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 523
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    move v2, v1

    .line 524
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 525
    aget v3, p0, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static convertTpmsTempWarningState([I)[Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 531
    array-length v0, p0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    move v2, v1

    .line 532
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 533
    aget v3, p0, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private handleTpmsAbnormalWarning(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;

    .line 485
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;->onTpmsAbnormalWarningStateChanged(Z)V

    goto :goto_1

    .line 487
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTpmsCalibrationStateUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;

    .line 467
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;->onTpmsCalibrationStateChanged(I)V

    goto :goto_0

    .line 469
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

.method private handleTpmsPressureUpdate(IF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "pressure"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->convertPressureIdToPos(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;

    .line 458
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;->onTpmsPressureChanged(IF)V

    goto :goto_0

    .line 461
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

.method private handleTpmsSensorWarningStateChanged([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;

    .line 517
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->convertTpmsSensorWarningState([I)[Z

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;->onTpmsSensorWarningStateChanged([Z)V

    goto :goto_0

    .line 519
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

.method private handleTpmsSystemFault(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;

    .line 476
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;->onTpmsSystemFaultStateChanged(Z)V

    goto :goto_1

    .line 478
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleTpmsTempChanged([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;

    .line 501
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;->onTpmsTempChanged([I)V

    goto :goto_0

    .line 503
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

.method private handleTpmsTempWarning([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;

    .line 493
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->convertTpmsTempWarningState([I)[Z

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;->onTpmsTempWarningStateChanged([Z)V

    goto :goto_0

    .line 495
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

.method private handleTpmsWarningStateChanged([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;

    .line 509
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController$Callback;->onTpmsWarningStateChanged([I)V

    goto :goto_0

    .line 511
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

.method private mockTpmsProperty()V
    .locals 11

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401e01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    .line 359
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 358
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401e06

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 362
    invoke-direct {v3, v1, v5}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 361
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401e07

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 364
    invoke-direct {v3, v1, v5}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 363
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21411e0e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Integer;

    aput-object v5, v7, v4

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v9, 0x2

    aput-object v5, v7, v9

    const/4 v10, 0x3

    aput-object v5, v7, v10

    .line 371
    invoke-direct {v3, v1, v7}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 365
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21411e0d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    new-array v7, v6, [Ljava/lang/Integer;

    aput-object v5, v7, v4

    aput-object v5, v7, v8

    aput-object v5, v7, v9

    aput-object v5, v7, v10

    .line 379
    invoke-direct {v3, v1, v7}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 373
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21411e0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    new-array v7, v6, [Ljava/lang/Integer;

    aput-object v5, v7, v4

    aput-object v5, v7, v8

    aput-object v5, v7, v9

    aput-object v5, v7, v10

    .line 387
    invoke-direct {v3, v1, v7}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 381
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21411e0c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    new-array v7, v6, [Ljava/lang/Integer;

    aput-object v5, v7, v4

    aput-object v5, v7, v8

    aput-object v5, v7, v9

    aput-object v5, v7, v10

    .line 396
    invoke-direct {v3, v1, v7}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 390
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21411e10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    new-array v6, v6, [Ljava/lang/Integer;

    aput-object v5, v6, v4

    aput-object v5, v6, v8

    aput-object v5, v6, v9

    aput-object v5, v6, v10

    .line 404
    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 399
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected addExtPropertyIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x21601e02

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21601e03

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21601e04

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21601e05

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "isSupportTpmsWarning"

    .line 105
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x21411e0c

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const v0, 0x21401e01

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21411e0e

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21411e0d

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21411e0f

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21411e10

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildPropIdList(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 545
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_tire_condition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->buildTireIdList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public calibrateTyrePressure()V
    .locals 3

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/tpms/CarTpmsManager;->calibrateTirePressure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calibrateTyrePressure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TpmsController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected disconnect()V
    .locals 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mPropertyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/tpms/CarTpmsManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "TpmsController"

    .line 123
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected getCarEventCallback()Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    return-object v0
.end method

.method protected getRegisterPropertyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->addExtPropertyIds(Ljava/util/List;)V

    return-object v0
.end method

.method public getTpmsCalibrateState()I
    .locals 4

    const v0, 0x21401e01

    const/4 v1, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureStatus()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTpmsCalibrateState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TpmsController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getTpmsTemperature()[I
    .locals 3

    const v0, 0x21411e0f

    .line 315
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(I)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/tpms/CarTpmsManager;->getAllTireTemperature()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTpmsTemperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TpmsController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 321
    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getTpmsWarningState()[I
    .locals 3

    const v0, 0x21411e0c

    .line 331
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(I)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/tpms/CarTpmsManager;->getAllTirePressureWarnings()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTpmsWarningState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TpmsController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 337
    fill-array-data v0, :array_0

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x7
        0x7
        0x7
        0x7
    .end array-data
.end method

.method public getTyrePressure(I)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->convertPosToPressureId(I)I

    move-result v0

    const-string v1, "TpmsController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getFloatProperty(I)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getTyrePressure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTyrePressure position: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", pressure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method protected handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TpmsController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :sswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleTpmsPressureUpdate(IF)V

    goto :goto_0

    .line 157
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleTpmsSensorWarningStateChanged([I)V

    goto :goto_0

    .line 150
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleTpmsTempChanged([I)V

    goto :goto_0

    .line 147
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleTpmsTempWarning([I)V

    goto :goto_0

    .line 154
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(Landroid/car/hardware/CarPropertyValue;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleTpmsWarningStateChanged([I)V

    goto :goto_0

    .line 144
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleTpmsAbnormalWarning(I)V

    goto :goto_0

    .line 141
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleTpmsSystemFault(I)V

    goto :goto_0

    .line 137
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->handleTpmsCalibrationStateUpdate(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21401e01 -> :sswitch_7
        0x21401e06 -> :sswitch_6
        0x21401e07 -> :sswitch_5
        0x21411e0c -> :sswitch_4
        0x21411e0e -> :sswitch_3
        0x21411e0f -> :sswitch_2
        0x21411e10 -> :sswitch_1
        0x21601e02 -> :sswitch_0
        0x21601e03 -> :sswitch_0
        0x21601e04 -> :sswitch_0
        0x21601e05 -> :sswitch_0
    .end sparse-switch
.end method

.method protected initCarManager(Landroid/car/Car;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    const-string v0, "TpmsController"

    const-string v1, "Init start"

    .line 68
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_tpms"

    .line 70
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/tpms/CarTpmsManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mPropertyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/tpms/CarTpmsManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/tpms/CarTpmsManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const-string p1, "Init end"

    .line 83
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public isTpmsSensorStateWarning()[Z
    .locals 3

    const v0, 0x21411e10

    .line 293
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(I)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/tpms/CarTpmsManager;->getAllSensorStatus()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTpmsSensorWarning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TpmsController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 299
    fill-array-data v0, :array_0

    .line 308
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->convertTpmsSensorWarningState([I)[Z

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public isTpmsSensorWarning()[Z
    .locals 5

    const v0, 0x21411e0d

    const/4 v1, 0x0

    .line 267
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(I)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/tpms/CarTpmsManager;->getAllTirePerssureSensorStatus()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTpmsSensorWarning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TpmsController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 273
    fill-array-data v0, :array_0

    .line 282
    :goto_0
    array-length v2, v0

    new-array v2, v2, [Z

    move v3, v1

    .line 283
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 284
    aget v4, v0, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    move v4, v1

    :goto_2
    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public isTpmsTempWarning()[Z
    .locals 3

    const v0, 0x21411e0e

    .line 245
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->getIntArrayProperty(I)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    invoke-virtual {v0}, Landroid/car/hardware/tpms/CarTpmsManager;->getAllTireTemperatureWarnings()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTpmsTempWarning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TpmsController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 251
    fill-array-data v0, :array_0

    .line 260
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/TpmsController;->convertTpmsTempWarningState([I)[Z

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method
