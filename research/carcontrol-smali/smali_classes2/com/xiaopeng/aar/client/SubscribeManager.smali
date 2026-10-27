.class Lcom/xiaopeng/aar/client/SubscribeManager;
.super Ljava/lang/Object;
.source "SubscribeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/client/SubscribeManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Subscribe"


# instance fields
.field private final mHandlerThread:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

.field private mReTryCount:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReTryEnable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mSubscribes:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryCount:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryEnable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->get()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->getIpc()Lcom/xiaopeng/aar/client/ipc/Ipc;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$hTnJVJoJrj7br1Uj9J7nUIrxpdQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$hTnJVJoJrj7br1Uj9J7nUIrxpdQ;-><init>(Lcom/xiaopeng/aar/client/SubscribeManager;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/aar/client/ipc/Ipc;->addOnServerStatusListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;)V

    .line 49
    new-instance v0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    const-string v1, "SubscribeManager"

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mHandlerThread:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/client/SubscribeManager$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/SubscribeManager;-><init>()V

    return-void
.end method

.method static get()Lcom/xiaopeng/aar/client/SubscribeManager;
    .locals 1

    .line 30
    invoke-static {}, Lcom/xiaopeng/aar/client/SubscribeManager$SingletonHolder;->access$100()Lcom/xiaopeng/aar/client/SubscribeManager;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized reSubscribe(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mSubscribes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mHandlerThread:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    new-instance v2, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$Bh4j9unptxEHnGW2TsKxcYoGtTg;

    invoke-direct {v2, p0, p1, v1}, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$Bh4j9unptxEHnGW2TsKxcYoGtTg;-><init>(Lcom/xiaopeng/aar/client/SubscribeManager;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_3
    monitor-exit p0

    return-void

    .line 83
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private reTryCount(Ljava/lang/String;)I
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryCount:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryCount:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private declared-synchronized reTrySubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryEnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 156
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mSubscribes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lcom/xiaopeng/aar/client/SubscribeManager;->reTryCount(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    const-string v0, "Subscribe"

    const-string/jumbo v6, "subscribeIpc  retry-- appId:%s ,module:%s ,delayTime:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p2, v7, v1

    .line 176
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v3

    .line 175
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mHandlerThread:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    new-instance v1, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$9CzGnV2lrwnpzzPpT1F2BTnSo7s;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$9CzGnV2lrwnpzzPpT1F2BTnSo7s;-><init>(Lcom/xiaopeng/aar/client/SubscribeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    :try_start_1
    const-string v0, "Subscribe"

    const-string v4, "reTrySubscribe--list null appId:%s ,module:%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 169
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    :try_start_2
    const-string v0, "Subscribe"

    const-string v4, "reTrySubscribe--map null appId:%s ,module:%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 163
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    :try_start_3
    const-string v0, "Subscribe"

    const-string v4, "reTrySubscribe--not enable appId:%s ,module:%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 157
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private subscribeIpc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "subscribeIpc-- appId:%s ,module:%s"

    .line 134
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscribe"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->get()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->getIpc()Lcom/xiaopeng/aar/client/ipc/Ipc;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/aar/client/ipc/Ipc;->subscribe(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object p2, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryCount:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/aar/client/SubscribeManager;->reTrySubscribe(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private subscribeMulIpc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string/jumbo v4, "subscribeMulIpc-- appId:%s ,module:%s"

    .line 183
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Subscribe"

    invoke-static {v4, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->get()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->getIpc()Lcom/xiaopeng/aar/client/ipc/Ipc;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/aar/client/ipc/Ipc;->subscribes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object p2, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryCount:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryEnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/client/SubscribeManager;->reTryCount(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    .line 197
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v0

    const-string/jumbo p2, "subscribeMulIpc  retry-- appId:%s ,module:%s ,delayTime:%s"

    .line 196
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mHandlerThread:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    new-instance v0, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$e_9HO6Kyi1B4yQw8uZXUFG_ONBQ;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$e_9HO6Kyi1B4yQw8uZXUFG_ONBQ;-><init>(Lcom/xiaopeng/aar/client/SubscribeManager;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v5, v6}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    const-string/jumbo p1, "subscribeMulIpc--not enable appId:%s ,module:%s"

    .line 191
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unSubscribeIpc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string/jumbo v1, "unSubscribeIpc-- appId:%s ,module:%s"

    .line 205
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscribe"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->get()Lcom/xiaopeng/aar/client/ipc/IpcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/aar/client/ipc/IpcManager;->getIpc()Lcom/xiaopeng/aar/client/ipc/Ipc;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/aar/client/ipc/Ipc;->unSubscribe(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method declared-synchronized check(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mSubscribes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 73
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    .line 74
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$new$0$SubscribeManager(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_1

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    const-string/jumbo p2, "serverStart-- appId:%s, uid:%s, pid:%s"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Subscribe"

    invoke-static {v0, p2}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/client/SubscribeManager;->reSubscribe(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$reSubscribe$1$SubscribeManager(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/aar/client/SubscribeManager;->subscribeMulIpc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$reTrySubscribe$4$SubscribeManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/aar/client/SubscribeManager;->subscribeIpc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$subscribe$2$SubscribeManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/aar/client/SubscribeManager;->subscribeIpc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$subscribeMulIpc$5$SubscribeManager(Ljava/lang/String;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/client/SubscribeManager;->reSubscribe(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$unSubscribe$3$SubscribeManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/aar/client/SubscribeManager;->unSubscribeIpc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setReTryEnable(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 148
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "setReTryEnable-- appId:%s ,enable:%s"

    .line 147
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscribe"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mReTryEnable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method declared-synchronized subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mSubscribes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mSubscribes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_1

    .line 107
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 108
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mHandlerThread:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    new-instance v2, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$2ghQpMMBWf3o1ctTUl5yeH5JUm0;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$2ghQpMMBWf3o1ctTUl5yeH5JUm0;-><init>(Lcom/xiaopeng/aar/client/SubscribeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->post(Ljava/lang/Runnable;)V

    .line 113
    :cond_2
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "Subscribe"

    const-string/jumbo v1, "subscribe-- appId:%s,module:%s\uff0csubscriber:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    .line 114
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unSubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mSubscribes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/aar/client/SubscribeManager;->mHandlerThread:Lcom/xiaopeng/aar/utils/HandlerThreadHelper;

    new-instance v1, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;-><init>(Lcom/xiaopeng/aar/client/SubscribeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->post(Ljava/lang/Runnable;)V

    :cond_2
    const-string v0, "Subscribe"

    const-string/jumbo v1, "unSubscribe-- appId:%s,module:%s\uff0csubscriber:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    .line 130
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 124
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
