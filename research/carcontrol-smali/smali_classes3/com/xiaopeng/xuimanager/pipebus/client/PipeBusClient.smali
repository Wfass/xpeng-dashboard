.class public final Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;
.super Ljava/lang/Object;
.source "PipeBusClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;,
        Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;,
        Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;
    }
.end annotation


# static fields
.field public static final BUS_CLIENT_STATUS_CONNECTED:I = 0x1

.field public static final BUS_CLIENT_STATUS_DISCONNECTED:I = 0x0

.field private static final MAX_RETRY_CNT:I = 0x2328

.field private static final MSG_CONNECT_SERVICE:I = 0x1

.field private static sHandler:Landroid/os/Handler;

.field private static final sParcelableData:Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

.field private static final stringArray:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private clientInit:Z

.field private connectRetryCount:I

.field private final mBusAgentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mBusListener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mModuleListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

.field private mServiceName:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 29
    sput-object v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->stringArray:[Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->sParcelableData:Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->clientInit:Z

    .line 42
    iput v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->connectRetryCount:I

    .line 43
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    .line 44
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusAgentMap:Ljava/util/Map;

    .line 50
    iput v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->status:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->clientInit:Z

    .line 42
    iput v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->connectRetryCount:I

    .line 43
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    .line 44
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusAgentMap:Ljava/util/Map;

    .line 50
    iput v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->status:I

    .line 304
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mServiceName:Ljava/lang/String;

    .line 305
    iput v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->connectRetryCount:I

    .line 306
    new-instance p1, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$1;-><init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mUiHandler:Landroid/os/Handler;

    .line 319
    new-instance p1, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;-><init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 337
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusListener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusListener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->notifyBusStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    return-object p1
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->stringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->sParcelableData:Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->handleGetService()V

    return-void
.end method

.method static synthetic access$902(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->connectRetryCount:I

    return p1
.end method

.method private handleGetService()V
    .locals 5

    .line 581
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z

    move-result v0

    .line 583
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 586
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusListener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->registerListenerEx(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 588
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto registerListener exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$notifyBusStatus$0(ILjava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 609
    invoke-interface {p2, p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;->onBusStatusChanged(I)V

    :cond_0
    return-void
.end method

.method private notifyBusStatus(I)V
    .locals 3

    .line 595
    iput p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->status:I

    .line 596
    sget-object v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 597
    const-class v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    monitor-enter v0

    .line 598
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 599
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PipeBusClient"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 601
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->sHandler:Landroid/os/Handler;

    .line 603
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 605
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$iUFy4J94NLMe28AbT-7ArlN9p-s;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$iUFy4J94NLMe28AbT-7ArlN9p-s;-><init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private selfGetService()Z
    .locals 9

    .line 550
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v3, ",binder="

    const-string v4, "selfGetService,updated="

    if-eqz v0, :cond_0

    .line 555
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v5, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 557
    iget-object v6, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "linkToDeath exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mDeathRecipient="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",bus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iput v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->connectRetryCount:I

    move v1, v2

    goto :goto_1

    .line 564
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->connectRetryCount:I

    const/16 v3, 0x2328

    if-ge v0, v3, :cond_1

    add-int/2addr v0, v2

    .line 566
    iput v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->connectRetryCount:I

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 574
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->notifyBusStatus(I)V

    :cond_2
    return v1
.end method


# virtual methods
.method public addLogTagSuffix(Ljava/lang/String;)V
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized getBusAgent(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusAgentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 343
    monitor-exit p0

    return-object v0

    .line 345
    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    invoke-direct {v0, p0, p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;-><init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)V

    .line 346
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusAgentMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getStatus()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->status:I

    return v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 363
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->clientInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 364
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 366
    :try_start_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->clientInit:Z

    .line 367
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 368
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 459
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v0, :cond_0

    .line 463
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 465
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControl err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    const-string v1, "ioControl, bus is null!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, -0x1

    .line 471
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControl,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",cmd="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",params="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I
    .locals 5

    .line 519
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    move-object v2, p3

    goto :goto_0

    .line 526
    :cond_0
    sget-object v2, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->sParcelableData:Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    :goto_0
    if-eqz p4, :cond_1

    move-object v3, p4

    goto :goto_1

    .line 531
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->sParcelableData:Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    .line 534
    :goto_1
    :try_start_0
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 536
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioControlWithPocket e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    const-string v2, "ioControlWithPocket,bus is null!"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithPocket,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",cmd="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",dataIn="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",dataOut="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 486
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 490
    sget-object p4, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->stringArray:[Ljava/lang/String;

    .line 493
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 495
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioControlWithPocket e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    const-string v2, "ioControlWithPocket,bus is null!"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithPocket,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",cmd="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",params="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    .line 502
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, p2

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ",result="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p4, :cond_3

    .line 503
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public synthetic lambda$notifyBusStatus$1$PipeBusClient(I)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$8M90hJE7bcGG1dZF6l7poszo1bA;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuimanager/pipebus/client/-$$Lambda$PipeBusClient$8M90hJE7bcGG1dZF6l7poszo1bA;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized registerModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V
    .locals 3

    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerModuleListener, module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusListener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;-><init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusListener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerModuleListener,repeated module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",l="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 411
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z

    .line 415
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 420
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mBusListener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    invoke-interface {p2, p1, v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->registerListenerEx(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 422
    :try_start_3
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerModuleListener e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    const-string p2, "registerModuleListener, bus is null"

    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 427
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 381
    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->clientInit:Z

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 386
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 390
    :try_start_3
    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->unRegisterListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V

    .line 391
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 393
    :try_start_4
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset,unRegisterListener,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 396
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 386
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unRegisterModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V
    .locals 3

    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->selfGetService()Z

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterModuleListener,module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",mapSize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mModuleListenerMap:Ljava/util/Map;

    .line 439
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",bus="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 438
    invoke-static {v0, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->mPipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 443
    :try_start_1
    invoke-interface {p2, p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->unRegisterListenerEx(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 445
    :try_start_2
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterModuleListener e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 433
    :cond_1
    :try_start_3
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterModuleListener,no listener registered for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
