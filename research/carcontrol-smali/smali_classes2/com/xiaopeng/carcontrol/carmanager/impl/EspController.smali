.class public Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "EspController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$EspControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/esp/CarEspManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EspController"


# instance fields
.field private mAvhSw:Ljava/lang/Boolean;

.field private final mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mEspSw:Ljava/lang/Boolean;


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

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 39
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mEspSw:Ljava/lang/Boolean;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mAvhSw:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleLossEventsUpdate(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mEspSw:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEspSwChanged(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mAvhSw:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleAvhSwChanged(Z)V

    return-void
.end method

.method private convertToEpbCmd(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private handleApbSystemStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 759
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onApbSystemStatusChanged(I)V

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

.method private handleAvhFaultChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 708
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onAvhFaultChanged(Z)V

    goto :goto_1

    .line 710
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

.method private handleAvhSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 743
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onAvhSwChanged(Z)V

    goto :goto_0

    .line 745
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

.method private handleAvhUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 699
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onAvhStatusChanged(I)V

    goto :goto_0

    .line 701
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

.method private handleEpbWarning(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 733
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 735
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onEpbFaultChanged(Z)V

    goto :goto_1

    .line 737
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

.method private handleEspBpfModeChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 783
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onEspBpfModeChanged(I)V

    goto :goto_0

    .line 785
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

.method private handleEspCstSwChange(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 775
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onEspCstSwChanged(Z)V

    goto :goto_0

    .line 777
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

.method private handleEspFaultChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 683
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onEspFaultChanged(Z)V

    goto :goto_1

    .line 685
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

.method private handleEspOffRoadStatus(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 767
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onEspOffRoadStatusChanged(Z)V

    goto :goto_0

    .line 769
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

.method private handleEspSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 691
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onEspSwChanged(Z)V

    goto :goto_0

    .line 693
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

.method private handleEspUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "espMode"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 674
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->parseEspStatus(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onEspChanged(Z)V

    goto :goto_0

    .line 676
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

.method private handleHbcRequest(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 751
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onHbcRequestStatusChanged(I)V

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

.method private handleHdcChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 714
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->parseHdcStatus(I)Z

    move-result p1

    .line 715
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 717
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onHdcChanged(Z)V

    goto :goto_0

    .line 719
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

.method private handleHdcFaultChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 724
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;

    .line 726
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController$Callback;->onHdcFaultChanged(Z)V

    goto :goto_1

    .line 728
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

.method private handleLossEventsUpdate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    const v0, 0x21402402

    if-ne p1, v0, :cond_0

    .line 193
    new-instance v0, Landroid/car/hardware/CarPropertyValue;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    :cond_0
    return-void
.end method

.method private mockEspProperty()V
    .locals 5

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21402402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x1

    .line 653
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 652
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21402409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    .line 655
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 654
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21402403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 657
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 656
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140240b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 659
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 658
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140240c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 662
    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 661
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mockExtEspProperty()V

    return-void
.end method

.method private parseHdcStatus(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
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

    .line 118
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    const v0, 0x21402414

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "isSupportHdc"

    .line 122
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x21402408

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x2140240a

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "isSupportEpbSetting"

    .line 126
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x21402413

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "isSupportEspMudMode"

    .line 130
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x21402416

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected convertToEspCmd(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method protected disconnect()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/esp/CarEspManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "EspController"

    .line 141
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getApbSystemDisplayMessage()I
    .locals 4

    const/4 v0, 0x0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v1}, Landroid/car/hardware/esp/CarEspManager;->getApbSystemDisplayMessage()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApbSystemDisplayMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EspController"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0
.end method

.method public getApbSystemStatus()I
    .locals 4

    const v0, 0x21402413

    const/4 v1, 0x0

    .line 459
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getApbSystemStatus()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApbSystemStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getAvh()I
    .locals 4

    const v0, 0x21402403

    const/4 v1, 0x0

    .line 313
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getAvh()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getAvhFault()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v2}, Landroid/car/hardware/esp/CarEspManager;->getAvhFault()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvhFault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EspController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    return v0
.end method

.method public getAvhSw()Z
    .locals 3

    .line 350
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvh()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mAvhSw:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 351
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "avh_sw"

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getContentProviderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected getContentProviderValueBySync(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 806
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 807
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "avh_sw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "esp_sw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mEspSw:Ljava/lang/Boolean;

    .line 810
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEspSwChanged(Z)V

    goto :goto_0

    .line 813
    :cond_1
    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mAvhSw:Ljava/lang/Boolean;

    .line 814
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleAvhSwChanged(Z)V

    :goto_0
    return-void
.end method

.method public getDtcFaultStatus()Z
    .locals 4

    const/4 v0, 0x0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v1}, Landroid/car/hardware/esp/CarEspManager;->getDtcFaultStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDtcFaultStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EspController"

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public getEpbDriverOffWarningMsg()I
    .locals 4

    const-string v0, "isSupportEpbSetting"

    .line 610
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getEpbDriverOffWarningMsg()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEpbDriverOffWarningMsg failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return v1
.end method

.method public getEpsWarningState()Z
    .locals 2

    const/4 v0, 0x0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v1}, Landroid/car/hardware/esp/CarEspManager;->getEpsWarninglampStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getEsp()I
    .locals 3

    const v0, 0x21402402

    .line 201
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getEsp()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEsp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getEspBpfMode()I
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getEspBpfMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getEspCstSw()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getEspCstSw()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getEspFault()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v2}, Landroid/car/hardware/esp/CarEspManager;->getEspFault()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEspFault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EspController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    return v0
.end method

.method public getEspMudStatus()Z
    .locals 4

    const-string v0, "isSupportEspMudMode"

    .line 272
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21402416

    .line 275
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getOffRoadSwitchStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEspMudStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public getEspSw()Z
    .locals 3

    .line 291
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getEsp()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mEspSw:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 292
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "esp_sw"

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getContentProviderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getEspTsmSwitchStatus()I
    .locals 4

    const-string v0, "isSupportTrailerHook"

    .line 516
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getTsmSwitchStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEspTsmSwitchStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getHbcRequestStatus()I
    .locals 4

    const-string v0, "isSupportEpbWarning"

    .line 484
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21402414

    .line 487
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getHbcRequestStatus()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHbcRequestStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v1
.end method

.method public getHdc()Z
    .locals 4

    const-string v0, "isSupportHdc"

    .line 369
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x21402408

    .line 372
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getHdc()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHdc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->parseHdcStatus(I)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getHdcFault()Z
    .locals 5

    const-string v0, "isSupportHdc"

    .line 401
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v2}, Landroid/car/hardware/esp/CarEspManager;->getHdcFault()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdcFault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EspController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    return v1
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

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x21402402

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402409

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402403

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2140240b

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->addExtPropertyIds(Ljava/util/List;)V

    return-object v0
.end method

.method public getTsmFaultStatus()Z
    .locals 4

    const-string v0, "isSupportTrailerHook"

    .line 530
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0}, Landroid/car/hardware/esp/CarEspManager;->getTsmFaultStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTsmFaultStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EspController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
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

    .line 148
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EspController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEspOffRoadStatus(I)V

    goto/16 :goto_0

    .line 177
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleHbcRequest(I)V

    goto/16 :goto_0

    .line 180
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleApbSystemStatus(I)V

    goto :goto_0

    .line 174
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEpbWarning(I)V

    goto :goto_0

    .line 162
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleAvhFaultChanged(I)V

    goto :goto_0

    .line 170
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleHdcFaultChanged(I)V

    goto :goto_0

    .line 154
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEspFaultChanged(I)V

    goto :goto_0

    .line 166
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleHdcChanged(I)V

    goto :goto_0

    .line 158
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleAvhUpdate(I)V

    goto :goto_0

    .line 150
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEspUpdate(I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21402402 -> :sswitch_9
        0x21402403 -> :sswitch_8
        0x21402408 -> :sswitch_7
        0x21402409 -> :sswitch_6
        0x2140240a -> :sswitch_5
        0x2140240b -> :sswitch_4
        0x2140240c -> :sswitch_3
        0x21402413 -> :sswitch_2
        0x21402414 -> :sswitch_1
        0x21402416 -> :sswitch_0
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

    const-string v0, "EspController"

    const-string v1, "Init start"

    .line 75
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_esp"

    .line 77
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/esp/CarEspManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/esp/CarEspManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarEspEventCallback:Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/esp/CarEspManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 87
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-nez p1, :cond_1

    .line 89
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$bSbYCl8hv-vW6OONJkx5JQTeeqc;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$bSbYCl8hv-vW6OONJkx5JQTeeqc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->registerContentObserver()V

    :cond_1
    const-string p1, "Init end"

    .line 96
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$initCarManager$0$EspController()V
    .locals 3

    .line 90
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "esp_sw"

    const/4 v2, 0x1

    .line 91
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mEspSw:Ljava/lang/Boolean;

    const-string v1, "avh_sw"

    .line 92
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mAvhSw:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic lambda$setAvhSw$2$EspController(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 358
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleAvhSwChanged(Z)V

    return-void
.end method

.method public synthetic lambda$setAvhSw$3$EspController(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 363
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleAvhSwChanged(Z)V

    return-void
.end method

.method public synthetic lambda$setEspBpfMode$5$EspController(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "mode"
        }
    .end annotation

    .line 595
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEspBpfModeChange(I)V

    return-void
.end method

.method public synthetic lambda$setEspCstSw$4$EspController(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 566
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEspCstSwChange(Z)V

    return-void
.end method

.method public synthetic lambda$setEspSw$1$EspController(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->handleEspSwChanged(Z)V

    return-void
.end method

.method protected mockExtEspProperty()V
    .locals 0

    return-void
.end method

.method protected parseEspStatus(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method registerContentObserver()V
    .locals 4

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$2;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    const-string v0, "EspController"

    const-string v2, "registerContentObserver"

    .line 644
    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "esp_sw_notify"

    .line 646
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mContentObserver:Landroid/database/ContentObserver;

    .line 645
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 647
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "avh_sw_notify"

    .line 648
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mContentObserver:Landroid/database/ContentObserver;

    .line 647
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAvh(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/esp/CarEspManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/esp/CarEspManager;->setAvh(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EspController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setAvhSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 356
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAvh(Z)V

    .line 358
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$LRMXiC98WS6gjhkQefK5xwLddX0;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$LRMXiC98WS6gjhkQefK5xwLddX0;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mAvhSw:Ljava/lang/Boolean;

    .line 361
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avh_sw"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 363
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$YSDhzVmetdErNEmplJpmf0Fkf40;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$YSDhzVmetdErNEmplJpmf0Fkf40;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setEpbSystemStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportEpbSetting"

    .line 473
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->convertToEpbCmd(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/car/hardware/esp/CarEspManager;->setEpbSystemSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEpbSystemStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "EspController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setEsp(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 229
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->convertToEspCmd(Z)I

    move-result p1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/esp/CarEspManager;->setEsp(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEsp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "EspController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setEspBpfMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    .line 580
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->setEspBpfMode(IZ)V

    return-void
.end method

.method public setEspBpfMode(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "needSave"
        }
    .end annotation

    const-string v0, "isSupportEspCst"

    .line 585
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "EspController"

    if-lt p1, v0, :cond_2

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/esp/CarEspManager;->setBpfStatus(I)V

    if-eqz p2, :cond_1

    .line 592
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    .line 593
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    const-string v0, "ESP_BPF"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->updateAndGetAllSubItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAllDriveSubItem(Ljava/lang/String;)V

    .line 595
    :cond_1
    new-instance p2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$Owz3pr4p8fyJkPHIKApbkc8DFX0;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$Owz3pr4p8fyJkPHIKApbkc8DFX0;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;I)V

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 597
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBpfStatus failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 587
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEspBpfMode failed with invalid mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setEspCstSw(Z)V
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

    .line 555
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->setEspCstSw(ZZ)V

    return-void
.end method

.method public setEspCstSw(ZZ)V
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

    const-string v0, "isSupportEspCst"

    .line 560
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/esp/CarEspManager;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/esp/CarEspManager;->setCstStatus(I)V

    if-eqz p2, :cond_1

    .line 563
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    .line 564
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setEspCstSw(Z)V

    .line 566
    :cond_1
    new-instance p2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$VBlKSCecoiob8t0xhu6JfNbWtLc;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$VBlKSCecoiob8t0xhu6JfNbWtLc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Z)V

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 568
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEspCstSw failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EspController"

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setEspMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/esp/CarEspManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/esp/CarEspManager;->setEsp(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEsp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "EspController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setEspModeSport()V
    .locals 5

    const-string v0, "EspController"

    const/4 v1, 0x0

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/esp/CarEspManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/car/hardware/esp/CarEspManager;->setEsp(I)V

    .line 249
    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    const-string v4, "ESP"

    invoke-static {v4, v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->updateAndGetAllSubItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAllDriveSubItem(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "setEspModeSport "

    .line 252
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEspModeSport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setEspMudStatus(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string/jumbo v0, "setEspMudStatus: "

    const-string v1, "EspController"

    const-string v2, "isSupportEspMudMode"

    .line 260
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v3, Landroid/car/hardware/esp/CarEspManager;

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Landroid/car/hardware/esp/CarEspManager;->setOffRoadSwitch(I)V

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 265
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

    :cond_1
    :goto_1
    return-void
.end method

.method public setEspSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 297
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setEsp(Z)V

    const-string v0, "isSupportNapa"

    .line 299
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$up3TX7hlWVX_RhBovPCKzSOe1lc;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$EspController$up3TX7hlWVX_RhBovPCKzSOe1lc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mEspSw:Ljava/lang/Boolean;

    .line 304
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "esp_sw"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setEspTsmSwitchStatus(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportTrailerHook"

    .line 504
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/esp/CarEspManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/esp/CarEspManager;->setTsmSwitchStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTsmSwitchStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EspController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setHdc(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportHdc"

    .line 390
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/esp/CarEspManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/esp/CarEspManager;->setHdc(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHdc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "EspController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method
