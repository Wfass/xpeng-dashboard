.class public Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;
.super Ljava/lang/Object;
.source "XuiClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XuiClientWrapper"


# instance fields
.field private mAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

.field private mCtiManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

.field private mIsXuiSvcConnected:Z

.field private mLightLanguageManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

.field private mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field private mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

.field private final mResourceServiceApiCallExecutor:Ljava/util/concurrent/Executor;

.field private final mResourceServiceConnectThread:Ljava/util/concurrent/Executor;

.field private mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

.field private mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

.field private mSoundResManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

.field private mXAppManager:Lcom/xiaopeng/xuimanager/xapp/XAppManager;

.field private mXUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

.field private final mXuiClientReady:Ljava/lang/Object;

.field private final mXuiConnectionCb:Landroid/content/ServiceConnection;

.field private mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiClientReady:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mIsXuiSvcConnected:Z

    const/4 v0, 0x4

    .line 60
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mResourceServiceApiCallExecutor:Ljava/util/concurrent/Executor;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mResourceServiceConnectThread:Ljava/util/concurrent/Executor;

    .line 68
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiConnectionCb:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->initXuiManagers()V

    return-void
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mIsXuiSvcConnected:Z

    return p1
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;
    .locals 1

    .line 86
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper$SingleHolder;->access$200()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    return-object v0
.end method

.method private initControllerXuiManager()V
    .locals 6

    const-string v0, "XuiClientWrapper"

    const-string v1, "initControllerXuiManager start"

    .line 173
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    sget-object v1, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->CAR_SVC_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 176
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->dependOnXuiManager()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;->initXuiManager()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "initControllerXuiManager end"

    .line 182
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initXuiManagers()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string v3, "operation"

    .line 129
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/operation/OperationManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    const-string v2, "isSupportAtl"

    .line 131
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->unregisterAllListeners()V

    .line 134
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    .line 136
    :cond_0
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-direct {v2, v3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    .line 137
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->isSupportAtlApiControl()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string/jumbo v3, "smart"

    .line 140
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/smart/SmartManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    .line 142
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string v3, "contextinfo"

    .line 143
    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mCtiManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    .line 145
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string/jumbo v3, "xapp"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/xapp/XAppManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXAppManager:Lcom/xiaopeng/xuimanager/xapp/XAppManager;

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string/jumbo v3, "userscenario"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    .line 148
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string v3, "mediacenter"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 149
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string v3, "lightlanuage"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mLightLanguageManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    .line 150
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string/jumbo v3, "sndresource"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mSoundResManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    const-string v2, "isSupportSeatMassage"

    .line 151
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "isSupportSeatRhythm"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    const-string/jumbo v3, "seatmassager"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    :cond_4
    const-string v2, "XuiClientWrapper"

    const-string v3, "initXuiManagers end, notify CarClientWrapper"

    .line 155
    invoke-static {v2, v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiClientReady:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    .line 157
    :try_start_1
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mIsXuiSvcConnected:Z

    .line 158
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiClientReady:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnectedSync()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$XuiClientWrapper$NYKi0CiZYdSFuK33PvSjx9CqQ9s;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$XuiClientWrapper$NYKi0CiZYdSFuK33PvSjx9CqQ9s;-><init>(Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;)V

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 159
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const-string v3, "XuiClientWrapper"

    .line 165
    invoke-static {v3, v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic lambda$NYKi0CiZYdSFuK33PvSjx9CqQ9s(Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->initControllerXuiManager()V

    return-void
.end method


# virtual methods
.method public connectToXui()V
    .locals 4

    .line 93
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mIsXuiSvcConnected:Z

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiConnectionCb:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 95
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    const-string v0, "XuiClientWrapper"

    const-string v1, "Start to connect XUI service"

    .line 96
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mIsXuiSvcConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->disconnect()V

    :cond_0
    return-void
.end method

.method public getAtlManager()Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mAtlManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;

    return-object v0
.end method

.method public getCtiManager()Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mCtiManager:Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    return-object v0
.end method

.method public getCurrentBtStatus()I
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 261
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getBtStatus()I

    move-result v1

    const-string v0, "XuiClientWrapper"

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentBtStatus status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public getLightLanguageManager()Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mLightLanguageManager:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    return-object v0
.end method

.method public getMediaCenterManager()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    return-object v0
.end method

.method public getOperationManager()Lcom/xiaopeng/xuimanager/operation/OperationManager;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    return-object v0
.end method

.method public getResourceServiceApiCallExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mResourceServiceApiCallExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getSeatMassagerManager()Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mSeatMassagerManager:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    return-object v0
.end method

.method public getSmartManager()Lcom/xiaopeng/xuimanager/smart/SmartManager;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    return-object v0
.end method

.method public getSoundResManager()Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mSoundResManager:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    return-object v0
.end method

.method public getXAppManager()Lcom/xiaopeng/xuimanager/xapp/XAppManager;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXAppManager:Lcom/xiaopeng/xuimanager/xapp/XAppManager;

    return-object v0
.end method

.method public getXUserScenarioManager()Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXUserScenarioManager:Lcom/xiaopeng/xuimanager/userscenario/UserScenarioManager;

    return-object v0
.end method

.method isXuiServiceConnected()Z
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiClientReady:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mIsXuiSvcConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "XuiClientWrapper"

    const-string v2, "Waiting XUI service connected"

    const/4 v3, 0x0

    .line 116
    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiClientReady:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "XuiClientWrapper"

    const/4 v3, 0x0

    .line 119
    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 122
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 123
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public playBtMedia()V
    .locals 2

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->isBtDeviceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->playBtMedia()V

    const-string v0, "XuiClientWrapper"

    const-string v1, "playBtMedia"

    .line 232
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public requestMediaButton(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mXuiManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->registerObserver()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->requestMediaButton(ZLandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setBtVolume(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    int-to-float v1, p1

    .line 244
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->setBtVolume(F)V

    const-string v0, "XuiClientWrapper"

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBtVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
