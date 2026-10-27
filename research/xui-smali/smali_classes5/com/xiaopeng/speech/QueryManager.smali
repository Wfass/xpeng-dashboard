.class public Lcom/xiaopeng/speech/QueryManager;
.super Ljava/lang/Object;
.source "QueryManager.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "QueryManager"


# instance fields
.field private volatile mIQueryInjector:Lcom/xiaopeng/speech/IQueryInjector;

.field private mQueryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/QueryManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/QueryManager;
    .param p1, "x1"    # Z

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/QueryManager;->injectQueryList(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/QueryManager;Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/QueryManager;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/QueryManager;->lazyInitQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/QueryManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/QueryManager;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/QueryManager;Lcom/xiaopeng/speech/SpeechQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/QueryManager;
    .param p1, "x1"    # Lcom/xiaopeng/speech/SpeechQuery;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/QueryManager;->unRegister(Lcom/xiaopeng/speech/SpeechQuery;)V

    return-void
.end method

.method private injectQueryList(Z)V
    .locals 6
    .param p1, "forceSub"    # Z

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mIQueryInjector:Lcom/xiaopeng/speech/IQueryInjector;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "mIQueryInjector == null"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 142
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechQuery;>;Lcom/xiaopeng/speech/SpeechQuery;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/SpeechQuery;

    .line 147
    .local v1, "query":Lcom/xiaopeng/speech/SpeechQuery;
    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechQuery;->isSubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_4

    .line 148
    :cond_1
    const-string v2, "do inject query:%s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechQuery;->getQueryEvents()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechQuery;->getQueryEvents()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    goto :goto_2

    .line 154
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/speech/QueryManager;->mIQueryInjector:Lcom/xiaopeng/speech/IQueryInjector;

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, p0, Lcom/xiaopeng/speech/QueryManager;->mIQueryInjector:Lcom/xiaopeng/speech/IQueryInjector;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechQuery;->getQueryEvents()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lcom/xiaopeng/speech/IQueryInjector;->registerDataSensor([Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V

    .line 156
    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/SpeechQuery;->setSubscribed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_3
    goto :goto_1

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "inject error "

    invoke-static {p0, v3, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .end local v1    # "query":Lcom/xiaopeng/speech/SpeechQuery;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    goto :goto_0

    .line 150
    .restart local v1    # "query":Lcom/xiaopeng/speech/SpeechQuery;
    :cond_5
    :goto_2
    const-string v2, "getInjectEvents.length == 0"

    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 151
    goto :goto_0

    .line 163
    .end local v1    # "query":Lcom/xiaopeng/speech/SpeechQuery;
    :cond_6
    return-void
.end method

.method private lazyInitQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;)",
            "Lcom/xiaopeng/speech/SpeechQuery;"
        }
    .end annotation

    .line 86
    .local p1, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechQuery;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/SpeechQuery;

    .line 87
    .local v0, "query":Lcom/xiaopeng/speech/SpeechQuery;
    if-eqz v0, :cond_0

    .line 88
    return-object v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/SpeechQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 92
    if-nez v0, :cond_1

    .line 94
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/SpeechQuery;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 98
    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const-string v3, "create %s error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/QueryManager;->register(Lcom/xiaopeng/speech/SpeechQuery;)V

    .line 101
    iget-object v2, p0, Lcom/xiaopeng/speech/QueryManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/SpeechQuery;->setWorkerHandler(Landroid/os/Handler;)V

    .line 104
    :cond_1
    monitor-exit v1

    .line 105
    return-object v0

    .line 104
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private register(Lcom/xiaopeng/speech/SpeechQuery;)V
    .locals 3
    .param p1, "query"    # Lcom/xiaopeng/speech/SpeechQuery;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "query %s had register"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :cond_0
    const-string v0, "register query:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/QueryManager$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/QueryManager$4;-><init>(Lcom/xiaopeng/speech/QueryManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method private unRegister(Lcom/xiaopeng/speech/SpeechQuery;)V
    .locals 2
    .param p1, "query"    # Lcom/xiaopeng/speech/SpeechQuery;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mIQueryInjector:Lcom/xiaopeng/speech/IQueryInjector;

    if-eqz v0, :cond_1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mIQueryInjector:Lcom/xiaopeng/speech/IQueryInjector;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechQuery;->getQueryEvents()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/IQueryInjector;->unRegisterDataSensor([Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mQueryMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 54
    .local p1, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/QueryManager;->lazyInitQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/xiaopeng/speech/common/util/WorkerHandler;)V
    .locals 0
    .param p1, "workerHandler"    # Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/speech/QueryManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    .line 28
    return-void
.end method

.method public inject(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V
    .locals 2
    .param p2, "queryCaller"    # Lcom/xiaopeng/speech/IQueryCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;",
            "Lcom/xiaopeng/speech/IQueryCaller;",
            ")V"
        }
    .end annotation

    .line 62
    .local p1, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechQuery;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/QueryManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/QueryManager$2;-><init>(Lcom/xiaopeng/speech/QueryManager;Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 3
    .param p1, "speechProxy"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 32
    const-string v0, "QueryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    if-nez p1, :cond_0

    .line 35
    return-void

    .line 36
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getQueryInjector()Lcom/xiaopeng/speech/IQueryInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mIQueryInjector:Lcom/xiaopeng/speech/IQueryInjector;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/QueryManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/QueryManager$1;-><init>(Lcom/xiaopeng/speech/QueryManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mIQueryInjector:Lcom/xiaopeng/speech/IQueryInjector;

    .line 51
    return-void
.end method

.method public unInject(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechQuery;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager;->mWorkerHandler:Lcom/xiaopeng/speech/common/util/WorkerHandler;

    new-instance v1, Lcom/xiaopeng/speech/QueryManager$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/QueryManager$3;-><init>(Lcom/xiaopeng/speech/QueryManager;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->optPost(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
