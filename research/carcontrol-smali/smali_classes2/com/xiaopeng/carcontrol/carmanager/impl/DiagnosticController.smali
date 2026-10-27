.class public Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "DiagnosticController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/diagnostic/XpDiagnosticManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DiagnosticController"


# instance fields
.field private mDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;


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

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 22
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private handleAbsFault(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController$Callback;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 147
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController$Callback;->onAbsFaultChanged(Z)V

    goto :goto_0

    .line 149
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

.method private handleIbtFault(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController$Callback;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 155
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDiagnosticController$Callback;->onIbtFaultChanged(Z)V

    goto :goto_0

    .line 157
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

    const-string v0, "isSupportEpbWarning"

    .line 70
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const v0, 0x21402411

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected disconnect()V
    .locals 4

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/diagnostic/XpDiagnosticManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/diagnostic/XpDiagnosticManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "DiagnosticController"

    .line 82
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getManager()Landroid/car/diagnostic/XpDiagnosticManager;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/diagnostic/XpDiagnosticManager;

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

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->addExtPropertyIds(Ljava/util/List;)V

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

    .line 88
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2140240f

    if-eq v0, v1, :cond_1

    const v1, 0x21402411

    if-eq v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DiagnosticController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->handleIbtFault(I)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->handleAbsFault(I)V

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

    const-string v0, "DiagnosticController"

    const-string v1, "Init start"

    .line 45
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_diagnostic"

    .line 47
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/diagnostic/XpDiagnosticManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/diagnostic/XpDiagnosticManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/diagnostic/XpDiagnosticManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const-string p1, "Init end"

    .line 54
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public isAbsFault()Z
    .locals 4

    const/4 v0, 0x0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getAbsFailureState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAbsFault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DiagnosticController"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, -0x1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEpbFault()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-virtual {v2}, Landroid/car/diagnostic/XpDiagnosticManager;->getApbFailureState()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEpbFault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DiagnosticController"

    invoke-static {v3, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public isIbtFault()Z
    .locals 5

    const v0, 0x21402411

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/DiagnosticController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-virtual {v0}, Landroid/car/diagnostic/XpDiagnosticManager;->getIbtFailureState()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIbtFault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DiagnosticController"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    return v1
.end method
