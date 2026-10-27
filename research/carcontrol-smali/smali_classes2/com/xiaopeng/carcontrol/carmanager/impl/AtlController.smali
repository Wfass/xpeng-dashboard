.class public Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "AtlController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$AtlControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/atl/CarAtlManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;"
    }
.end annotation


# static fields
.field private static final ATL_SPEAKER_SW:Ljava/lang/String; = "atl_speaker"

.field public static final PARTITION_ALL:Ljava/lang/String; = "all"

.field private static final TAG:Ljava/lang/String; = "AtlController"


# instance fields
.field private mAtlManagerCallback:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

.field private final mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

.field protected mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;


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

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 54
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    .line 67
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mAtlManagerCallback:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleAmbientLightEnableChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleManualBrightUpdate(I)V

    return-void
.end method

.method private handleAmbientLightEnableChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 705
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlSwChanged(Z)V

    goto :goto_0

    .line 707
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

.method private handleAtlSpeakerSwUpdate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 713
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlSpeakerSwChanged(Z)V

    goto :goto_0

    .line 715
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

.method private handleAutoBrightUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 723
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 725
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlAutoBrightSwChanged(Z)V

    goto :goto_1

    .line 727
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleManualBrightUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 733
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlManualBrightChanged(I)V

    goto :goto_0

    .line 735
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

    const-string v0, "isSupportAtl"

    .line 207
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isSupportFullAtl"

    .line 208
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2140180a

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const v0, 0x21401805

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected dependOnXuiManager()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected disconnect()V
    .locals 4

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mPropertyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/atl/CarAtlManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "AtlController"

    .line 222
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 224
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v0, :cond_1

    .line 225
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mAtlManagerCallback:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->unregisterListener(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;)V

    :cond_1
    return-void
.end method

