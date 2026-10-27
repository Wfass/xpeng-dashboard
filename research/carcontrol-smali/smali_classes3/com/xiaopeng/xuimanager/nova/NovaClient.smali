.class Lcom/xiaopeng/xuimanager/nova/NovaClient;
.super Ljava/lang/Object;
.source "NovaClient.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/nova/INovaClient;
.implements Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CLIENT"

.field private static final singleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuimanager/nova/NovaClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

.field private final registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 648
    new-instance v0, Lcom/xiaopeng/xuimanager/nova/NovaClient$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/nova/NovaClient$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->singleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->appConfigs:Landroid/util/ArrayMap;

    .line 23
    new-instance v0, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    .line 662
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "xuiservice"

    const-string v2, "nova"

    .line 661
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->getBusAgent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    .line 663
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->setTagSuffix(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, v2, p0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->registerModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/nova/NovaClient$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/nova/NovaClient;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/nova/NovaClient;
    .locals 1

    .line 656
    sget-object v0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->singleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/nova/NovaClient;

    return-object v0
.end method

.method private static logRemoteError(ILjava/lang/String;)V
    .locals 2

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOTE ERROR: ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CLIENT"

    invoke-static {p1, p0}, Lcom/xiaopeng/xuimanager/nova/Nova;->ERROR(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupAppInner(ILcom/xiaopeng/xuimanager/nova/NovaAppConfig;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupAppInner: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLIENT"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p2, Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;->fileType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->setFileType(ILjava/lang/String;)V

    .line 44
    iget v0, p2, Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;->selectionMode:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->setSelectionMode(II)V

    .line 45
    iget-object v0, p2, Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;->hook:Lcom/xiaopeng/xuimanager/nova/INovaClientHook;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p2, Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;->hook:Lcom/xiaopeng/xuimanager/nova/INovaClientHook;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->setHook(ILcom/xiaopeng/xuimanager/nova/INovaClientHook;)V

    .line 48
    :cond_1
    iget-object v0, p2, Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;->headers:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p2, Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;->headers:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->setHeaders(ILandroid/os/Bundle;)V

    .line 52
    :cond_2
    iget-boolean p2, p2, Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;->autoSync:Z

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->setAutoSync(IZ)V

    return-void
.end method


# virtual methods
.method public cancelDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 9

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelDownloadResource: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fingerprint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", url="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CLIENT"

    invoke-static {v5, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/xiaopeng/xuimanager/nova/NovaResource;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 444
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelable([Landroid/os/Parcelable;)V

    .line 446
    iget-object v5, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v6, "nova"

    const-string v7, "cancelDownloadResource"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteDownloadResource(ILjava/lang/String;)V
    .locals 7

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteDownloadResource: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fingerprint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 300
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 301
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v4, "nova"

    const-string v5, "deleteDownloadResource"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCloudResource(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/nova/NovaResource;
    .locals 5

    .line 169
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 170
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 171
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 175
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getCloudResourceByFingerprint"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCloudResource: appCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", fingerprint="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 183
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    return-object p1
.end method

.method public getCloudResource(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 152
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 154
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 156
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getCloudResource"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCloudResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 164
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDeletedResource(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/nova/NovaResource;
    .locals 5

    .line 279
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 280
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 281
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 283
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 285
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getDeletedResourceByFingerprint"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeletedResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", fingerprint="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 293
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    return-object p1
.end method

.method public getDeletedResource(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 244
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 246
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 248
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getDeletedResourceList"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeletedResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 256
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDeletedResource(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 262
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 264
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 266
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getDeletedResourceListInstalled"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeletedResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", installed="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadStatus(Lcom/xiaopeng/xuimanager/nova/NovaResource;)Lcom/xiaopeng/xuimanager/nova/NovaDownloadStatus;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDownloadStatusList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaDownloadStatus;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDownloadedResource(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/nova/NovaResource;
    .locals 5

    .line 224
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 225
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 226
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 230
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getDownloadedResourceByFingerprint"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadedResource: appCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", fingerprint="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    return-object p1
.end method

.method public getDownloadedResource(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 189
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 191
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 193
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getDownloadedResourceList"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadedResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 201
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadedResource(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 207
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 209
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 211
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getDownloadedResourceListInstalled"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadedResource: appCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", installed="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 219
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFileType(I)Ljava/lang/String;
    .locals 5

    .line 96
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 97
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 99
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 100
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getFileType"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    const-string v2, "getFileType: appCode="

    if-eqz v0, :cond_0

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CLIENT"

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSelectedResource(I)Lcom/xiaopeng/xuimanager/nova/NovaResource;
    .locals 5

    .line 517
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 518
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 520
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 522
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getSelectedResource"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 530
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    return-object p1
.end method

.method public getSelectedResourceList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 500
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 502
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 504
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getSelectedResourceList"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedResourceList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 512
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSelectionMode(I)I
    .locals 5

    .line 481
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 482
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 484
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 486
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "getSelectionMode"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 494
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result p1

    return p1
.end method

.method public isAutoSync(I)Z
    .locals 5

    .line 345
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 346
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 348
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 350
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "isAutoSync"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 358
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getBoolean()Z

    move-result p1

    return p1
.end method

.method public markInstalled(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 7

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markInstalled: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 127
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/xiaopeng/xuimanager/nova/NovaResource;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 128
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelable([Landroid/os/Parcelable;)V

    .line 130
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v4, "nova"

    const-string v5, "markInstalled"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public markInstalled(ILcom/xiaopeng/xuimanager/nova/NovaResource;I)V
    .locals 8

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markInstalled: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", installed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", resource="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CLIENT"

    invoke-static {v4, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v6, 0x1

    aput p3, v4, v6

    .line 140
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    new-array v4, v6, [Lcom/xiaopeng/xuimanager/nova/NovaResource;

    aput-object p2, v4, v5

    .line 141
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelable([Landroid/os/Parcelable;)V

    .line 143
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v5, "nova"

    const-string v6, "markInstalledArg"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBusStatusChanged(I)V
    .locals 4

    .line 634
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;->onBusStatusChanged(I)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    const-string p1, "CLIENT"

    const-string v0, "nova service connected, reset apps..."

    .line 636
    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->appConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 638
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->appConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 639
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->appConfigs:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/nova/NovaAppConfig;

    .line 640
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->setupAppInner(ILcom/xiaopeng/xuimanager/nova/NovaAppConfig;)V

    goto :goto_0

    .line 642
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "CLIENT"

    const-string v0, "nova service disconnected"

    .line 644
    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPipeBusEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPipeBusParcelEvent(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 4

    .line 571
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "onReceivePushMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "onResourceReady"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "onResourceAdded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "onDownloadInProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "onDownloadStarted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "onDownloadPaused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "onDownloadError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "onResourceDeleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "onSyncStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "onDownloadResumed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "onSelectionChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "onResourceUpdated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_c
    const-string v0, "onSyncCompleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    move v3, v1

    goto :goto_0

    :sswitch_d
    const-string v0, "onDownloadCanceled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 597
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onReceivePushMessage(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 585
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getBoolean()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onResourceReady(ILcom/xiaopeng/xuimanager/nova/NovaResource;Z)V

    goto/16 :goto_1

    .line 573
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onResourceAdded(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    goto/16 :goto_1

    .line 609
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable(I)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable(I)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaDownloadProgress;

    invoke-virtual {p1, v0, v2, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onDownloadInProgress(ILcom/xiaopeng/xuimanager/nova/NovaResource;Lcom/xiaopeng/xuimanager/nova/NovaDownloadProgress;)V

    goto/16 :goto_1

    .line 605
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onDownloadStarted(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    goto/16 :goto_1

    .line 613
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onDownloadPaused(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    goto/16 :goto_1

    .line 625
    :pswitch_6
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object p1

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    aget p1, p1, v1

    invoke-virtual {v0, v2, p2, p1}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onDownloadError(ILcom/xiaopeng/xuimanager/nova/NovaResource;I)V

    goto :goto_1

    .line 581
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onResourceDeleted(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    goto :goto_1

    .line 589
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onSyncStart(I)V

    goto :goto_1

    .line 617
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onDownloadResumed(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    goto :goto_1

    .line 601
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onSelectionChanged(I)V

    goto :goto_1

    .line 577
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onResourceUpdated(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    goto :goto_1

    .line 593
    :pswitch_c
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaSyncResult;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onSyncCompleted(ILcom/xiaopeng/xuimanager/nova/NovaSyncResult;)V

    goto :goto_1

    .line 621
    :pswitch_d
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->onDownloadCanceled(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b4ca2c0 -> :sswitch_d
        -0x6e9f61af -> :sswitch_c
        -0x3d390712 -> :sswitch_b
        -0x37e5879 -> :sswitch_a
        0x3df3450 -> :sswitch_9
        0x1afb5f68 -> :sswitch_8
        0x2d2a484c -> :sswitch_7
        0x338612c1 -> :sswitch_6
        0x4f136f95 -> :sswitch_5
        0x515f36fa -> :sswitch_4
        0x646d8959 -> :sswitch_3
        0x6bc469f3 -> :sswitch_2
        0x6cb46296 -> :sswitch_1
        0x7bf1e0e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pauseDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 9

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseDownloadResource: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fingerprint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", url="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CLIENT"

    invoke-static {v5, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/xiaopeng/xuimanager/nova/NovaResource;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 412
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelable([Landroid/os/Parcelable;)V

    .line 414
    iget-object v5, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v6, "nova"

    const-string v7, "pauseDownloadResource"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public register(ILcom/xiaopeng/xuimanager/nova/NovaListener;)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLIENT"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->register(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public reportEvent(Lcom/xiaopeng/xuimanager/nova/NovaResource;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportEvent: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fingerprint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", event="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", status="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    invoke-static {p3}, Lcom/xiaopeng/xuimanager/nova/NovaEvent$Status;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", context="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "CLIENT"

    .line 313
    invoke-static {v7, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v7, 0x1

    new-array v8, v7, [Lcom/xiaopeng/xuimanager/nova/NovaResource;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 316
    invoke-virtual {v0, v8}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelable([Landroid/os/Parcelable;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object p2, v8, v9

    aput-object p4, v8, v7

    .line 317
    invoke-virtual {v0, v8}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 320
    iget-object v7, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v8, "nova"

    const-string v9, "reportEvent"

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v0, v10}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 324
    invoke-static {p3}, Lcom/xiaopeng/xuimanager/nova/NovaEvent$Status;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resumeDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 9

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeDownloadResource: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fingerprint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", url="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CLIENT"

    invoke-static {v5, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/xiaopeng/xuimanager/nova/NovaResource;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 428
    invoke-virtual {v0, v5}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelable([Landroid/os/Parcelable;)V

    .line 430
    iget-object v5, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v6, "nova"

    const-string v7, "resumeDownloadResource"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public selectResource(ILjava/lang/String;)V
    .locals 7

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectResource: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fingerprint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 537
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 538
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 540
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v4, "nova"

    const-string v5, "selectResource"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAutoSync(IZ)V
    .locals 7

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoSync: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", enable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 332
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 333
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setBoolean(Z)V

    .line 335
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v4, "nova"

    const-string v5, "setAutoSync"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFileType(ILjava/lang/String;)V
    .locals 6

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFileType: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fileType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CLIENT"

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 85
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 86
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v3, "nova"

    const-string v4, "setFileType"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", fileappCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHeaders(ILandroid/os/Bundle;)V
    .locals 7

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeaders: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", headers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 114
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 115
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelable([Landroid/os/Parcelable;)V

    .line 116
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v4, "nova"

    const-string v5, "setHeaders"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHook(ILcom/xiaopeng/xuimanager/nova/INovaClientHook;)V
    .locals 7

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHook: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hook="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 71
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 73
    new-instance v4, Lcom/xiaopeng/xuimanager/nova/NovaHookBinder;

    invoke-direct {v4, p2}, Lcom/xiaopeng/xuimanager/nova/NovaHookBinder;-><init>(Lcom/xiaopeng/xuimanager/nova/INovaClientHook;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIBinder(Landroid/os/IBinder;)V

    .line 74
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v5, "nova"

    const-string v6, "setHook"

    invoke-virtual {v4, v5, v6, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setSelectionMode(II)V
    .locals 7

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectionMode: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    .line 469
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 471
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v4, "nova"

    const-string v5, "setSelectionMode"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setupApp(ILcom/xiaopeng/xuimanager/nova/NovaAppConfig;)V
    .locals 3

    const-string v0, "CLIENT"

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupApp: appCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->appConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->appConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->setupAppInner(ILcom/xiaopeng/xuimanager/nova/NovaAppConfig;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;ZLcom/xiaopeng/xuimanager/nova/NovaOpenAction;)V
    .locals 11

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownloadResource: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fingerprint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", url="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", useSystemTraffic="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", openAction="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "CLIENT"

    invoke-static {v7, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    .line 395
    invoke-virtual {v0, v7}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 396
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setBoolean(Z)V

    .line 398
    iget-object v7, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v8, "nova"

    const-string v9, "startDownloadResource"

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v0, v10}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->appCode:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/nova/NovaResource;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public suspendAutoSync(IZ)V
    .locals 7

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suspendAutoSync: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", suspend="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 365
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 366
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setBoolean(Z)V

    .line 368
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v4, "nova"

    const-string v5, "suspendAutoSync"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sync(I)V
    .locals 5

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLIENT"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 380
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 382
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v2, "nova"

    const-string v3, "sync"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregister(ILcom/xiaopeng/xuimanager/nova/NovaListener;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLIENT"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->registerAndNotify:Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/nova/NovaListenerRegisterAndNotify;->unregister(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public unselectResource(ILjava/lang/String;)V
    .locals 7

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unselectResource: appCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fingerprint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CLIENT"

    invoke-static {v3, v0}, Lcom/xiaopeng/xuimanager/nova/Nova;->INFO(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 552
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setInt(I)V

    .line 553
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setString(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/nova/NovaClient;->busAgent:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    const-string v4, "nova"

    const-string v5, "unselectResource"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->logRemoteError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
