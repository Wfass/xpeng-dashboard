.class public Lcom/xiaopeng/speech/NodeManager;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# instance fields
.field private mNodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

.field private mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/NodeManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/NodeManager;
    .param p1, "x1"    # Z

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/NodeManager;->subscribeNodeList(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/NodeManager;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/NodeManager;->lazyInitNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/NodeManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/NodeManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/NodeManager;Lcom/xiaopeng/speech/SpeechNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/NodeManager;
    .param p1, "x1"    # Lcom/xiaopeng/speech/SpeechNode;

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/NodeManager;->unRegister(Lcom/xiaopeng/speech/SpeechNode;)V

    return-void
.end method

.method private lazyInitNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;)",
            "Lcom/xiaopeng/speech/SpeechNode;"
        }
    .end annotation

    .line 98
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/SpeechNode;

    .line 99
    .local v0, "node":Lcom/xiaopeng/speech/SpeechNode;
    if-eqz v0, :cond_0

    .line 100
    return-object v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/SpeechNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 104
    if-nez v0, :cond_1

    .line 106
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/SpeechNode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 110
    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const-string v3, "create %s error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/NodeManager;->register(Lcom/xiaopeng/speech/SpeechNode;)V

    .line 113
    iget-object v2, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/SpeechNode;->setWorkerHandler(Landroid/os/Handler;)V

    .line 116
    :cond_1
    monitor-exit v1

    .line 117
    return-object v0

    .line 116
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private register(Lcom/xiaopeng/speech/SpeechNode;)V
    .locals 3
    .param p1, "node"    # Lcom/xiaopeng/speech/SpeechNode;

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "node %s had register"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 123
    return-void

    .line 125
    :cond_0
    const-string v0, "register node:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/NodeManager$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/NodeManager$5;-><init>(Lcom/xiaopeng/speech/NodeManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method private subscribeNodeList(Z)V
    .locals 6
    .param p1, "forceSub"    # Z

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    if-nez v0, :cond_0

    .line 153
    const-string v0, "mSubscriber == null"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 154
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;Lcom/xiaopeng/speech/SpeechNode;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/SpeechNode;

    .line 159
    .local v1, "node":Lcom/xiaopeng/speech/SpeechNode;
    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechNode;->isSubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_4

    .line 160
    :cond_1
    const-string v2, "do subscribe node:%s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechNode;->getSubscribeEvents()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechNode;->getSubscribeEvents()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    goto :goto_2

    .line 166
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechNode;->getSubscribeEvents()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/speech/coreapi/ISubscriber;->subscribe([Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    .line 168
    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/SpeechNode;->setSubscribed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_3
    goto :goto_1

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "subscribe error "

    invoke-static {p0, v3, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .end local v1    # "node":Lcom/xiaopeng/speech/SpeechNode;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    goto :goto_0

    .line 162
    .restart local v1    # "node":Lcom/xiaopeng/speech/SpeechNode;
    :cond_5
    :goto_2
    const-string v2, "getSubscribeEvents.length == 0"

    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 163
    goto :goto_0

    .line 175
    .end local v1    # "node":Lcom/xiaopeng/speech/SpeechNode;
    :cond_6
    return-void
.end method

.method private unRegister(Lcom/xiaopeng/speech/SpeechNode;)V
    .locals 2
    .param p1, "node"    # Lcom/xiaopeng/speech/SpeechNode;

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/coreapi/ISubscriber;->unSubscribe(Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 56
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/NodeManager;->lazyInitNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 0
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 28
    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2
    .param p1, "speechProxy"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 35
    if-nez p1, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getSubscriber()Lcom/xiaopeng/speech/coreapi/ISubscriber;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/NodeManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/NodeManager$1;-><init>(Lcom/xiaopeng/speech/NodeManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    .line 53
    return-void
.end method

.method public subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/xiaopeng/speech/INodeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;",
            "Lcom/xiaopeng/speech/INodeListener;",
            ")V"
        }
    .end annotation

    .line 60
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/NodeManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/NodeManager$2;-><init>(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public unSubscribe(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/NodeManager$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/NodeManager$3;-><init>(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public unSubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/xiaopeng/speech/INodeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;",
            "Lcom/xiaopeng/speech/INodeListener;",
            ")V"
        }
    .end annotation

    .line 85
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/NodeManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/NodeManager$4;-><init>(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method
