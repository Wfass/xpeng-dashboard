.class public Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "CiuController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController$CiuControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/ciu/CarCiuManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CiuController"


# instance fields
.field private final mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;


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

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 30
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private handleCiuValid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 333
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCiuCameraSw()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->setDmsSw(Z)V

    :cond_0
    return-void
.end method

.method private handleCiuWiperAutoSwitchUpdate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;

    .line 431
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;->onCiuWiperAutoSwitchChanged(Z)V

    goto :goto_0

    .line 433
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

.method private handleCiuWiperIntervalUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;

    .line 422
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;->onCiuWiperIntervalChanged(I)V

    goto :goto_0

    .line 424
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private handleDistractionSwUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 404
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;

    .line 406
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;->onDistractSwChanged(Z)V

    goto :goto_1

    .line 408
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method private handleDmsUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 344
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;

    .line 346
    invoke-interface {v2, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;->onDmsSwChanged(Z)V

    goto :goto_1

    .line 348
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method private handleFaceIdSwUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 364
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;

    .line 366
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;->onFaceIdSwChanged(Z)V

    goto :goto_1

    .line 368
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method private handleFatigueSwUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->isCiuValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 384
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;

    .line 386
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;->onFatigueSwChanged(Z)V

    goto :goto_1

    .line 388
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public controlDistractSwitch(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlDistractSwitch enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->setDistractSw(Z)V

    .line 282
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/ciu/CarCiuManager;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {p2, p1}, Landroid/car/hardware/ciu/CarCiuManager;->setDistractionStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "controlDistractSwitch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public controlDmsSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlDmsSwitch enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCiuFaceSw()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCiuFatigueSw()Z

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCiuDistractSw()Z

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->setMultiDms(ZZZZ)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->setMultiDms(ZZZZ)V

    :goto_0
    return-void
.end method

.method public controlFaceIdSwitch(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlDmsSwitch enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->setFaceIdSw(Z)V

    .line 218
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/ciu/CarCiuManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p2, v0}, Landroid/car/hardware/ciu/CarCiuManager;->setFaceIdSw(I)V

    const-string p2, "persist.sys.face_recognition"

    .line 220
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "controlFaceIdSwitch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public controlFatigueSwitch(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlFatigueSwitch enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->setFatigueSw(Z)V

    .line 251
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/ciu/CarCiuManager;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {p2, p1}, Landroid/car/hardware/ciu/CarCiuManager;->setFatigueStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "controlFatigueSwitch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method protected disconnect()V
    .locals 4

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mPropertyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/ciu/CarCiuManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/ciu/CarCiuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "CiuController"

    .line 98
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCiuWiperLevel()I
    .locals 3

    const v0, 0x21402820

    .line 304
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/ciu/CarCiuManager;

    invoke-virtual {v0}, Landroid/car/hardware/ciu/CarCiuManager;->getCiuRainSw()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCiuWiperLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CiuController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getDistractSw()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCiuDistractSw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDmsSw()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCiuCameraSw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFaceIdSw()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCiuFaceSw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFatigueSw()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCiuFatigueSw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getRegisterPropertyIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "isSupportCiuConfig"

    .line 79
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x2140281e

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2140280f

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2140281b

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402823

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402822

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402820

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
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

    .line 104
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CiuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->handleFatigueSwUpdate(I)V

    goto :goto_0

    .line 122
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->handleDistractionSwUpdate(I)V

    goto :goto_0

    .line 126
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->handleCiuWiperIntervalUpdate(I)V

    goto :goto_0

    .line 106
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->handleCiuValid(I)V

    goto :goto_0

    .line 114
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->handleFaceIdSwUpdate(I)V

    goto :goto_0

    .line 110
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->handleDmsUpdate(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2140280f -> :sswitch_5
        0x2140281b -> :sswitch_4
        0x2140281e -> :sswitch_3
        0x21402820 -> :sswitch_2
        0x21402822 -> :sswitch_1
        0x21402823 -> :sswitch_0
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

    const-string v0, "CiuController"

    const-string v1, "Init start"

    .line 59
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_ciu"

    .line 61
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/ciu/CarCiuManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mPropertyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/ciu/CarCiuManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/ciu/CarCiuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const-string p1, "Init end"

    .line 68
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public isCiuRainEnable()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->isCiuRainEnable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCiuValid()Z
    .locals 5

    const-string v0, "CiuController"

    const/4 v1, 0x0

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/ciu/CarCiuManager;

    invoke-virtual {v2}, Landroid/car/hardware/ciu/CarCiuManager;->getCiuValid()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCiuValid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v1

    .line 144
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CiuValid status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public setCiuRainEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 318
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCiuRainEnable(Z)V

    .line 321
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->handleCiuWiperAutoSwitchUpdate(Z)V

    return-void
.end method

.method public setCiuWiperLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCiuWiperInterval(I)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/ciu/CarCiuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/ciu/CarCiuManager;->setCiuRainSw(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCiuWiperLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "CiuController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setDistractSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 268
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCiuDistractSw(Z)V

    :cond_0
    return-void
.end method

.method public setDmsSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCiuCameraSw(Z)V

    :cond_0
    return-void
.end method

.method public setFaceIdSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCiuFaceSw(Z)V

    :cond_0
    return-void
.end method

.method public setFatigueSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCiuFatigueSw(Z)V

    :cond_0
    return-void
.end method

.method public setMultiDms(ZZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dmsSw",
            "faceIdSw",
            "fatigueSw",
            "distractSw"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultiDms() with: main = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], faceId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], fatigue = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], distract = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CiuController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/ciu/CarCiuManager;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/ciu/CarCiuManager;->setDmsStatus(I)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/ciu/CarCiuManager;

    if-eqz p2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/car/hardware/ciu/CarCiuManager;->setFaceIdSw(I)V

    const-string p1, "persist.sys.face_recognition"

    .line 184
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/ciu/CarCiuManager;

    if-eqz p3, :cond_2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/car/hardware/ciu/CarCiuManager;->setFatigueStatus(I)V

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CiuController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/ciu/CarCiuManager;

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {p1, v3}, Landroid/car/hardware/ciu/CarCiuManager;->setDistractionStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setMultiDms: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    return-void
.end method
