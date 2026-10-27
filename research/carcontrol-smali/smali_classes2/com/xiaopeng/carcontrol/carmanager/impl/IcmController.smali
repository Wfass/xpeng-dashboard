.class public Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "IcmController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController$IcmControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/icm/CarIcmManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "IcmController"


# instance fields
.field private final mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

.field private final mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

.field private mInputManager:Landroid/car/hardware/input/CarInputManager;

.field private mInputPropertyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;


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

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 44
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 72
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private buildMileageIdList()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x2160162e

    .line 793
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2160162f

    .line 794
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21601630

    .line 795
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21601631

    .line 796
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21601632

    .line 797
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getDefaultMenuMediaSourceValue()Z
    .locals 1

    const-string v0, "isSupportSwitchMedia"

    .line 101
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private handleDoorKeyChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;

    .line 759
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;->onDoorKeyChanged(I)V

    goto :goto_0

    .line 761
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

.method private handleMileageAUpdate(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;

    .line 728
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;->onMileageAChanged(F)V

    goto :goto_0

    .line 730
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

.method private handleMileageBUpdate(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;

    .line 736
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;->onMileageBChanged(F)V

    goto :goto_0

    .line 738
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

.method private handleMileageLastChargeUpdate(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;

    .line 712
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;->onMileageLastChargeChanged(F)V

    goto :goto_0

    .line 714
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

.method private handleMileageStartUpUpdate(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;

    .line 720
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;->onMileageStartUpChanged(F)V

    goto :goto_0

    .line 722
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

.method private handleMileageTotalUpdate(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;

    .line 704
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;->onMileageTotalChanged(F)V

    goto :goto_0

    .line 706
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

.method private handleSteerKeyUpdate([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSteerKeyUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 744
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setNewSteerKey()V

    :cond_0
    return-void
.end method

.method private handleXKeyChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;

    .line 751
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController$Callback;->onXKeyChanged(I)V

    goto :goto_0

    .line 753
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

.method private mockIcmProperty()V
    .locals 5

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2160162e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    .line 684
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 683
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21601630

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 686
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 685
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2160162f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 688
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 687
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21601631

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 690
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 689
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21601632

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 692
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 691
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mockExtIcmProperty()V

    return-void
.end method

.method private parseSyncSignal(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseSyncSignal, json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 772
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SysReady"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 773
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->sendTouchRotationSpeedToIcm()V

    :cond_0
    return-void
.end method

.method private sendTouchRotationSpeedToIcm()V
    .locals 4

    .line 765
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getTouchRotationSpeed()I

    move-result v0

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTouchRotationSpeedToIcm, speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IcmController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 767
    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->setTouchRotationSpeed(IZ)V

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

    const v0, 0x2160162e

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21601630

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x2160162f

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21601631

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21601632

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "isNewIcmArch"

    .line 164
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const v0, 0x2140160e

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21101611

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
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

    .line 784
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_mileage_data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->buildMileageIdList()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method protected dependOnXuiManager()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected disconnect()V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "IcmController"

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mPropertyIds:Ljava/util/List;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {v0, v4, v5}, Landroid/car/hardware/icm/CarIcmManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    invoke-static {v3, v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mInputManager:Landroid/car/hardware/input/CarInputManager;

    if-eqz v0, :cond_1

    .line 181
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mInputPropertyIds:Ljava/util/List;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    invoke-virtual {v0, v4, v5}, Landroid/car/hardware/input/CarInputManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 183
    invoke-static {v3, v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public getBrakeFluidLevelWarningMessage()I
    .locals 4

    const/4 v0, 0x0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v1}, Landroid/car/hardware/icm/CarIcmManager;->getBrakeFluidLevelWarningMessage()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrakeFluidLevelWarningMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IcmController"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0
.end method

.method public getBrightSw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getCarEventCallback()Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    return-object v0
.end method

.method public getDoorBossKeySw()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDoorBossKeySw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDoorKeyForCustomer()I
    .locals 5

    .line 383
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getDoorBossKey()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 384
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v2, :cond_1

    .line 386
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->getBossKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoorKeyForCustomer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IcmController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return v0
.end method

.method public getIcmBrightness()I
    .locals 4

    const/4 v0, 0x0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v1}, Landroid/car/hardware/icm/CarIcmManager;->getIcmBrightness()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    .line 619
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIcmBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IcmController"

    invoke-static {v3, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public getMediaSw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMileageA()F
    .locals 4

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getMeterMileageA()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageA "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "IcmController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getMileageB()F
    .locals 4

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getMeterMileageB()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 318
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "IcmController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getMileageSinceLastCharge()F
    .locals 4

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getLastChargeMileage()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageSinceLastCharge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "IcmController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getMileageSinceStartUp()F
    .locals 4

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getLastStartUpMileage()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageSinceStartUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "IcmController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getMileageTotal()F
    .locals 4

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->getDriveTotalMileage()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMileageTotal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "IcmController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
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

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->addExtPropertyIds(Ljava/util/List;)V

    return-object v0
.end method

.method public getSpeedLimitValueFromDataSync()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpeedWarningSw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpeedWarningValue()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTempSw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTouchRotationDirection()I
    .locals 4

    const/4 v0, 0x1

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->getTouchRotationDirection()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTouchRotationDirection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "IcmController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v0
.end method

.method public getTouchRotationSpeed()I
    .locals 3

    .line 477
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_touch_rotation_speed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindModeSw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWindPowerSw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getXKeyForCustomer()I
    .locals 5

    .line 348
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getWheelXKey()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 349
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v2, :cond_1

    .line 351
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->getXKeyForCustomer()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getXKeyForCustomer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IcmController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return v0
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

    .line 190
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101611

    if-eq v0, v1, :cond_2

    const v1, 0x2140160e

    if-eq v0, v1, :cond_1

    const v1, 0x2141222c

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IcmController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleMileageBUpdate(F)V

    goto :goto_0

    .line 201
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleMileageAUpdate(F)V

    goto :goto_0

    .line 195
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleMileageLastChargeUpdate(F)V

    goto :goto_0

    .line 198
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleMileageStartUpUpdate(F)V

    goto :goto_0

    .line 192
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleMileageTotalUpdate(F)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleSteerKeyUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->sendTouchRotationSpeedToIcm()V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->parseSyncSignal(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2160162e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initCarManager(Landroid/car/Car;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    const-string v0, "IcmController"

    const-string v1, "Init start"

    .line 112
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_icm"

    .line 114
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mPropertyIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mPropertyIds:Ljava/util/List;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/icm/CarIcmManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    :cond_0
    const-string v1, "No prop ids to register"

    .line 122
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isNewSteerKey()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "xp_input"

    .line 126
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/input/CarInputManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mInputManager:Landroid/car/hardware/input/CarInputManager;

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mInputPropertyIds:Ljava/util/List;

    const v1, 0x2141222c

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mInputManager:Landroid/car/hardware/input/CarInputManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mInputPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarInputEventCallback:Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/input/CarInputManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_2
    :goto_1
    const-string p1, "Init end"

    .line 134
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 2

    const-string v0, "IcmController"

    const-string v1, "Init xui manager start"

    .line 144
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getSmartManager()Lcom/xiaopeng/xuimanager/smart/SmartManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    const-string v1, "Init xui manager end"

    .line 146
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isWheelKeyProtectEnabled()Z
    .locals 3

    .line 660
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XpWheelkeyIgnore"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected mockExtIcmProperty()V
    .locals 0

    return-void
.end method

.method public resetMeterMileageA()V
    .locals 3

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->resetMeterMileageA()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMeterMileageA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "IcmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public resetMeterMileageB()V
    .locals 3

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/icm/CarIcmManager;->resetMeterMileageB()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetMeterMileageB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "IcmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setBrightSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setDoorBossKeySw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 397
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDoorBossKeySw(Z)V

    :cond_0
    return-void
.end method

.method public setDoorKeyForCustomer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    .line 363
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->setDoorKeyForCustomer(IZ)V

    return-void
.end method

.method public setDoorKeyForCustomer(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunc",
            "needSave"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 368
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    .line 369
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setDoorBossKey(I)V

    .line 371
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz p2, :cond_1

    .line 373
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setBossKeyForCustomer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDoorKeyForCustomer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "IcmController"

    invoke-static {v1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 378
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleDoorKeyChanged(I)V

    return-void
.end method

.method public setIcmBrightness(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string/jumbo v0, "setIcmBrightness: "

    const-string v1, "IcmController"

    const/4 v2, 0x0

    .line 626
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v3, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v3, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmBrightness(I)V

    .line 627
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "icm_brightness"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setIcmDayNightMode(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string/jumbo v0, "setIcmDayNightMode: "

    const-string v1, "IcmController"

    .line 597
    new-instance v2, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v3, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;-><init>(Landroid/car/hardware/icm/CarIcmManager;)V

    const-string v3, "DayNight"

    .line 598
    iput-object v3, v2, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncMode:Ljava/lang/String;

    .line 600
    iput p1, v2, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncProgress:I

    const-string p1, ""

    .line 601
    iput-object p1, v2, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->msgId:Ljava/lang/String;

    .line 602
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 604
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v3, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v3, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmSyncSignal(Ljava/lang/String;)V

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setIcmDrvTemp(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    return-void
.end method

.method public setIcmMeditationMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter"
        }
    .end annotation

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIcmMeditationMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 637
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_system_meditation_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setIcmWindBlowMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    return-void
.end method

.method public setIcmWindLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    return-void
.end method

.method public setMediaSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setMeterMultiProperties(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSpeedWarningSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setSpeedWarningValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    return-void
.end method

.method public setTempSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setTouchRotationDirection(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_0

    .line 415
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setTouchRotationDirection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchRotationDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "IcmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 421
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWheelTouchDirection(I)V

    :cond_1
    return-void
.end method

.method public setTouchRotationSpeed(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "speed",
            "needSave"
        }
    .end annotation

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;-><init>(Landroid/car/hardware/icm/CarIcmManager;)V

    const-string v1, "WheelKeyMode"

    .line 448
    iput-object v1, v0, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncMode:Ljava/lang/String;

    .line 450
    iput p1, v0, Landroid/car/hardware/icm/CarIcmManager$SyncSinal;->SyncProgress:I

    .line 451
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 452
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 454
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/icm/CarIcmManager;->setIcmSyncSignal(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_touch_rotation_speed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    .line 462
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    .line 463
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWheelTouchSpeed(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTouchRotationSpeed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "IcmController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void
.end method

.method public setUserScenarioInfo([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setUserScenarioInfo([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 678
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setWheelKeyProtectSw(Z)V
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

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->setWheelKeyProtectSw(ZZ)V

    return-void
.end method

.method public setWheelKeyProtectSw(ZZ)V
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

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWheelKeyProtectSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "IcmController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 649
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XpWheelkeyIgnore"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    .line 650
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    .line 651
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWheelKeyProtect(Z)V

    goto :goto_0

    .line 653
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "wheel_key_protect"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public setWindModeSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setWindPowerSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setWiperSensitivity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setWiperRainDetectSensitivity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWiperRainDetectSensitivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "IcmController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setXKeyForCustomer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFunc"
        }
    .end annotation

    const/4 v0, 0x1

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->setXKeyForCustomer(IZ)V

    return-void
.end method

.method public setXKeyForCustomer(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunc",
            "needSave"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 333
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    .line 334
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setWheelXKey(I)V

    .line 336
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz p2, :cond_1

    .line 338
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setXKeyForCustomer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setXKeyForCustomer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "IcmController"

    invoke-static {v1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 343
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/IcmController;->handleXKeyChanged(I)V

    return-void
.end method
