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

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/NodeManager;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/NodeManager;->subscribeNodeList(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/NodeManager;->lazyInitNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/NodeManager;)Ljava/util/Map;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/NodeManager;Lcom/xiaopeng/speech/SpeechNode;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/NodeManager;->unRegister(Lcom/xiaopeng/speech/SpeechNode;)V

    return-void
.end method

.method private lazyInitNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;
    .locals 5
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
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/SpeechNode;

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/SpeechNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 106
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/SpeechNode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 108
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "create %s error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 109
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_1

    .line 112
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/NodeManager;->register(Lcom/xiaopeng/speech/SpeechNode;)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/SpeechNode;->setWorkerHandler(Landroid/os/Handler;)V

    .line 116
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private register(Lcom/xiaopeng/speech/SpeechNode;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "node %s had register"

    .line 122
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "register node:%s"

    .line 125
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v0, Lcom/xiaopeng/speech/NodeManager$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/NodeManager$5;-><init>(Lcom/xiaopeng/speech/NodeManager;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private subscribeNodeList(Z)V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    if-nez v0, :cond_0

    const-string p1, "mSubscriber == null"

    .line 153
    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/SpeechNode;

    .line 159
    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechNode;->isSubscribed()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    :cond_2
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "do subscribe node:%s"

    .line 160
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechNode;->getSubscribeEvents()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechNode;->getSubscribeEvents()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_3

    goto :goto_1

    .line 166
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechNode;->getSubscribeEvents()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/xiaopeng/speech/coreapi/ISubscriber;->subscribe([Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    .line 168
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/SpeechNode;->setSubscribed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "subscribe error "

    .line 171
    invoke-static {p0, v2, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :goto_1
    const-string v1, "getSubscribeEvents.length == 0"

    .line 162
    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private unRegister(Lcom/xiaopeng/speech/SpeechNode;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mNodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

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

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;
    .locals 0
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
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/NodeManager;->lazyInitNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getSubscriber()Lcom/xiaopeng/speech/coreapi/ISubscriber;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v0, Lcom/xiaopeng/speech/NodeManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/NodeManager$1;-><init>(Lcom/xiaopeng/speech/NodeManager;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mSubscriber:Lcom/xiaopeng/speech/coreapi/ISubscriber;

    return-void
.end method

.method public subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 2
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
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/NodeManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/NodeManager$2;-><init>(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

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
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/NodeManager$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/NodeManager$3;-><init>(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unSubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 2
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
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/NodeManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/NodeManager$4;-><init>(Lcom/xiaopeng/speech/NodeManager;Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    return-void
.end method
