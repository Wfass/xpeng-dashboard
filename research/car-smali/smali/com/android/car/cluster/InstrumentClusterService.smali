.class public Lcom/android/car/cluster/InstrumentClusterService;
.super Ljava/lang/Object;
.source "InstrumentClusterService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/AppFocusService$FocusOwnershipCallback;
.implements Lcom/android/car/CarInputService$KeyEventListener;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;,
        Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;,
        Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;,
        Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;,
        Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;,
        Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;,
        Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    }
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "CAR.CLUSTER"


# instance fields
.field private final mActivityInfoByCategory:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppFocusService:Lcom/android/car/AppFocusService;

.field private final mCarInputService:Lcom/android/car/CarInputService;

.field private final mClusterCallback:Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;

.field private final mClusterManagerService:Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;

.field private final mContext:Landroid/content/Context;

.field private mDeferredRebinder:Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

.field private final mManagerCallbacks:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mRendererBound:Z

.field private mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation
.end field

.field private final mRendererServiceConnection:Landroid/content/ServiceConnection;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/car/cluster/InstrumentClusterService;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/AppFocusService;Lcom/android/car/CarInputService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appFocusService"    # Lcom/android/car/AppFocusService;
    .param p3, "carInputService"    # Lcom/android/car/CarInputService;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;-><init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mClusterCallback:Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;

    .line 86
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;-><init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mClusterManagerService:Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mActivityInfoByCategory:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mManagerCallbacks:Ljava/util/HashMap;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    .line 103
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService$1;

    invoke-direct {v0, p0}, Lcom/android/car/cluster/InstrumentClusterService$1;-><init>(Lcom/android/car/cluster/InstrumentClusterService;)V

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererServiceConnection:Landroid/content/ServiceConnection;

    .line 138
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/car/cluster/InstrumentClusterService;->mAppFocusService:Lcom/android/car/AppFocusService;

    .line 140
    iput-object p3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mCarInputService:Lcom/android/car/CarInputService;

    .line 141
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 142
    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/cluster/InstrumentClusterService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService;->doUnregisterManagerCallback(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/car/cluster/InstrumentClusterService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService;->doStartClusterActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/cluster/InstrumentClusterService;Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Landroid/car/cluster/IInstrumentClusterManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService;->doRegisterManagerCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/cluster/InstrumentClusterService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/car/cluster/InstrumentClusterService;->doSetActivityLaunchOptions(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/cluster/InstrumentClusterService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/car/cluster/InstrumentClusterService;->doSetClusterActivityState(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/car/cluster/InstrumentClusterService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 72
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->bindInstrumentClusterRendererService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/car/cluster/InstrumentClusterService;->DBG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/cluster/InstrumentClusterService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 72
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/car/cluster/InstrumentClusterService;Landroid/car/cluster/renderer/IInstrumentCluster;)Landroid/car/cluster/renderer/IInstrumentCluster;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 72
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/car/cluster/InstrumentClusterService;)Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 72
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    return-object v0
.end method

.method static synthetic access$600(Landroid/car/cluster/renderer/IInstrumentCluster;II)V
    .locals 0
    .param p0, "x0"    # Landroid/car/cluster/renderer/IInstrumentCluster;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/car/cluster/InstrumentClusterService;->notifyNavContextOwnerChanged(Landroid/car/cluster/renderer/IInstrumentCluster;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/cluster/InstrumentClusterService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 72
    iget-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/car/cluster/InstrumentClusterService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/car/cluster/InstrumentClusterService;)Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 72
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mDeferredRebinder:Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;)Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p1, "x1"    # Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    .line 72
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mDeferredRebinder:Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    return-object p1
.end method

