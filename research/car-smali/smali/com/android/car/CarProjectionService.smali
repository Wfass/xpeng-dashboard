.class Lcom/android/car/CarProjectionService;
.super Landroid/car/ICarProjection$Stub;
.source "CarProjectionService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarProjectionService$ListenerInfo;,
        Lcom/android/car/CarProjectionService$ListenerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/car/ICarProjection$Stub;",
        "Lcom/android/car/CarServiceBase;",
        "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<",
        "Landroid/car/ICarProjectionCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

.field private mBound:Z

.field private final mCarInputService:Lcom/android/car/CarInputService;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLongVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

.field private mRegisteredService:Landroid/content/Intent;

.field private final mVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/car/CarInputService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carInputService"    # Lcom/android/car/CarInputService;

    .line 84
    invoke-direct {p0}, Landroid/car/ICarProjection$Stub;-><init>()V

    .line 44
    new-instance v0, Lcom/android/car/CarProjectionService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarProjectionService$1;-><init>(Lcom/android/car/CarProjectionService;)V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 53
    new-instance v0, Lcom/android/car/CarProjectionService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarProjectionService$2;-><init>(Lcom/android/car/CarProjectionService;)V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mLongVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    .line 62
    new-instance v0, Lcom/android/car/CarProjectionService$3;

    invoke-direct {v0, p0}, Lcom/android/car/CarProjectionService$3;-><init>(Lcom/android/car/CarProjectionService;)V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mConnection:Landroid/content/ServiceConnection;

    .line 85
    iput-object p1, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/car/CarProjectionService;->mCarInputService:Lcom/android/car/CarInputService;

    .line 87
    new-instance v0, Lcom/android/car/CarProjectionService$ListenerHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarProjectionService$ListenerHolder;-><init>(Lcom/android/car/CarProjectionService;Lcom/android/car/CarProjectionService$1;)V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarProjectionService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->handleVoiceAssitantRequest(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/car/CarProjectionService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/car/CarProjectionService;->mBound:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/car/CarProjectionService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 38
    iput-object p1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;

    .line 38
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->unbindServiceIfBound()V

    return-void
.end method

.method private bindToService(Landroid/content/Intent;)V
    .locals 4
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 124
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 126
    return-void

    .line 122
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dispatchVoiceAssistantRequest(Landroid/car/ICarProjectionCallback;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/car/ICarProjectionCallback;
    .param p2, "fromLongPress"    # Z

    .line 225
    :try_start_0
    invoke-interface {p1, p2}, Landroid/car/ICarProjectionCallback;->onVoiceAssistantRequest(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    :goto_0
    return-void
.end method

.method private declared-synchronized handleVoiceAssitantRequest(Z)V
    .locals 4
    .param p1, "isTriggeredByLongPress"    # Z

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    invoke-virtual {v0}, Lcom/android/car/CarProjectionService$ListenerHolder;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 141
    .local v1, "listener":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionCallback;>;"
    move-object v2, v1

    check-cast v2, Lcom/android/car/CarProjectionService$ListenerInfo;

    .line 142
    .local v2, "listenerInfo":Lcom/android/car/CarProjectionService$ListenerInfo;
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/car/CarProjectionService$ListenerInfo;->access$500(Lcom/android/car/CarProjectionService$ListenerInfo;I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 144
    invoke-static {v2, v3}, Lcom/android/car/CarProjectionService$ListenerInfo;->access$500(Lcom/android/car/CarProjectionService$ListenerInfo;I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 146
    :cond_1
    iget-object v3, v2, Lcom/android/car/CarProjectionService$ListenerInfo;->binderInterface:Landroid/os/IInterface;

    check-cast v3, Landroid/car/ICarProjectionCallback;

    invoke-direct {p0, v3, p1}, Lcom/android/car/CarProjectionService;->dispatchVoiceAssistantRequest(Landroid/car/ICarProjectionCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v1    # "listener":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionCallback;>;"
    .end local v2    # "listenerInfo":Lcom/android/car/CarProjectionService$ListenerInfo;
    :cond_2
    goto :goto_0

    .line 149
    :cond_3
    monitor-exit p0

    return-void

    .line 139
    .end local p1    # "isTriggeredByLongPress":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarProjectionService;
    throw p1
.end method

.method private unbindServiceIfBound()V
    .locals 2

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarProjectionService;->mBound:Z

    if-nez v0, :cond_0

    .line 131
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarProjectionService;->mBound:Z

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateCarInputServiceListeners()V
    .locals 6

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "listenShortPress":Z
    const/4 v1, 0x0

    .line 176
    .local v1, "listenLongPress":Z
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    invoke-virtual {v2}, Lcom/android/car/CarProjectionService$ListenerHolder;->getInterfaces()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 179
    .local v3, "listener":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionCallback;>;"
    move-object v4, v3

    check-cast v4, Lcom/android/car/CarProjectionService$ListenerInfo;

    .line 180
    .local v4, "listenerInfo":Lcom/android/car/CarProjectionService$ListenerInfo;
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/car/CarProjectionService$ListenerInfo;->access$500(Lcom/android/car/CarProjectionService$ListenerInfo;I)Z

    move-result v5

    or-int/2addr v0, v5

    .line 182
    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/car/CarProjectionService$ListenerInfo;->access$500(Lcom/android/car/CarProjectionService$ListenerInfo;I)Z

    move-result v5

    or-int/2addr v1, v5

    .line 184
    .end local v3    # "listener":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionCallback;>;"
    .end local v4    # "listenerInfo":Lcom/android/car/CarProjectionService$ListenerInfo;
    goto :goto_0

    .line 185
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mCarInputService:Lcom/android/car/CarInputService;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 187
    iget-object v4, p0, Lcom/android/car/CarProjectionService;->mVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    goto :goto_1

    .line 186
    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/car/CarInputService;->setVoiceAssistantKeyListener(Lcom/android/car/CarInputService$KeyEventListener;)V

    .line 188
    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mCarInputService:Lcom/android/car/CarInputService;

    if-eqz v1, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/car/CarProjectionService;->mLongVoiceAssistantKeyListener:Lcom/android/car/CarInputService$KeyEventListener;

    nop

    .line 188
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/car/CarInputService;->setLongVoiceAssistantKeyListener(Lcom/android/car/CarInputService$KeyEventListener;)V

    .line 190
    return-void

    .line 185
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 212
    const-string v0, "**CarProjectionService**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    invoke-virtual {v0}, Lcom/android/car/CarProjectionService$ListenerHolder;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 216
    .local v1, "listener":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionCallback;>;"
    move-object v2, v1

    check-cast v2, Lcom/android/car/CarProjectionService$ListenerInfo;

    .line 217
    .local v2, "listenerInfo":Lcom/android/car/CarProjectionService$ListenerInfo;
    invoke-virtual {v2}, Lcom/android/car/CarProjectionService$ListenerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .end local v1    # "listener":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionCallback;>;"
    .end local v2    # "listenerInfo":Lcom/android/car/CarProjectionService$ListenerInfo;
    goto :goto_0

    .line 219
    :cond_0
    monitor-exit p0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 0

    .line 195
    return-void
.end method

.method public onBinderDeath(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "Landroid/car/ICarProjectionCallback;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "bInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionCallback;>;"
    iget-object v0, p1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v0, Landroid/car/ICarProjectionCallback;

    invoke-virtual {p0, v0}, Lcom/android/car/CarProjectionService;->unregisterProjectionListener(Landroid/car/ICarProjectionCallback;)V

    .line 208
    return-void
.end method

.method public registerProjectionListener(Landroid/car/ICarProjectionCallback;I)V
    .locals 4
    .param p1, "listener"    # Landroid/car/ICarProjectionCallback;
    .param p2, "filter"    # I

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    invoke-virtual {v0, p1}, Lcom/android/car/CarProjectionService$ListenerHolder;->getBinderInterface(Landroid/os/IInterface;)Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarProjectionService$ListenerInfo;

    .line 155
    .local v0, "info":Lcom/android/car/CarProjectionService$ListenerInfo;
    if-nez v0, :cond_0

    .line 156
    new-instance v1, Lcom/android/car/CarProjectionService$ListenerInfo;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/android/car/CarProjectionService$ListenerInfo;-><init>(Lcom/android/car/CarProjectionService$ListenerHolder;Landroid/car/ICarProjectionCallback;ILcom/android/car/CarProjectionService$1;)V

    move-object v0, v1

    .line 157
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    invoke-virtual {v1, v0}, Lcom/android/car/CarProjectionService$ListenerHolder;->addBinderInterface(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {v0, p2}, Lcom/android/car/CarProjectionService$ListenerInfo;->access$700(Lcom/android/car/CarProjectionService$ListenerInfo;I)V

    .line 161
    .end local v0    # "info":Lcom/android/car/CarProjectionService$ListenerInfo;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->updateCarInputServiceListeners()V

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerProjectionRunner(Landroid/content/Intent;)V
    .locals 3
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "CAR.PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering new service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] while old service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] is still running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->unbindServiceIfBound()V

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->bindToService(Landroid/content/Intent;)V

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    invoke-virtual {v0}, Lcom/android/car/CarProjectionService$ListenerHolder;->clear()V

    .line 201
    monitor-exit p0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterProjectionListener(Landroid/car/ICarProjectionCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/ICarProjectionCallback;

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mAllListeners:Lcom/android/car/CarProjectionService$ListenerHolder;

    invoke-virtual {v0, p1}, Lcom/android/car/CarProjectionService$ListenerHolder;->removeBinder(Landroid/os/IInterface;)V

    .line 169
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->updateCarInputServiceListeners()V

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterProjectionRunner(Landroid/content/Intent;)V
    .locals 3
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "CAR.PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to unbind unregistered service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]. Registered service["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->unbindServiceIfBound()V

    .line 117
    return-void

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