.method public getAtlBrightness()I
    .locals 4

    const/16 v0, 0x64

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v1, :cond_0

    const-string v2, "all"

    .line 359
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightBright(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 361
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlBright()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAtlBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AtlController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlBright()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getAtlDualFirstColor(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const-string v0, "AtlController"

    const/4 v1, 0x0

    .line 575
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v2, :cond_0

    const-string v3, "all"

    .line 576
    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 577
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->toHexString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAtlDualFirstColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", color:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAtlDualFirstColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1
.end method

.method public getAtlDualSecondColor(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const-string v0, "AtlController"

    const/4 v1, 0x0

    .line 591
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v2, :cond_0

    const-string v3, "all"

    .line 592
    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 593
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->toHexString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAtlDualSecondColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", color:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAtlDualSecondColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x6

    :cond_0
    :goto_0
    return v1
.end method

.method public getAtlEffect()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "stable_effect"

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v1, :cond_0

    const-string v2, "all"

    .line 408
    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAtlEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AtlController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 412
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getAtlRgbMemoryDualColor()Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlRgbDualColorStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAtlRgbMemorySingleColor()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlRgbSingleColorStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAtlSingleColor(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const-string v0, "AtlController"

    const/4 v1, 0x0

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v2, :cond_2

    const-string v3, "all"

    .line 499
    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightMonoColor(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    move-result-object v2

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAtlSingleColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", color:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->toHexString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_2

    .line 502
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->toHexString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAtlSingleColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 507
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlSingleColor()I

    move-result p1

    goto :goto_1

    :cond_1
    const/16 p1, 0xe

    :goto_1
    move v1, p1

    :cond_2
    :goto_2
    return v1
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

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->addExtPropertyIds(Ljava/util/List;)V

    return-object v0
.end method

.method protected handleDoubleColorChanged(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effectType",
            "firstColor",
            "secondColor"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 771
    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlDoubleColorChanged(Ljava/lang/String;II)V

    goto :goto_0

    .line 773
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

.method protected handleDoubleColorEnableChanged(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "enable"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 755
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlDoubleColorEnableChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 757
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

.method protected handleEffectTypeChanged(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 744
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlEffectTypeChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 746
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

    .line 231
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401805

    if-eq v0, v1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AtlController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleAutoBrightUpdate(I)V

    :goto_0
    return-void
.end method

.method protected handleMonoColorChanged(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "color"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 763
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlMonoColorChanged(Ljava/lang/String;I)V

    goto :goto_0

    .line 765
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

.method protected handleRgbDoubleFirstColorChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstColor"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 779
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlRgbDoubleFirstColorChanged(I)V

    goto :goto_0

    .line 781
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

.method protected handleRgbDoubleSecondColorChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondColor"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;

    .line 787
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;->onAtlRgbDoubleSecondColorChanged(I)V

    goto :goto_0

    .line 789
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

    const-string v0, "AtlController"

    const-string v1, "Init start"

    .line 166
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_atl"

    .line 168
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/atl/CarAtlManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarManager:Landroid/car/CarManagerBase;

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mPropertyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/atl/CarAtlManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/atl/CarAtlManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const-string p1, "Init end"

    .line 175
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 3

    const-string v0, "AtlController"

    const-string v1, "Init xui manager start"

    .line 185
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getAtlManager()Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v1, :cond_0

    .line 189
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mAtlManagerCallback:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->registerListener(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "mXuiAtlManager is null"

    .line 191
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    const-string v1, "Init xui manager end"

    .line 194
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAtlAutoBrightEnabled()Z
    .locals 5

    const v0, 0x21401805

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 332
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v0}, Landroid/car/hardware/atl/CarAtlManager;->getAutoBrightness()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :catch_1
    move-exception v0

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAtlAutoBrightEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AtlController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlAutoBrightSw()Z

    move-result v2

    :cond_1
    return v2
.end method

.method public isAtlDualColor(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const-string v0, "AtlController"

    const/4 v1, 0x0

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v2, :cond_0

    const-string v3, "all"

    .line 450
    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Double:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->match(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 453
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoubleThemeColorEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", effect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAtlDualColor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 456
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlDualColorSw()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    :goto_1
    return v2
.end method

.method public isAtlSpeakerSwEnabled()Z
    .locals 4

    const-string v0, "isSupportAtl"

    .line 294
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "atl_speaker"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 298
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAtlSpeakerSwEnabled, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AtlController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isAtlSwEnabled()Z
    .locals 6

    const-string v0, "isAtlSwEnabled: "

    const-string v1, "AtlController"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->getAmbientLightEnable()Z

    move-result v2

    goto :goto_0

    .line 269
    :cond_0
    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlSw()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAtlSw()Z

    move-result v2

    .line 275
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectType"
        }
    .end annotation

    const-string v0, "isSupportAtlAllModeDualColor"

    .line 679
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AtlController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAtlAllModeDualColor():, effectType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1

    .line 684
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportDoubleThemeColor: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return v2
.end method

.method public synthetic lambda$setAtlSpeakerSwEnable$0$AtlController(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->handleAtlSpeakerSwUpdate(Z)V

    return-void
.end method

.method public setAtlAutoBrightEnable(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "AtlController"

    const/4 v1, 0x0

    .line 347
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAtlAutoBrightEnable:enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 348
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/atl/CarAtlManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v2, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAutoBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAtlAutoBrightEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setAtlBrightness(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brightness",
            "force"
        }
    .end annotation

    const/4 v0, 0x1

    .line 372
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlBrightness(IZZ)V

    return-void
.end method

.method public setAtlBrightness(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "brightness",
            "force",
            "needSave"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 379
    :try_start_0
    iget-boolean p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz p3, :cond_0

    .line 380
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlBright(I)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "atl_brightness"

    invoke-static {p3, v0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, "all"

    if-eqz p2, :cond_3

    .line 387
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->isAtlSwEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 388
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSwEnable(Z)V

    .line 390
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz p2, :cond_4

    .line 391
    invoke-virtual {p2, p3, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightBright(Ljava/lang/String;I)V

    goto :goto_2

    .line 394
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz p2, :cond_4

    .line 395
    invoke-virtual {p2, p3, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightBright(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 399
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAtlBrightness: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "AtlController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setAtlDualColor(Ljava/lang/String;IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "color1",
            "color2",
            "force"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 605
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlDualColor(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public setAtlDualColor(Ljava/lang/String;IIZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "color1",
            "color2",
            "force",
            "needSave"
        }
    .end annotation

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAtlDualColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", color1:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", color2:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", force:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AtlController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p5, :cond_2

    .line 616
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, p2, p3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlDualColor(II)V

    goto :goto_0

    .line 619
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "atl_dual_color"

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 623
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    if-eqz p4, :cond_3

    .line 625
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->isAtlSwEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 626
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSwEnable(Z)V

    :cond_3
    const-string v2, "isSupportAtlRgbColor"

    .line 629
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 630
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v2

    sub-int/2addr p2, v1

    aget-object p2, v2, p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result v3

    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object p2

    sub-int/2addr p3, v1

    aget-object p2, p2, p3

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result v4

    const/4 v5, 0x0

    move-object v2, p0

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlRgbDualColor(IIIZZ)V

    goto :goto_1

    .line 632
    :cond_4
    new-instance p4, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    .line 633
    new-instance p2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    .line 634
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    const-string p5, "all"

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p5, v1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 637
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setAtlDualColor: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string p2, "Invalid color, do not set to AmbientLightManager"

    .line 612
    invoke-static {v0, p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setAtlDualColor(Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "dualColor",
            "force"
        }
    .end annotation

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlDualColor(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public setAtlDualColor(Ljava/lang/String;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "dualColor",
            "force",
            "needSave"
        }
    .end annotation

    if-eqz p4, :cond_1

    .line 469
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlDualColorSw(Z)V

    goto :goto_0

    .line 472
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p4, "atl_dual_color_sw"

    invoke-static {p1, p4, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 477
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_2

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->isAtlSwEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 480
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSwEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "all"

    if-eqz p2, :cond_3

    .line 483
    :try_start_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    sget-object p3, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Double:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->toAtlCommand()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 485
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    sget-object p3, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Mono:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->toAtlCommand()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 489
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAtlDualColor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "AtlController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method public setAtlEffect(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "force"
        }
    .end annotation

    const/4 v0, 0x1

    .line 419
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlEffect(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setAtlEffect(Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "force",
            "needSave"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 425
    iget-boolean p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz p3, :cond_0

    .line 426
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->toDataSyncAtlCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 429
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->toDataSyncAtlCmd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "atl_effect"

    .line 428
    invoke-static {p3, v1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 432
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    .line 434
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->isAtlSwEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 435
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSwEnable(Z)V

    .line 437
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    const-string p3, "all"

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->toAtlCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 439
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAtlEffect: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "AtlController"

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAtlRgbDualColor(IIIZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "color1",
            "color2",
            "index",
            "force",
            "needSave"
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAtlRgbDualColor:, color1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", force:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtlController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 646
    iget-boolean p5, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz p5, :cond_0

    .line 647
    iget-object p5, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p5, p1, p2, p3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlRgbDualColor(III)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "atl_dual_color"

    invoke-static {p3, v0, p5}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 653
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    if-eqz p4, :cond_2

    .line 655
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->isAtlSwEnabled()Z

    move-result p4

    if-nez p4, :cond_2

    .line 656
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSwEnable(Z)V

    .line 658
    :cond_2
    new-instance p4, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p3, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    .line 659
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    .line 660
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    const-string p3, "all"

    new-instance p5, Landroid/util/Pair;

    invoke-direct {p5, p4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p3, p5}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 662
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAtlDualColor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAtlRgbSingleColor(IIZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "index",
            "force",
            "needSave"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAtlRgbSingleColor:, color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", force:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtlController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 552
    iget-boolean p4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz p4, :cond_0

    .line 553
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p4, p1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlRgbSingleColor(II)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "atl_single_color"

    invoke-static {p2, p4, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 559
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-eqz p3, :cond_2

    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->isAtlSwEnabled()Z

    move-result p3

    if-nez p3, :cond_2

    .line 562
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSwEnable(Z)V

    .line 564
    :cond_2
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    const-string p4, "all"

    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p3, p4, v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAtlRgbSingleColor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAtlSingleColor(Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "color",
            "force"
        }
    .end annotation

    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSingleColor(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public setAtlSingleColor(Ljava/lang/String;IZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "color",
            "force",
            "needSave"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAtlSingleColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", color:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", force:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AtlController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-lt p2, p1, :cond_5

    const/16 v1, 0x14

    if-le p2, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_2

    .line 524
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlSingleColor(I)V

    goto :goto_0

    .line 527
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "atl_single_color"

    invoke-static {v1, v2, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->isAtlSwEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 534
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSwEnable(Z)V

    :cond_3
    const-string v2, "isSupportAtlRgbColor"

    .line 537
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 538
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v2

    sub-int/2addr p2, p1

    aget-object p1, v2, p2

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result p1

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlRgbSingleColor(IIZZ)V

    goto :goto_1

    .line 540
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    const-string p3, "all"

    new-instance p4, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, v1, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 543
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setAtlSingleColor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setAtlSpeakerSwEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAtlSpeakerSwEnable, enable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtlController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "isSupportAtl"

    .line 282
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "atl_speaker"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AtlController$4zvthctNk2vnxn9QkYjuFdrABsw;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AtlController$4zvthctNk2vnxn9QkYjuFdrABsw;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setAtlSwEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->setAtlSwEnable(ZZ)V

    return-void
.end method

.method public setAtlSwEnable(ZZ)V
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

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAtlSwEnable, enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtlController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    .line 311
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    .line 312
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAtlSw(Z)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "atl_sw"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 320
    :cond_1
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AtlController;->mXuiAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz p2, :cond_2

    .line 321
    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->setAmbientLightEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAtlSwEnable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method
