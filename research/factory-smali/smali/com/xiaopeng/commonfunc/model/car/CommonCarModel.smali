.class public abstract Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.super Ljava/lang/Object;
.source "CommonCarModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/car/hardware/CarEcuManager;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mCarEcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

.field private volatile mCarEcuManager:Landroid/car/hardware/CarEcuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mCarEventChangedListener:Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

.field private final mIdsWithCachelist:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdslist:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdslist:Ljava/util/Collection;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdsWithCachelist:Ljava/util/Collection;

    .line 27
    new-instance v0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/EventBusUtil;->registerEventBus(Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->initCarManager()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;)Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEventChangedListener:Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

    return-object v0
.end method

.method private initCarManager()V
    .locals 2

    .line 56
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    if-nez v0, :cond_2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/CarHelper;->getCar()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/CarHelper;->getCar()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 61
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/CarHelper;->getCar()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/CarEcuManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/car/CarNotConnectedException;
    :try_start_2
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 64
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    goto :goto_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 71
    :cond_2
    :goto_2
    return-void
.end method

.method private registerPropCallback(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPropCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->initCarManager()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/CarEcuManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "registerPropCallback carEcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 127
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method private registerPropCallbackWithCache(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "registerPropCallbackWithCache"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->initCarManager()V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/car/hardware/CarEcuManager;->registerPropCallbackWithFlag(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;I)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "registerPropCallbackWithCache carEcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 156
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method


# virtual methods
.method public getCarManager()Landroid/car/hardware/CarEcuManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->initCarManager()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    return-object v0
.end method

.method protected abstract getServiceName()Ljava/lang/String;
.end method

.method public onDestroy()V
    .locals 4

    .line 159
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/EventBusUtil;->unregisterEventBus(Ljava/lang/Object;)V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/CarEcuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdslist:Ljava/util/Collection;

    monitor-enter v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdslist:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 166
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdsWithCachelist:Ljava/util/Collection;

    monitor-enter v0
    :try_end_2
    .catch Landroid/car/CarNotConnectedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdsWithCachelist:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 169
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEventChangedListener:Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

    .line 171
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "disconnect CarEcuManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/car/CarNotConnectedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 175
    goto :goto_0

    .line 169
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Landroid/car/CarNotConnectedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 166
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Landroid/car/CarNotConnectedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/car/CarNotConnectedException;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect CarEcuManager failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Integer;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 75
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x3f5d3d8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "onEvent CAR_SERVICE_CONNECTED"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->initCarManager()V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdslist:Ljava/util/Collection;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdslist:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdslist:Ljava/util/Collection;

    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->registerPropCallback(Ljava/util/Collection;)V

    .line 83
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdsWithCachelist:Ljava/util/Collection;

    monitor-enter v1

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdsWithCachelist:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdsWithCachelist:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->registerPropCallbackWithCache(Ljava/util/Collection;)V

    .line 88
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    new-instance v0, Landroid/car/hardware/CarPropertyValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/car/hardware/CarPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 90
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEventChangedListener:Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEventChangedListener:Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 95
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    :cond_3
    :goto_0
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 83
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public registerPropCallback(Ljava/util/Collection;Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;",
            ")V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "registerPropCallback listener"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdslist:Ljava/util/Collection;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdslist:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 101
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEventChangedListener:Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

    .line 102
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->registerPropCallback(Ljava/util/Collection;)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerPropCallbackWithCache(Ljava/util/Collection;Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;",
            ")V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "registerPropCallbackWithCache listener"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdsWithCachelist:Ljava/util/Collection;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mIdsWithCachelist:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 110
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEventChangedListener:Lcom/xiaopeng/commonfunc/model/car/CarEventChangedListener;

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->registerPropCallbackWithCache(Ljava/util/Collection;)V

    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterPropCallback(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;, "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<TT;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterPropCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->initCarManager()V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuManager:Landroid/car/hardware/CarEcuManager;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->mCarEcuEventCallback:Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/CarEcuManager;->unregisterPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;->TAG:Ljava/lang/String;

    const-string v1, "registerPropCallback carEcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 141
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method
