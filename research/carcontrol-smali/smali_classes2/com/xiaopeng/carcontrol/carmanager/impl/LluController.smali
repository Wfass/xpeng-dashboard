.class public Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "LluController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$LluControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/llu/CarLluManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController;"
    }
.end annotation


# static fields
.field private static final KEY_SAYHI_SW:Ljava/lang/String; = "isSayHiEnable"

.field private static final TAG:Ljava/lang/String; = "LluController"


# instance fields
.field private final mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

.field private mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;


# direct methods
.method private constructor <init>(Landroid/car/Car;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    .line 41
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 64
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$LluController$9Q6H4K8Zx-fSg_On8qA7NHrVQbA;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$LluController$9Q6H4K8Zx-fSg_On8qA7NHrVQbA;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/Car;Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;-><init>(Landroid/car/Car;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleXuiLluEffectSetFinish(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluPreviewShowStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluPreviewShowStop(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluPreviewShowFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluPreviewShowError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluSayHiSw(Z)V

    return-void
.end method

.method private handleLluAwakeMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 710
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 711
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->setLluAwakeMode(I)V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 715
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluAwakeModeChanged(I)V

    goto :goto_0

    .line 717
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

.method private handleLluChargingUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 750
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluEffectSw(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluChargingChanged(Z)V

    goto :goto_0

    .line 752
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

.method private handleLluLinkToShowEleUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 734
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluStatus(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluLinkToShowEleChanged(Z)V

    goto :goto_0

    .line 736
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

.method private handleLluPhotoUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 742
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluStatus(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluPhotoChanged(Z)V

    goto :goto_0

    .line 744
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

.method private handleLluPreviewShowError(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "errCode"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 790
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluPreviewShowError(Ljava/lang/String;I)V

    goto :goto_0

    .line 792
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

.method private handleLluPreviewShowFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 798
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluPreviewShowFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
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

.method private handleLluPreviewShowStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 814
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluPreviewShowStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 816
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

.method private handleLluPreviewShowStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 806
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluPreviewShowStop(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 808
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

.method private handleLluSayHiSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 822
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluSayHiSwChanged(Z)V

    goto :goto_0

    .line 824
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

.method private handleLluShowOffUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 766
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluStatus(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluShowOffChanged(Z)V

    goto :goto_0

    .line 768
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

.method private handleLluSleepMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 721
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 722
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->setLluSleepMode(I)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 726
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluSleepModeChanged(I)V

    goto :goto_0

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

.method private handleLluSleepUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 758
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluEffectSw(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluSleepChanged(Z)V

    goto :goto_0

    .line 760
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

.method private handleLluSwUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 701
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluStatus(I)Z

    move-result p1

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 704
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluEnableChanged(Z)V

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

.method private handleLluWakeWaitUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 774
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluEffectSw(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onLluWakeWaitChanged(Z)V

    goto :goto_0

    .line 776
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

.method private handleXuiLluEffectSetFinish(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectMode"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;

    .line 782
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/ILluController$Callback;->onXuiLluEffectSetFinish(II)V

    goto :goto_0

    .line 784
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

.method private mockLluProperty()V
    .locals 7

    .line 679
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401449

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    const/4 v5, 0x1

    .line 683
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v4, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 681
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluSw()Z

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 679
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21402e0a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 683
    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 682
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21402e0c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 685
    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 684
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401443

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    .line 687
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 686
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140144a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 689
    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 688
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140144b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 691
    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 690
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140144e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 693
    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 692
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140144f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 695
    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 694
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21401450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 697
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 696
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static parseCduCmd(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return p0
.end method

.method private static parseLluEffectSw(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseLluStatus(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected dependOnXuiManager()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected disconnect()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/llu/CarLluManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "LluController"

    .line 188
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getLluAwakeMode()I
    .locals 3

    const v0, 0x21402e0a

    .line 287
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getLluWakeWaitMode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLluAwakeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LluController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 293
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getLluAwakeMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getLluChargingSw()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluChargeSw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLluEffect(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectName"
        }
    .end annotation

    const/4 v0, 0x1

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->getMcuEffect(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLluEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "LluController"

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v0
.end method

.method public getLluSleepMode()I
    .locals 3

    const v0, 0x21402e0c

    .line 312
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getLluSleepMode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLluSleepMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LluController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getLluSleepMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getLluSleepSw()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluLockSw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLluSpeedLimitCfg()I
    .locals 4

    const v0, 0x21401446

    const/4 v1, 0x0

    .line 631
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getLluSpeedLimitCfg()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLluSpeedLimitCfg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LluController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1
.end method

.method public getLluWakeWaitSw()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getLluUnlockSw()Z

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

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "isSupportLlu"

    .line 164
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x21401449

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402e0a

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21402e0c

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    const v1, 0x2140144a

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2140144e

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2140144f

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const v1, 0x21401443

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x2140144b

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x21401450

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getRunningLluEffectName()Ljava/lang/String;
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 370
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->getRunningEffect()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRunningLluEffectName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LluController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

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

    .line 195
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LluController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluSleepMode(I)V

    goto :goto_0

    .line 201
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluAwakeMode(I)V

    goto :goto_0

    .line 220
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluPhotoUpdate(I)V

    goto :goto_0

    .line 217
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluChargingUpdate(I)V

    goto :goto_0

    .line 214
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluSleepUpdate(I)V

    goto :goto_0

    .line 211
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluShowOffUpdate(I)V

    goto :goto_0

    .line 208
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluWakeWaitUpdate(I)V

    goto :goto_0

    .line 197
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleLluSwUpdate(I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21401449 -> :sswitch_7
        0x2140144a -> :sswitch_6
        0x2140144b -> :sswitch_5
        0x2140144e -> :sswitch_4
        0x2140144f -> :sswitch_3
        0x21401450 -> :sswitch_2
        0x21402e0a -> :sswitch_1
        0x21402e0c -> :sswitch_0
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

    const-string v0, "LluController"

    const-string v1, "Init start"

    .line 88
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_llu"

    .line 90
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/llu/CarLluManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/llu/CarLluManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/llu/CarLluManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const-string p1, "Init end"

    .line 100
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 4

    const-string v0, "LluController"

    const-string v1, "Init xui manager start"

    .line 110
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getLightLanguageManager()Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v2, :cond_0

    .line 114
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;)V

    .line 150
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V

    goto :goto_0

    :cond_0
    const-string v2, "XuiSmartManager is null"

    .line 152
    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 155
    invoke-static {v0, v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    const-string v1, "Init xui manager end"

    .line 157
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isLightDanceAvailable()I
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 670
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->getDanceEffectRunnable()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 674
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLightDanceAvailable result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LluController"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isLluChargingEnable()Z
    .locals 4

    const v0, 0x2140144f

    const/4 v1, 0x0

    .line 484
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getMcuLluChargingSwitch()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move v0, v1

    .line 492
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLluChargingEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LluController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 493
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluEffectSw(I)Z

    move-result v0

    return v0
.end method

.method public isLluEnabled()Z
    .locals 4

    const v0, 0x21401449

    const/4 v1, 0x0

    .line 260
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getMcuLluEnableStatus()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move v0, v1

    .line 270
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLluEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LluController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluStatus(I)Z

    move-result v0

    return v0
.end method

.method public isLluLockUnlockEleEnabled()Z
    .locals 4

    const v0, 0x21401443

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 391
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    .line 394
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getLluLockUnlockSocDspSwitchState()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLluLockUnlockEleEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LluController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return v1
.end method

.method public isLluPhotoEnable()Z
    .locals 4

    const v0, 0x21401450

    const/4 v1, 0x0

    .line 555
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getLluPhotoSwitch()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLluPhotoEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LluController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluStatus(I)Z

    move-result v0

    return v0
.end method

.method public isLluShowOffEnable()Z
    .locals 3

    const v0, 0x2140144b

    .line 454
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getLluShowOffSwitch()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLluShowOffEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LluController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 463
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluStatus(I)Z

    move-result v0

    return v0
.end method

.method public isLluSleepEnable()Z
    .locals 4

    const v0, 0x2140144e

    const/4 v1, 0x0

    .line 522
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getMcuLluSleepSwitch()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move v0, v1

    .line 530
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLluSleepEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LluController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 531
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluEffectSw(I)Z

    move-result v0

    return v0
.end method

.method public isLluWakeWaitEnable()Z
    .locals 4

    const v0, 0x2140144a

    const/4 v1, 0x0

    .line 421
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0}, Landroid/car/hardware/llu/CarLluManager;->getMcuLluWakeWaitSwitch()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move v0, v1

    .line 429
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLluWakeWaitEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LluController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseLluEffectSw(I)Z

    move-result v0

    return v0
.end method

.method public isSayHiEnabled()Z
    .locals 3

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->getSayhiEffectEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 650
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSayHiEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LluController"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public synthetic lambda$new$0$LluController()V
    .locals 4

    .line 65
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isSayHiEnable"

    .line 67
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$2;

    const/4 v3, 0x0

    .line 69
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const/4 v3, 0x1

    .line 66
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setLangLightMusicEffect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectName"
        }
    .end annotation

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->setRhythmEffect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLangLightMusicEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setLluAwakeMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setLluWakeWaitMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluAwakeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setLluChargingSwitch(ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sendCmd",
            "needSave"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 470
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/llu/CarLluManager;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseCduCmd(Z)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluChargingSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluChargingSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 475
    :cond_0
    :goto_0
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 476
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluChargeSw(Z)V

    :cond_1
    return-void
.end method

.method public setLluEffect(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectMode"
        }
    .end annotation

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->setMcuEffect(II)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 595
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluEffectLockingMode(I)V

    .line 598
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->handleXuiLluEffectSetFinish(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 601
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setLluEffect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "LluController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLluEffectPreview(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "filename"
        }
    .end annotation

    const-string v0, "isSupportLluPreviewAutoStop"

    .line 339
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->setLluEffectPreview(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLluEffectPreview(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "filename",
            "times"
        }
    .end annotation

    const-string v0, "WeddingMarch"

    .line 344
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    const/4 v2, -0x1

    const-string v3, "LluController"

    if-nez v1, :cond_0

    const-string/jumbo p1, "setLluEffectPreview: mXuiSmartManager==null"

    .line 345
    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 349
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLluEffectPreview: effect\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {p1, v0, p3}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->playEffect(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->playEffect(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 357
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->playEffect(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setLluEffectPreview: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public setLluEnable(Z)V
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

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->setLluEnable(ZZ)V

    return-void
.end method

.method public setLluEnable(ZZ)V
    .locals 2
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

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseCduCmd(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluEnableStatus(I)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->setLightEffectEnable(Z)V

    :cond_0
    if-eqz p2, :cond_2

    .line 244
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    .line 245
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluSw(Z)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "llu_sw"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setLluEnable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "LluController"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLluLockUnlockEleSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseCduCmd(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setLluLockUnlockSocDspSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluLockUnlockEleSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setLluPhotoSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseCduCmd(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setLluPhotoSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluPhotoSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setLluShowOffSwitch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseCduCmd(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setLluShowOffSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluShowOffSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setLluSleepMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setLluSleepMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluSleepMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setLluSleepSwitch(ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sendCmd",
            "needSave"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 508
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/llu/CarLluManager;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseCduCmd(Z)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluSleepSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluSleepSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 513
    :cond_0
    :goto_0
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 514
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluLockSw(Z)V

    :cond_1
    return-void
.end method

.method public setLluSpeedLimitCfg(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/llu/CarLluManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/llu/CarLluManager;->setLluSpeedLimitCfg(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluSpeedLimitCfg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setLluWakeWaitSwitch(ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sendCmd",
            "needSave"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 407
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/llu/CarLluManager;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->parseCduCmd(Z)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/car/hardware/llu/CarLluManager;->setMcuLluWakeWaitSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLluWakeWaitSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 412
    :cond_0
    :goto_0
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mIsMainProcess:Z

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 413
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setLluUnlockSw(Z)V

    :cond_1
    return-void
.end method

.method public setPause(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pause"
        }
    .end annotation

    .line 581
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz p1, :cond_0

    .line 583
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->stopEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSayHiEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    .line 658
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->setSayhiEffectEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSayHiEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "LluController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopLluEffectPreview()V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-eqz v0, :cond_0

    const-string v0, "LluController"

    const-string/jumbo v1, "stopLluEffectPreview"

    const/4 v2, 0x0

    .line 327
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->mLluManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->stopEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopLluEffectPreview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method
