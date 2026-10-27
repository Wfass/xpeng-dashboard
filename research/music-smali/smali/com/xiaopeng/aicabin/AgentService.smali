.class public Lcom/xiaopeng/aicabin/AgentService;
.super Ljava/lang/Object;
.source "AgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/AgentService$c;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile sAgentService:Lcom/xiaopeng/aicabin/AgentService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEventListener:Lcom/xiaopeng/aicabin/event/EventListener;

.field private final mRegisterLogicMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mRemoteEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xiaopeng/aicabin/AgentService$c;",
            ">;"
        }
    .end annotation
.end field

.field public mRemoteStub:Lcom/xiaopeng/aicabin/IAiCabinService$Stub;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgentService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/aicabin/AConstant;->SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/aicabin/AgentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/AgentService;->mRegisterLogicMaps:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/AgentService;->mRemoteEventListeners:Ljava/util/Map;

    .line 34
    new-instance v0, Lcom/xiaopeng/aicabin/AgentService$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/aicabin/AgentService$a;-><init>(Lcom/xiaopeng/aicabin/AgentService;)V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/AgentService;->mRemoteStub:Lcom/xiaopeng/aicabin/IAiCabinService$Stub;

    .line 151
    new-instance v0, Lcom/xiaopeng/aicabin/AgentService$b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/aicabin/AgentService$b;-><init>(Lcom/xiaopeng/aicabin/AgentService;)V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/AgentService;->mEventListener:Lcom/xiaopeng/aicabin/event/EventListener;

    .line 185
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "agent-service"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/aicabin/AgentService;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaopeng/aicabin/AgentService;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/AgentService;->mRemoteEventListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaopeng/aicabin/AgentService;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/AgentService;->mRegisterLogicMaps:Ljava/util/Map;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/aicabin/AgentService;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/AgentService;->sAgentService:Lcom/xiaopeng/aicabin/AgentService;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaopeng/aicabin/AgentService;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaopeng/aicabin/AgentService;->sAgentService:Lcom/xiaopeng/aicabin/AgentService;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaopeng/aicabin/AgentService;

    invoke-direct {v1}, Lcom/xiaopeng/aicabin/AgentService;-><init>()V

    sput-object v1, Lcom/xiaopeng/aicabin/AgentService;->sAgentService:Lcom/xiaopeng/aicabin/AgentService;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/aicabin/AgentService;->sAgentService:Lcom/xiaopeng/aicabin/AgentService;

    return-object v0
.end method


# virtual methods
.method public dispatchEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/AgentService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/xiaopeng/aicabin/ARemoteManager;->mRemoteServiceName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/xiaopeng/aicabin/AgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchEvent: invalid event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/event/EventValue;->getEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/AgentService;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/aicabin/-$$Lambda$AgentService$1NofUnN2gsbz-A-iIj-gmHyZ6l8;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/aicabin/-$$Lambda$AgentService$1NofUnN2gsbz-A-iIj-gmHyZ6l8;-><init>(Lcom/xiaopeng/aicabin/AgentService;Lcom/xiaopeng/aicabin/event/EventValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, " AgentService not init!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/AgentService;->TAG:Ljava/lang/String;

    const-string v1, "init: before"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/xiaopeng/aicabin/AgentService;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lcom/xiaopeng/aicabin/AgentService;->mRegisterLogicMaps:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/xiaopeng/aicabin/utils/ScanLogicRegistryUtil;->getLocalLogicRegistryMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: end mRegisterLogicMaps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/AgentService;->mRegisterLogicMaps:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "FindAICabinService"

    .line 8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "remote findBinder null"

    .line 11
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/aicabin/IFindService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aicabin/IFindService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "remote findService null"

    .line 16
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/AgentService;->publishElements()Ljava/util/HashSet;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "no publish elements, skip publish service"

    .line 22
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: publish success elements:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/xiaopeng/aicabin/DataReq;->newBuilder()Lcom/xiaopeng/aicabin/DataReq;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "binder"

    :try_start_1
    iget-object v5, p0, Lcom/xiaopeng/aicabin/AgentService;->mRemoteStub:Lcom/xiaopeng/aicabin/IAiCabinService$Stub;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/aicabin/DataReq;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "package_name"

    .line 27
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/xiaopeng/aicabin/DataReq;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;

    move-result-object p1

    const-string v3, "name"

    .line 28
    invoke-virtual {p1, v3, v2}, Lcom/xiaopeng/aicabin/DataReq;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;

    move-result-object p1

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/aicabin/DataReq;->putDefVal(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;

    move-result-object p1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: publish before dataReq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {v1, p1}, Lcom/xiaopeng/aicabin/IFindService;->publish(Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: publish success resp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    sget-object v0, Lcom/xiaopeng/aicabin/AgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$dispatchEvent$0$AgentService(Lcom/xiaopeng/aicabin/event/EventValue;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/AgentService;->mEventListener:Lcom/xiaopeng/aicabin/event/EventListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/aicabin/event/EventListener;->onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V

    return-void
.end method

.method public publishElements()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/AgentService;->mRegisterLogicMaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public publishLocalLogic()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/AgentService;->mRegisterLogicMaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
