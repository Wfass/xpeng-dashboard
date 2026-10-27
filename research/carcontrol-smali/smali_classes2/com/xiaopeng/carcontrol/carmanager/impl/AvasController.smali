.class public Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "AvasController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$AvasControllerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/avas/CarAvasManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController;"
    }
.end annotation


# static fields
.field private static final AVAS_LOUD_SPEAKER_SW:Ljava/lang/String; = "avas_speaker"

.field private static final SAY_HI_AVAS_SW:Ljava/lang/String; = "avasGearAvhSayhiEnable"

.field protected static final TAG:Ljava/lang/String; = "AvasController"


# instance fields
.field private mBootEffect:Ljava/lang/Integer;

.field private mBootEffectBeforeSw:Ljava/lang/Integer;

.field private final mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mSoundResourceManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

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

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffect:Ljava/lang/Integer;

    const/4 p1, 0x2

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffectBeforeSw:Ljava/lang/Integer;

    .line 49
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    .line 81
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$x4MQBIul6B1-hVTX2-caoSNWxoQ;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$x4MQBIul6B1-hVTX2-caoSNWxoQ;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleCarEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;)Ljava/lang/Integer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffect:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffect:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleBootEffectChanged(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffectBeforeSw:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasSayHiSw(Z)V

    return-void
.end method

.method private handleAvasAcChargingUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 931
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasAcChargingChanged(Z)V

    goto :goto_0

    .line 933
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

.method private handleAvasDcChargingUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 939
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasDcChargingChanged(Z)V

    goto :goto_0

    .line 941
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

.method private handleAvasDisconnectChargingUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 947
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasDisconnectChargingChanged(Z)V

    goto :goto_0

    .line 949
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

.method private handleAvasExternalSwUpdate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 953
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 954
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->setAvasExternalSw(Z)V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    .line 958
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasExternalSwChanged(Z)V

    goto :goto_0

    .line 960
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

.method private handleAvasExternalVolumeUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    .line 966
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasExternalVolumeChanged(I)V

    goto :goto_0

    .line 968
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

.method private handleAvasSayHiSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    .line 1014
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasSayHiSwChanged(Z)V

    goto :goto_0

    .line 1016
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

.method private handleAvasSleepUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 923
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasSleepChanged(Z)V

    goto :goto_0

    .line 925
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

.method private handleAvasTakePhotoUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 974
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasTakePhotoChanged(Z)V

    goto :goto_0

    .line 976
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

.method private handleAvasWakeWaitFullChargeUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 915
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasWakeWaitFullChargeChanged(Z)V

    goto :goto_0

    .line 917
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

.method private handleAvasWakeWaitUpdate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 907
    :goto_1
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasWakeWaitChanged(Z)V

    goto :goto_0

    .line 909
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

.method private handleBootEffectChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bootEffect"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    .line 1022
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onBootEffectChanged(I)V

    goto :goto_0

    .line 1024
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

.method private handleFriendSoundTypeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    .line 1030
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onFriendSoundTypeChanged(I)V

    goto :goto_0

    .line 1032
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

.method private handleLowSpdVolumeUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    .line 890
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasLowSpdVolumeChanged(I)V

    goto :goto_0

    .line 892
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

.method private mockAvasProperty()V
    .locals 6

    .line 838
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21403207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x1

    .line 839
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 838
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21403208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    iget-boolean v5, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 842
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasEffect()I

    move-result v4

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 840
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mockExtAvasValue()V

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

    const v0, 0x21403207

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21403208

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-nez v0, :cond_0

    const v0, 0x2140320b

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21403201

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21403202

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21403203

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21403204

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21403205

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x21403206

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x2140320e

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected dependOnXuiManager()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected disconnect()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/avas/CarAvasManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "AvasController"

    .line 162
    invoke-static {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAvasExternalVolume()I
    .locals 3

    const-string v0, "isNewAvasArch"

    .line 582
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x2140320b

    .line 585
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getAvasExternalVolume()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvasExternalVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AvasController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 591
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasOtherVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAvasSayHiSw()Z
    .locals 4

    const-string v0, "isNewAvasArch"

    .line 645
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "avasGearAvhSayhiEnable"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public getAvasSpeakerSw()Z
    .locals 4

    const-string v0, "isSupportAvasLoudSpeaker"

    .line 795
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "avas_speaker"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 799
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultimediaSw, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AvasController"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public getBootEffectBeforeSw()I
    .locals 1

    const-string v0, "isSupportBootSoundEffect"

    .line 765
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getBootEffectBeforeSw()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffectBeforeSw:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getBootSoundEffect()I
    .locals 7

    const-string v0, "isSupportBootSoundEffect"

    .line 717
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "isSupportThemeBootEffect"

    .line 718
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AvasController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mSoundResourceManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 724
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->getBootSoundOnOff()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 725
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mSoundResourceManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 727
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->getResId()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move v0, v2

    .line 730
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBootSoundEffect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    move v1, v3

    :goto_1
    if-ne v0, v3, :cond_1

    move v2, v1

    :cond_1
    return v2

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_3

    .line 737
    :try_start_2
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->getBootSoundEffect()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    :catch_2
    move-exception v0

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBootSoundEffect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 744
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getBootEffect()I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    :goto_2
    return v0

    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method public getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .locals 3

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mSoundResourceManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBootSoundResourceArray: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AvasController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFriendSoundType()I
    .locals 4

    const-string v0, "isNewAvasArch"

    .line 325
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getSayHiEffect()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v1, :cond_1

    .line 329
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->getSayHiEffect()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFriendSoundType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AvasController"

    invoke-static {v3, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getLowSpdSoundType()I
    .locals 5

    const-string v0, "AvasController"

    const v1, 0x21403208

    const/4 v2, 0x0

    .line 272
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v1}, Landroid/car/hardware/avas/CarAvasManager;->getAvasLowSpeedSound()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLowSpdSoundType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasEffect()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 281
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLowSpdSoundType, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public getLowSpdSoundVolume()I
    .locals 3

    const-string v0, "isNewAvasArch"

    .line 305
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x2140320c

    .line 308
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getLowSpeedVolume()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLowSpdSoundVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AvasController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 314
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

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

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->addExtPropertyIds(Ljava/util/List;)V

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

    .line 169
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle unknown event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvasController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasTakePhotoUpdate(I)V

    goto/16 :goto_0

    .line 179
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleLowSpdVolumeUpdate(I)V

    goto/16 :goto_0

    .line 205
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasExternalVolumeUpdate(I)V

    goto/16 :goto_0

    .line 175
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleLowSpdEffectUpdate(I)V

    goto :goto_0

    .line 171
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleLowSpdEnableUpdate(I)V

    goto :goto_0

    .line 202
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasDisconnectChargingUpdate(I)V

    goto :goto_0

    .line 199
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasDcChargingUpdate(I)V

    goto :goto_0

    .line 196
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasAcChargingUpdate(I)V

    goto :goto_0

    .line 193
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasSleepUpdate(I)V

    goto :goto_0

    .line 190
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasWakeWaitFullChargeUpdate(I)V

    goto :goto_0

    .line 187
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasWakeWaitUpdate(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21403201
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleLowSpdEffectUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 880
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    .line 882
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasLowSpdEffectChanged(I)V

    goto :goto_0

    .line 884
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

.method protected handleLowSpdEnableUpdate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 872
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;

    .line 874
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;->onAvasLowSpdChanged(Z)V

    goto :goto_1

    .line 876
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

    const-string v0, "AvasController"

    const-string v1, "Init start"

    .line 102
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "xp_avas"

    .line 104
    invoke-virtual {p1, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/avas/CarAvasManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/avas/CarAvasManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mPropertyIds:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarAvasEventCallback:Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    invoke-virtual {p1, v1, v2}, Landroid/car/hardware/avas/CarAvasManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-static {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    const-string p1, "Init end"

    .line 114
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initXuiManager()V
    .locals 2

    const-string v0, "AvasController"

    const-string v1, "Init xui manager start"

    .line 124
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getSmartManager()Lcom/xiaopeng/xuimanager/smart/SmartManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    .line 126
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getSoundResManager()Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mSoundResourceManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    const-string v1, "Init xui manager end"

    .line 127
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAvasAcChargingEnable()Z
    .locals 5

    const-string v0, "isNewAvasArch"

    .line 471
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x21403204

    const/4 v2, 0x1

    .line 474
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getAvasAcChargingSwitch()I

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

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvasAcChargingEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AvasController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1
    return v1
.end method

.method public isAvasDcChargingEnable()Z
    .locals 5

    const-string v0, "isNewAvasArch"

    .line 503
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x21403205

    const/4 v2, 0x1

    .line 506
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getAvasDcChargingSwitch()I

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

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvasDcChargingEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AvasController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1
    return v1
.end method

.method public isAvasDisconnectChargingEnable()Z
    .locals 5

    const-string v0, "isNewAvasArch"

    .line 535
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x21403206

    const/4 v2, 0x1

    .line 538
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getAvasDisconnectChargingSwitch()I

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

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvasDisconnectChargingEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AvasController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1
    return v1
.end method

.method public isAvasExternalEnabled()Z
    .locals 1

    const-string v0, "isNewAvasArch"

    .line 562
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->getInstance()Lcom/xiaopeng/carcontrol/model/DebugFuncModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DebugFuncModel;->isAvasExternalSwEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvasSleepEnable()Z
    .locals 5

    const-string v0, "isNewAvasArch"

    .line 439
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x21403203

    const/4 v2, 0x1

    .line 442
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getAvasSleepSwitch()I

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

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvasSleepEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AvasController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1
    return v1
.end method

.method public isAvasTakePhotoEnable()Z
    .locals 4

    const-string v0, "isNewAvasArch"

    .line 614
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x2140320e

    .line 617
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getAvasPhotoSoundSwitch()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :catch_1
    move-exception v0

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvasTakePhotoEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AvasController"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return v1
.end method

.method public isAvasWakeWaitEnable()Z
    .locals 5

    const-string v0, "isNewAvasArch"

    .line 375
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x21403201

    const/4 v2, 0x1

    .line 378
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getAvasWakeWaitSwitch()I

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

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvasWakeWaitEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AvasController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1
    return v1
.end method

.method public isAvasWakeWaitFullChargeEnable()Z
    .locals 5

    const-string v0, "isNewAvasArch"

    .line 407
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x21403202

    const/4 v2, 0x1

    .line 410
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0}, Landroid/car/hardware/avas/CarAvasManager;->getAvasWakeWaitFullChargeSwitch()I

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

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvasWakeWaitFullChargeEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AvasController"

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1
    return v1
.end method

.method public isLowSpdSoundEnabled()Z
    .locals 6

    const-string v0, "AvasController"

    const v1, 0x21403207

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getIntProperty(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v1}, Landroid/car/hardware/avas/CarAvasManager;->getAvasLowSpeedSoundSwitch()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLowSpdSoundEnabled, status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    return v2

    :catch_1
    move-exception v1

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLowSpdSoundEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public synthetic lambda$new$0$AvasController()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_effect"

    const/4 v2, 0x2

    .line 85
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffect:Ljava/lang/Integer;

    const-string v1, "boot_effect_before_sw"

    .line 87
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffectBeforeSw:Ljava/lang/Integer;

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->registerContentObserver()V

    return-void
.end method

.method public synthetic lambda$setAvasExternalSw$1$AvasController(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 556
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasExternalSwUpdate(Z)V

    return-void
.end method

.method public synthetic lambda$setAvasSayHiSw$2$AvasController(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 638
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleAvasSayHiSw(Z)V

    return-void
.end method

.method public synthetic lambda$setBootSoundEffect$3$AvasController(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "type"
        }
    .end annotation

    .line 687
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleBootEffectChanged(I)V

    return-void
.end method

.method protected mockExtAvasValue()V
    .locals 7

    .line 848
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140320c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    const/16 v5, 0x64

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 850
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasVolume()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 848
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21403201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x1

    .line 852
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 851
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21403202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 854
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 853
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21403203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 856
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 855
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21403204

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 858
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 857
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21403205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 860
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 859
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x21403206

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    .line 862
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 861
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140320e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    const/4 v4, 0x0

    .line 864
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 863
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x2140320b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/car/hardware/CarPropertyValue;

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    .line 867
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getAvasOtherVolume()I

    move-result v5

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 865
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected registerContentObserver()V
    .locals 4

    .line 980
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 982
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    const-string v1, "boot_effect"

    .line 1004
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1003
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "boot_effect_before_sw"

    .line 1006
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mContentObserver:Landroid/database/ContentObserver;

    .line 1005
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAvasAcChargingSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 459
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasAcChargingSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvasAcChargingSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setAvasDcChargingSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 491
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasDcChargingSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvasDcChargingSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setAvasDisconnectChargingSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 523
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasDisconnectChargingSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvasDisconnectChargingSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setAvasExternalSound(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 655
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasExternalSound(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAvasExternalSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAvasExternalSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 555
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$qlceixTni5t8z5cmJpnE8FAcxqE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$qlceixTni5t8z5cmJpnE8FAcxqE;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setAvasExternalVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 571
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasExternalVolume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAvasExternalVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAvasSayHiSw(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 634
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avasGearAvhSayhiEnable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$h3FIzWEwNfZKl6JKv3Ybzsr4ouo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$h3FIzWEwNfZKl6JKv3Ybzsr4ouo;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Z)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setAvasSleepSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 427
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasSleepSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvasSleepSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setAvasSpeakerSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultimediaSw, enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AvasController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "isSupportAvasLoudSpeaker"

    .line 786
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_speaker"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setAvasTakePhotoSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 602
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasPhotoSoundSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvasTakePhotoSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setAvasWakeWaitFullChargeSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 395
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasWakeWaitFullChargeSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvasWakeWaitFullChargeSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setAvasWakeWaitSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 363
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasWakeWaitSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvasWakeWaitSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setBootEffectBeforeSw(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "isSupportBootSoundEffect"

    .line 752
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBootEffectBeforeSw(I)V

    goto :goto_0

    .line 756
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mBootEffectBeforeSw:Ljava/lang/Integer;

    .line 757
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_effect_before_sw"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setBootSoundEffect(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x1

    .line 677
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->setBootSoundEffect(IZ)V

    return-void
.end method

.method public setBootSoundEffect(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "needSave"
        }
    .end annotation

    const-string v0, "isSupportBootSoundEffect"

    .line 682
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 685
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setBootEffect(I)V

    .line 687
    :cond_0
    new-instance p2, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$VSrSdZ96DGDcoPhWTfqtFe20uGw;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$VSrSdZ96DGDcoPhWTfqtFe20uGw;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;I)V

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 689
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "boot_effect"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p2, "isSupportThemeBootEffect"

    .line 690
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string/jumbo v0, "setBootSoundEffect: "

    const-string v1, "AvasController"

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 691
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mSoundResourceManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    .line 694
    :try_start_0
    invoke-virtual {p2, v2}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->setBootSoundOnOff(Z)I

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 696
    invoke-virtual {p2, v3}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->setBootSoundOnOff(Z)I

    .line 697
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mSoundResourceManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;->setBootSoundResource(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 704
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz p2, :cond_4

    .line 706
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setBootSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 708
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setExternalSoundModeCmd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 666
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avas/CarAvasManager;->setExternalSoundModeCmd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExternalSoundModeCmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setFriendSoundType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 343
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setSayHiEffect(I)V

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "say_hi_effect"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mXuiSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-eqz v0, :cond_1

    .line 352
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->setSayHiEffect(I)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->getFriendSoundType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->handleFriendSoundTypeChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFriendSoundType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setLockAvasNewSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportLockUnLockRspSep"

    .line 816
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setLockUnlockSoundSwitchStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLockAvasNewSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setLockAvasSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportNewAvasUnlockResponse"

    .line 805
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setLockUnlockSoundSwitchStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLockAvasSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setLowSpdSoundEnable(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "AvasController"

    const/4 v1, 0x0

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/car/hardware/avas/CarAvasManager;->setAvasLowSpeedSoundSwitch(I)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLowSpdSoundEnable, enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLowSpdSoundEnable: "

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

.method public setLowSpdSoundType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->setLowSpdSoundType(IZ)V

    return-void
.end method

.method public setLowSpdSoundType(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "needSave"
        }
    .end annotation

    const-string v0, "AvasController"

    const/4 v1, 0x0

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v2, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v2, p1}, Landroid/car/hardware/avas/CarAvasManager;->setAvasLowSpeedSound(I)V

    if-eqz p2, :cond_1

    .line 255
    iget-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz p2, :cond_0

    .line 256
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAvasEffect(I)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "avas_effect"

    invoke-static {p2, v2, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLowSpdSoundType, type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLowSpdSoundType: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setLowSpdSoundVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const-string v0, "isNewAvasArch"

    .line 287
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v0, Landroid/car/hardware/avas/CarAvasManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/avas/CarAvasManager;->setLowSpeedVolume(I)V

    .line 291
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setAvasVolume(I)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_volume"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLowSpdSoundVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUnLockAvasNewSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportLockUnLockRspSep"

    .line 828
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast v1, Landroid/car/hardware/avas/CarAvasManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/car/hardware/avas/CarAvasManager;->setUnlockSoundSwitchStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUnLockAvasNewSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AvasController"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void
.end method
