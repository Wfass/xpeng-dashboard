.class Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;
.super Ljava/lang/Object;
.source "SystemUIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$Holder;,
        Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x5dc

.field private static final RETRY_DELAY_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Client"


# instance fields
.field private connectRetryCount:I

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mServerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUIService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Client"

    const-string v1, "SystemUIClient created"

    .line 36
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mServerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->connectRetryCount:I

    .line 39
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$1;-><init>(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mUiHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/-$$Lambda$SystemUIClient$e5EkOGS5ot-0dXnt6tXb8WFcwso;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/systemui/-$$Lambda$SystemUIClient$e5EkOGS5ot-0dXnt6tXb8WFcwso;-><init>(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->selfGetService()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->selfGetService()V

    return-void
.end method

.method static get()Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;
    .locals 1

    .line 114
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$Holder;->access$100()Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;

    move-result-object v0

    return-object v0
.end method

.method private notifyServerConnect(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mServerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;

    .line 81
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;->onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyServerDisConnect()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mServerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;

    .line 87
    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;->onServerDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private selfGetService()V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mSystemUIService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-nez v0, :cond_1

    const-string v0, "SystemUIService"

    .line 59
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfGetService get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Client"

    invoke-static {v2, v1}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "linkToDeath exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mSystemUIService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 68
    iput v1, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->connectRetryCount:I

    .line 69
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->notifyServerConnect(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V

    goto :goto_1

    .line 71
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->connectRetryCount:I

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 72
    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->connectRetryCount:I

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method addServerListener(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mServerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addServerListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Client"

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method getSystemUIService()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->selfGetService()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mSystemUIService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    return-object v0
.end method

.method public synthetic lambda$new$0$SystemUIClient()V
    .locals 4

    const-string v0, "Client"

    const-string v1, "SystemUI Service died"

    .line 48
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mSystemUIService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->connectRetryCount:I

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->notifyServerDisConnect()V

    return-void
.end method

.method removeServerListener(Lcom/xiaopeng/xuimanager/systemui/SystemUIClient$ServerListener;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/SystemUIClient;->mServerListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeServerListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Client"

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/SysLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
