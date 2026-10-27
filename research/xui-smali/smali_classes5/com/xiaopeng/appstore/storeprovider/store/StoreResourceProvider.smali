.class public Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
.super Ljava/lang/Object;
.source "StoreResourceProvider.java"


# static fields
.field public static final INVALID_DOWNLOAD_BYTES:J = -0x1L

.field public static final INVALID_DOWNLOAD_ID:J = -0x1L

.field public static final INVALID_DOWNLOAD_STATUS:I = -0x1

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STORE_RESOURCE_MANAGER_SERVICE:Ljava/lang/String; = "com.xiaopeng.resourceservice"

.field public static final STORE_RESOURCE_MANAGER_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.xiaopeng.appstore.resourceservice.ResourceService"

.field private static final TAG:Ljava/lang/String;

.field private static volatile sResourceManager:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;


# instance fields
.field private mClientRMDownloadListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionState:I

.field private final mContext:Landroid/content/Context;

.field private mIRMDownloadCallback:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

.field private final mResourceServiceReady:Ljava/lang/Object;

.field private mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

.field private final mServiceConnectionListener:Landroid/content/ServiceConnection;

.field private mServiceConnectionListenerClient:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mResourceServiceReady:Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;-><init>(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 69
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;-><init>(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mIRMDownloadCallback:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
    .param p1, "x1"    # Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mResourceServiceReady:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    .line 19
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I

    return v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
    .param p1, "x1"    # I

    .line 19
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mIRMDownloadCallback:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private startResourceManagerService()V
    .locals 4

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.resourceservice"

    const-string v2, "com.xiaopeng.appstore.resourceservice.ResourceService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 119
    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownload url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->cancelDownload(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 333
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "resourceId"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelResDownload resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public connect()V
    .locals 2

    .line 626
    monitor-enter p0

    .line 627
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I

    .line 631
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->startResourceManagerService()V

    .line 632
    monitor-exit p0

    .line 633
    return-void

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected or connecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .line 639
    monitor-enter p0

    .line 640
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I

    if-nez v0, :cond_0

    .line 641
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 644
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mIRMDownloadCallback:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 648
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I

    .line 650
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 651
    monitor-exit p0

    .line 652
    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dispatchDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "resourceDownloadInfo"    # Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "status",
            "resourceDownloadInfo"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;

    .line 592
    .local v1, "rmDownloadListener":Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;->onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V

    .line 593
    .end local v1    # "rmDownloadListener":Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
    goto :goto_0

    .line 595
    :cond_0
    return-void
.end method

.method public dispatchMenuOpenCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;

    .line 604
    .local v1, "rmDownloadListener":Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;->onMenuOpenCallback(Ljava/lang/String;)V

    .line 605
    .end local v1    # "rmDownloadListener":Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "title"
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->enqueue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 368
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public fetchDownloadStatus(J)I
    .locals 3
    .param p1, "id"    # J
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchDownloadStatusById id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->fetchDownloadStatusById(J)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public fetchDownloadStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchDownloadStatusByUrl url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->fetchDownloadStatusByUrl(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getDownloadStatus(J)I
    .locals 3
    .param p1, "id"    # J
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 447
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadStatusById id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadStatusById(J)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 454
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getDownloadStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 430
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadStatusByUrl url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadStatusByUrl(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getDownloadedBytes(J)J
    .locals 3
    .param p1, "id"    # J
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadedBytesById id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadedBytesById(J)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDownloadedBytes(Ljava/lang/String;)J
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadedBytesByUrl url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getDownloadedBytesByUrl(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLocalFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalFileByUrl url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 567
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 571
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalBytes(J)J
    .locals 3
    .param p1, "id"    # J
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 464
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalBytesById id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getTotalBytesById(J)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTotalBytes(Ljava/lang/String;)J
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadStatusById url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->getTotalBytesByUrl(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isConnected()Z
    .locals 1

    .line 675
    monitor-enter p0

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 685
    monitor-enter p0

    .line 686
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isResourceServiceConnected()Z
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mResourceServiceReady:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 96
    :try_start_1
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting Resource service connected, mConnectionState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mConnectionState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->startResourceManagerService()V

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mResourceServiceReady:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting Resource service connected, InterruptedException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 102
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_0

    .line 104
    :cond_0
    monitor-exit v0

    .line 105
    const/4 v0, 0x1

    return v0

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pause(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public pauseDownload(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownload url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pauseDownload(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "resourceId"
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseResDownload resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public queryAllInfo()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;",
            ">;"
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    const-string v1, "queryAllInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 381
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryAllInfo()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 385
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAllInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-object v0
.end method

.method public queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "resIds"    # [Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;",
            ">;"
        }
    .end annotation

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceContainerBean;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 159
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDownloadListener, ignore this listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void
.end method

.method public releaseService()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mIRMDownloadCallback:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 664
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 666
    :cond_0
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    const-string v1, "releaseService, service is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->remove(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public removeLocalData(J)V
    .locals 3
    .param p1, "id"    # J
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 531
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLocalData id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->removeLocalDataById(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 538
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public removeLocalData(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLocalData url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->removeLocalDataByUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public resume(Ljava/lang/String;)Z
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resume(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 209
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public resumeDownload(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDownload url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resumeDownload(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "resourceId"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "resourceId"
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeResDownload resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setServiceConnectionListenerClient(Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "mServiceConnectionListenerClient"    # Landroid/content/ServiceConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mServiceConnectionListenerClient"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    .line 114
    return-void
.end method

.method public start(Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;)Z
    .locals 3
    .param p1, "resourceBean"    # Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceBean"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start resourceBean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mService:Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->start(Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public unbindService()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;

    .line 615
    .local v1, "rmDownloadListener":Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
    invoke-interface {v1}, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;->unbindService()V

    .line 616
    .end local v1    # "rmDownloadListener":Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
    goto :goto_0

    .line 618
    :cond_0
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    const-string v1, "unbindService, disconnect  automatically"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->disconnect()V

    .line 620
    return-void
.end method

.method public unregisterDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadListener;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    return-void
.end method
