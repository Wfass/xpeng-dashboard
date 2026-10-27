.class public Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "SystemStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$Holder;,
        Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;
    }
.end annotation


# instance fields
.field private mCacheState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgName:Ljava/lang/String;

.field private mStateListener:Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

.field private mSystemStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mPkgName:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mCacheState:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mSystemStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;
    .locals 1

    .line 224
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$Holder;->access$500()Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    move-result-object v0

    return-object v0
.end method

.method private syncState()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 155
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mCacheState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncState mapSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mCacheState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mCacheState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mCacheState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 162
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendAppState(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 164
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SystemStateManager"

    return-object v0
.end method

.method public onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V
    .locals 2

    const-string v0, "onServerConnected to do"

    .line 141
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mStateListener:Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mPkgName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 150
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->syncState()V

    return-void
.end method

.method public onServerDisconnected()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->onServerDisconnected()V

    return-void
.end method

.method public declared-synchronized registerSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateListener;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "registerListener listener:%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 23
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mSystemStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mSystemStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mSystemStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    .line 28
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mSystemStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    .line 30
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mStateListener:Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

    if-nez p2, :cond_1

    .line 31
    new-instance p2, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$StateListener;-><init>(Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager$1;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mStateListener:Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

    .line 33
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mPkgName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mStateListener:Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

    invoke-interface {p2, p1, v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 38
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p1

    .line 40
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "registerListener service is null "

    .line 43
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :goto_1
    monitor-exit p0

    return v3

    .line 46
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendAppState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "sendAppState key:%s"

    .line 77
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mCacheState:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v1, :cond_1

    .line 82
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendAppState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "sendAppState service not ready"

    .line 88
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    return v2
.end method

.method public sendSysUIData(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "sendSysUIData key:%s"

    .line 108
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v3, :cond_1

    .line 113
    :try_start_0
    invoke-interface {v3, v1, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendSysUIData(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v2
.end method

.method public sendSysUIDataArray(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "sendSysUIDataArray key:%s"

    .line 93
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v3, :cond_1

    .line 98
    :try_start_0
    invoke-interface {v3, v1, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendSysUIDataArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v2
.end method

.method public declared-synchronized unRegisterSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateListener;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "unRegisterListener listener:%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 52
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mSystemStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 54
    monitor-exit p0

    return v1

    .line 56
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mSystemStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mStateListener:Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

    if-eqz p2, :cond_3

    .line 58
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 61
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mStateListener:Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;

    invoke-interface {p2, p1, v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I

    move-result p1

    const/4 p2, 0x0

    .line 62
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->mStateListener:Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 63
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p1

    .line 65
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string p1, "unRegisterListener service is null "

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    :goto_1
    monitor-exit p0

    return v3

    .line 71
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
