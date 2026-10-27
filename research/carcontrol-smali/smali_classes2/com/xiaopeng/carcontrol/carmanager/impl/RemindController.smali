.class public Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "RemindController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/xpeng/remind/CarRemindManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "RemindController"


# instance fields
.field private final remindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;


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

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 32
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->remindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private handleKeyLeaveCarRemind(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController$Callback;

    .line 114
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController$Callback;->onKeyLeaveCarRemind(I)V

    goto :goto_0

    .line 116
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

.method private handleTrdSeatRemind(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController$Callback;

    .line 106
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IRemindController$Callback;->onTrdSeatRemindStateChange(I)V

    goto :goto_0

    .line 108
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

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mPropertyIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/xpeng/remind/CarRemindManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->remindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/xpeng/remind/CarRemindManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "RemindController"

    .line 84
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
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

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x2140a803

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2140a802

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 90
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->handleTrdSeatRemind(I)V

    goto :goto_1

    .line 95
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->handleKeyLeaveCarRemind(I)V

    .line 97
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemindController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2140a802
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const-string v0, "RemindController"

    const-string v1, "Init start"

    .line 51
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_remind"

    .line 53
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/remind/CarRemindManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCarManager:Landroid/car/CarManagerBase;

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mPropertyIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/xpeng/remind/CarRemindManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/RemindController;->remindEventCallback:Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/xpeng/remind/CarRemindManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const-string p1, "Init end"

    .line 61
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method
