.class public final Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;
.super Ljava/lang/Object;
.source "PipeBusClientManager.java"


# static fields
.field private static final clientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->clientMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createBusClient(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;
    .locals 3

    const-class v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->clientMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    if-nez v2, :cond_0

    .line 27
    new-instance v2, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->init(Landroid/content/Context;)V

    .line 29
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBusAgent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;
    .locals 1

    const-class v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;

    monitor-enter v0

    .line 35
    :try_start_0
    invoke-static {p0, p2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->createBusClient(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->getBusAgent(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
