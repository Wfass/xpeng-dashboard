.class public Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "CdcController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/cdc/CarCdcManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CdcController"


# instance fields
.field private final mCarCdcEventCallback:Landroid/car/hardware/cdc/CarCdcManager$CarCdcEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 26
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarCdcEventCallback:Landroid/car/hardware/cdc/CarCdcManager$CarCdcEventCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private checkCdcUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdc"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 136
    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CDC value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->handleCdcUpdate(I)V

    :goto_0
    return-void
.end method

.method private handleCdcUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdc"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;

    .line 144
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;->onCdcModeChanged(I)V

    goto :goto_0

    .line 146
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
.method protected disconnect()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/cdc/CarCdcManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarCdcEventCallback:Landroid/car/hardware/cdc/CarCdcManager$CarCdcEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/cdc/CarCdcManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCdcMode()I
    .locals 4

    const v0, 0x21403004

    .line 115
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/cdc/CarCdcManager;

    invoke-virtual {v1}, Landroid/car/hardware/cdc/CarCdcManager;->getCdcFunctionStyle()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 120
    :catch_1
    sget-object v1, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdcFunctionStyle failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :goto_0
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

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "isSupportCdcControl"

    .line 66
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x21403004

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
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

    .line 86
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21403004

    if-eq v0, v1, :cond_0

    .line 92
    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle unknown event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->checkCdcUpdate(I)V

    :goto_0
    return-void
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

    .line 44
    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    const-string v1, "Init start"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "xp_cdc"

    .line 46
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/cdc/CarCdcManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarManager:Landroid/car/CarManagerBase;

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mPropertyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/cdc/CarCdcManager;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mPropertyIds:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarCdcEventCallback:Landroid/car/hardware/cdc/CarCdcManager$CarCdcEventCallback;

    invoke-virtual {p1, v0, v1}, Landroid/car/hardware/cdc/CarCdcManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    sget-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 55
    :cond_0
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    const-string v0, "Init end"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public setCdcMode(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cdc",
            "needSave"
        }
    .end annotation

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/cdc/CarCdcManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/cdc/CarCdcManager;->setCdcFunctionStyle(I)V

    .line 102
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 103
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCdcMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    sget-object p2, Lcom/xiaopeng/carcontrol/carmanager/impl/CdcController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCdcFunctionStyle failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method