.method private bindInstrumentClusterRendererService()Z
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "rendererService":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "CAR.CLUSTER"

    const-string v2, "Instrument cluster renderer was not configured"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x0

    return v1

    .line 230
    :cond_0
    const-string v1, "CAR.CLUSTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindInstrumentClusterRendererService, component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 234
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.car.cluster.IInstrumentClusterCallback"

    iget-object v4, p0, Lcom/android/car/cluster/InstrumentClusterService;->mClusterCallback:Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 238
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 239
    iget-object v3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererServiceConnection:Landroid/content/ServiceConnection;

    const/16 v5, 0x41

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    return v3
.end method

.method private checkPermission(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 359
    .local p1, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .local v0, "permittedResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 361
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 362
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/car/cluster/InstrumentClusterService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 363
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    :cond_0
    const-string v4, "CAR.CLUSTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not granted for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "pkgName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 370
    :cond_1
    return-object v0
.end method

.method private doRegisterManagerCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    .locals 9
    .param p1, "callback"    # Landroid/car/cluster/IInstrumentClusterManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->enforceClusterControlPermission()V

    .line 376
    invoke-interface {p1}, Landroid/car/cluster/IInstrumentClusterManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 378
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 379
    .local v1, "knownActivityStates":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v2, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;

    invoke-direct {v2, p0, v0}, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;-><init>(Lcom/android/car/cluster/InstrumentClusterService;Landroid/os/IBinder;)V

    .line 380
    .local v2, "deathRecipient":Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;
    iget-object v3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 381
    :try_start_0
    iget-object v4, p0, Lcom/android/car/cluster/InstrumentClusterService;->mManagerCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    const-string v4, "CAR.CLUSTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Manager callback already registered for binder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    monitor-exit v3

    return-void

    .line 385
    :cond_0
    iget-object v4, p0, Lcom/android/car/cluster/InstrumentClusterService;->mManagerCallbacks:Ljava/util/HashMap;

    new-instance v5, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;

    invoke-direct {v5, p1, v2}, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;-><init>(Landroid/car/cluster/IInstrumentClusterManagerCallback;Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v4, p0, Lcom/android/car/cluster/InstrumentClusterService;->mActivityInfoByCategory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 387
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/car/cluster/InstrumentClusterService;->mActivityInfoByCategory:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 388
    iget-object v4, p0, Lcom/android/car/cluster/InstrumentClusterService;->mActivityInfoByCategory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 389
    .local v5, "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;>;"
    new-instance v6, Landroid/util/Pair;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;

    iget-object v8, v8, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;->state:Landroid/os/Bundle;

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v5    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;>;"
    goto :goto_0

    .line 392
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 396
    if-eqz v1, :cond_2

    .line 397
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 398
    .local v4, "it":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-interface {p1, v5, v6}, Landroid/car/cluster/IInstrumentClusterManagerCallback;->setClusterActivityState(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 399
    .end local v4    # "it":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    goto :goto_1

    .line 401
    :cond_2
    return-void

    .line 392
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private doSetActivityLaunchOptions(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "activityOptions"    # Landroid/os/Bundle;

    .line 496
    sget-object v0, Lcom/android/car/cluster/InstrumentClusterService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "CAR.CLUSTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetActivityLaunchOptions, category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", options: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService;->getOrCreateActivityInfoLocked(Ljava/lang/String;)Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;

    move-result-object v1

    .line 502
    .local v1, "info":Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    iput-object p2, v1, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;->launchOptions:Landroid/os/Bundle;

    .line 503
    .end local v1    # "info":Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doSetClusterActivityState(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "clusterActivityState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/android/car/cluster/InstrumentClusterService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const-string v0, "CAR.CLUSTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetClusterActivityState, category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService;->getOrCreateActivityInfoLocked(Ljava/lang/String;)Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;

    move-result-object v1

    .line 517
    .local v1, "info":Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    iput-object p2, v1, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;->state:Landroid/os/Bundle;

    .line 518
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/car/cluster/InstrumentClusterService;->mManagerCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1    # "info":Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    move-object v1, v2

    .line 519
    .local v1, "managerCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;

    .line 522
    .local v2, "cbInfo":Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;
    iget-object v3, v2, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;->callback:Landroid/car/cluster/IInstrumentClusterManagerCallback;

    invoke-interface {v3, p1, p2}, Landroid/car/cluster/IInstrumentClusterManagerCallback;->setClusterActivityState(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 523
    .end local v2    # "cbInfo":Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;
    goto :goto_0

    .line 524
    :cond_1
    return-void

    .line 519
    .end local v1    # "managerCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doStartClusterActivity(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 314
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->enforceClusterControlPermission()V

    .line 317
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    const-string v1, "android.car.permission.CAR_DISPLAY_IN_CLUSTER"

    invoke-direct {p0, v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->checkPermission(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    return-void

    .line 333
    :cond_1
    nop

    .line 334
    invoke-direct {p0, v0}, Lcom/android/car/cluster/InstrumentClusterService;->findClusterActivityOptions(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    .line 335
    .local v1, "attributedResolveInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;>;"
    if-nez v1, :cond_2

    .line 336
    const-string v2, "CAR.CLUSTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start an activity with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in the cluster: category intent didn\'t match with any categories from vendor implementation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 341
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;

    .line 344
    .local v2, "opts":Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 346
    const-string v3, "android.car.cluster.ClusterActivityState"

    iget-object v4, v2, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;->state:Landroid/os/Bundle;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 347
    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 351
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;->launchOptions:Landroid/os/Bundle;

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    nop

    .line 355
    return-void

    .line 353
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 320
    .end local v1    # "attributedResolveInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;>;"
    .end local v2    # "opts":Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    .end local v3    # "token":J
    :cond_3
    :goto_0
    const-string v1, "CAR.CLUSTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve an intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method private doUnregisterManagerCallback(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->enforceClusterControlPermission()V

    .line 406
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mManagerCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;

    .line 408
    .local v1, "info":Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;
    if-nez v1, :cond_0

    .line 409
    const-string v2, "CAR.CLUSTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unregister manager callback binder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because it wasn\'t previously registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    monitor-exit v0

    return-void

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/android/car/cluster/InstrumentClusterService;->mManagerCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v0, v1, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;->deathRecipient:Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 416
    return-void

    .line 414
    .end local v1    # "info":Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enforceClusterControlPermission()V
    .locals 1

    .line 310
    const-string v0, "android.car.permission.CAR_INSTRUMENT_CLUSTER_CONTROL"

    invoke-direct {p0, v0}, Lcom/android/car/cluster/InstrumentClusterService;->enforcePermission(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 300
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 301
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not granted to client {uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :cond_1
    :goto_0
    return-void
.end method

.method private findClusterActivityOptions(Ljava/util/List;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ResolveInfo;",
            "Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;",
            ">;"
        }
    .end annotation

    .line 421
    .local p1, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mActivityInfoByCategory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 424
    .local v1, "registeredCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 425
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 426
    .local v5, "category":Ljava/lang/String;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/car/cluster/InstrumentClusterService;->mActivityInfoByCategory:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;

    .line 428
    .local v2, "categoryInfo":Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v4

    .line 430
    .end local v2    # "categoryInfo":Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    .end local v5    # "category":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 431
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 432
    .end local v1    # "registeredCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v0

    .line 433
    const/4 v0, 0x0

    return-object v0

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getOrCreateActivityInfoLocked(Ljava/lang/String;)Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSync"
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mActivityInfoByCategory:Ljava/util/HashMap;

    sget-object v1, Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$xKIhi-ddY0utqA6YCNoQtxbkHEc;->INSTANCE:Lcom/android/car/cluster/-$$Lambda$InstrumentClusterService$xKIhi-ddY0utqA6YCNoQtxbkHEc;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;

    return-object v0
.end method

.method static synthetic lambda$getOrCreateActivityInfoLocked$0(Ljava/lang/String;)Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;
    .locals 2
    .param p0, "k"    # Ljava/lang/String;

    .line 475
    new-instance v0, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService$ClusterActivityInfo;-><init>(Lcom/android/car/cluster/InstrumentClusterService$1;)V

    return-object v0
.end method

.method private static notifyNavContextOwnerChanged(Landroid/car/cluster/renderer/IInstrumentCluster;II)V
    .locals 3
    .param p0, "service"    # Landroid/car/cluster/renderer/IInstrumentCluster;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 217
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/car/cluster/renderer/IInstrumentCluster;->setNavigationContextOwner(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.CLUSTER"

    const-string v2, "Failed to call setNavigationContextOwner"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bound with renderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderer service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public getManagerService()Landroid/car/cluster/IInstrumentClusterManagerService$Stub;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mClusterManagerService:Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;

    return-object v0
.end method

.method public getNavigationService()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 248
    .local v1, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const/4 v0, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/car/cluster/renderer/IInstrumentCluster;->getNavigationService()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.CLUSTER"

    const-string v4, "getNavigationServiceBinder"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    return-object v0

    .line 248
    .end local v1    # "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 2

    .line 146
    sget-object v0, Lcom/android/car/cluster/InstrumentClusterService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "CAR.CLUSTER"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mAppFocusService:Lcom/android/car/AppFocusService;

    invoke-virtual {v0, p0}, Lcom/android/car/AppFocusService;->registerContextOwnerChangedCallback(Lcom/android/car/AppFocusService$FocusOwnershipCallback;)V

    .line 151
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mCarInputService:Lcom/android/car/CarInputService;

    invoke-virtual {v0, p0}, Lcom/android/car/CarInputService;->setInstrumentClusterKeyListener(Lcom/android/car/CarInputService$KeyEventListener;)V

    .line 152
    invoke-direct {p0}, Lcom/android/car/cluster/InstrumentClusterService;->bindInstrumentClusterRendererService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    .line 153
    return-void
.end method

.method public onFocusAbandoned(III)V
    .locals 2
    .param p1, "appType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 194
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 195
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    iget v1, v1, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    iget v1, v1, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    if-eq v1, p3, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 207
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 208
    .local v1, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v1, :cond_2

    .line 211
    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/android/car/cluster/InstrumentClusterService;->notifyNavContextOwnerChanged(Landroid/car/cluster/renderer/IInstrumentCluster;II)V

    .line 213
    :cond_2
    return-void

    .line 203
    .end local v1    # "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onFocusAcquired(III)V
    .locals 2
    .param p1, "appType"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 177
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 178
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    new-instance v1, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    invoke-direct {v1, p2, p3}, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;-><init>(II)V

    iput-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mNavContextOwner:Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    .line 184
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 185
    .local v1, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v1, :cond_1

    .line 188
    invoke-static {v1, p2, p3}, Lcom/android/car/cluster/InstrumentClusterService;->notifyNavContextOwnerChanged(Landroid/car/cluster/renderer/IInstrumentCluster;II)V

    .line 190
    :cond_1
    return-void

    .line 185
    .end local v1    # "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 264
    sget-object v0, Lcom/android/car/cluster/InstrumentClusterService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "CAR.CLUSTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstrumentClusterService#onKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererService:Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 271
    .local v1, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    if-eqz v1, :cond_1

    .line 275
    :try_start_1
    invoke-interface {v1, p1}, Landroid/car/cluster/renderer/IInstrumentCluster;->onKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.CLUSTER"

    const-string v3, "onKeyEvent"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 271
    .end local v1    # "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 157
    sget-object v0, Lcom/android/car/cluster/InstrumentClusterService;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "CAR.CLUSTER"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mAppFocusService:Lcom/android/car/AppFocusService;

    invoke-virtual {v0, p0}, Lcom/android/car/AppFocusService;->unregisterContextOwnerChangedCallback(Lcom/android/car/AppFocusService$FocusOwnershipCallback;)V

    .line 162
    iget-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/cluster/InstrumentClusterService;->mRendererBound:Z

    .line 166
    :cond_1
    return-void
.end method
