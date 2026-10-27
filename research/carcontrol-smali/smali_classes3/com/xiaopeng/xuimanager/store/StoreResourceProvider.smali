.class public Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;
.super Ljava/lang/Object;
.source "StoreResourceProvider.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# static fields
.field public static final INVALID_DOWNLOAD_BYTES:J = -0x1L

.field public static final INVALID_DOWNLOAD_ID:J = -0x1L

.field public static final INVALID_DOWNLOAD_STATUS:I = -0x1

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STORE_RESOURCE_MANAGER_SERVICE:Ljava/lang/String; = "com.xiaopeng.appstore"

.field public static final STORE_RESOURCE_MANAGER_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.xiaopeng.appstore.resourceservice.ResourceService"

.field private static final TAG:Ljava/lang/String; = "StoreResourceProvider"

.field private static volatile sResourceManager:Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;


# instance fields
.field private mClientRMDownloadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/store/RMDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionState:I

.field private final mContext:Landroid/content/Context;

.field private mIRMDownloadCallback:Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

.field private final mResourceServiceReady:Ljava/lang/Object;

.field private mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

.field private final mServiceConnectionListener:Landroid/content/ServiceConnection;

.field private mServiceConnectionListenerClient:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mResourceServiceReady:Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider$1;-><init>(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 74
    new-instance v0, Lcom/xiaopeng/xuimanager/store/RMDownloadCallbackListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/store/RMDownloadCallbackListenerToService;-><init>(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mIRMDownloadCallback:Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/List;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;)Lcom/xiaopeng/xuimanager/store/IResourceService;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;Lcom/xiaopeng/xuimanager/store/IResourceService;)Lcom/xiaopeng/xuimanager/store/IResourceService;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;)Ljava/lang/Object;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mResourceServiceReady:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I

    return p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;)Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mIRMDownloadCallback:Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;)Landroid/content/ServiceConnection;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private startResourceManagerService()V
    .locals 4

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaopeng.appstore"

    const-string v2, "com.xiaopeng.appstore.resourceservice.ResourceService"

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)Z
    .locals 3

    .line 335
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownload url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->cancelDownload(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 340
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 283
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelResDownload resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->cancelResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public connect()V
    .locals 2

    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 639
    iput v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I

    .line 640
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->startResourceManagerService()V

    .line 641
    monitor-exit p0

    return-void

    .line 637
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected or connecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 641
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .line 648
    monitor-enter p0

    .line 649
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I

    if-nez v0, :cond_0

    .line 650
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 653
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mIRMDownloadCallback:Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->unregisterDownloadListener(Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 655
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 657
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    const/4 v0, 0x0

    .line 658
    iput v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 660
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dispatchDownloadCallback(ILcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/store/RMDownloadListener;

    .line 601
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/store/RMDownloadListener;->onDownloadCallback(ILcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchMenuOpenCallback(Ljava/lang/String;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 612
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/store/RMDownloadListener;

    .line 613
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/store/RMDownloadListener;->onMenuOpenCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enqueue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .line 370
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->enqueue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 375
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public fetchDownloadStatus(J)I
    .locals 3

    .line 405
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchDownloadStatusById id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->fetchDownloadStatusById(J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 410
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public fetchDownloadStatus(Ljava/lang/String;)I
    .locals 3

    .line 422
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchDownloadStatusByUrl url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->fetchDownloadStatusByUrl(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 427
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public getDownloadStatus(J)I
    .locals 3

    .line 456
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadStatusById id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->getDownloadStatusById(J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 461
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public getDownloadStatus(Ljava/lang/String;)I
    .locals 3

    .line 439
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadStatusByUrl url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->getDownloadStatusByUrl(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 444
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public getDownloadedBytes(J)J
    .locals 3

    .line 507
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadedBytesById id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->getDownloadedBytesById(J)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 512
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public getDownloadedBytes(Ljava/lang/String;)J
    .locals 3

    .line 524
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadedBytesByUrl url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->getDownloadedBytesByUrl(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 529
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLocalFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 571
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalFileByUrl url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->getLocalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 576
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 579
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTotalBytes(J)J
    .locals 3

    .line 473
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTotalBytesById id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->getTotalBytesById(J)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 478
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public getTotalBytes(Ljava/lang/String;)J
    .locals 3

    .line 490
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadStatusById url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->getTotalBytesByUrl(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 495
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isConnected()Z
    .locals 1

    .line 684
    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 686
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 696
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isResourceServiceConnected()Z
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mResourceServiceReady:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 105
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting Resource service connected, mConnectionState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mConnectionState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->startResourceManagerService()V

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mResourceServiceReady:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 109
    :try_start_2
    sget-object v2, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting Resource service connected, InterruptedException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onXUIDisconnected()V
    .locals 0

    return-void
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->pause(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public pauseDownload(Ljava/lang/String;)Z
    .locals 3

    .line 352
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownload url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->pauseDownload(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 301
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseResDownload resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->pauseResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 306
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public queryAllInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;",
            ">;"
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    const-string v1, "queryAllInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/store/IResourceService;->queryAllInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    .line 394
    :goto_0
    sget-object v1, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAllInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;",
            ">;"
        }
    .end annotation

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->queryDownloadInfo([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/store/bean/ResourceContainerBean;
    .locals 1

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->queryResourceData(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/store/bean/ResourceContainerBean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerDownloadListener(Lcom/xiaopeng/xuimanager/store/RMDownloadListener;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDownloadListener, ignore this listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public releaseService()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mIRMDownloadCallback:Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->unregisterDownloadListener(Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 672
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 675
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    const-string v1, "releaseService, service is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->remove(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 234
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public removeLocalData(J)V
    .locals 3

    .line 540
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLocalData id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->removeLocalDataById(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 545
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeLocalData(Ljava/lang/String;)V
    .locals 3

    .line 555
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLocalData url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->removeLocalDataByUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 560
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resume(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->resume(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 216
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public resumeDownload(Ljava/lang/String;)Z
    .locals 3

    .line 318
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDownload url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->resumeDownload(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 265
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeResDownload resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resourceId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/store/IResourceService;->resumeResDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setServiceConnectionListenerClient(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    return-void
.end method

.method public start(Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;)Z
    .locals 3

    .line 193
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start resourceBean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->isResourceServiceConnected()Z

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mService:Lcom/xiaopeng/xuimanager/store/IResourceService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/store/IResourceService;->start(Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public unbindService()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 623
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/store/RMDownloadListener;

    .line 624
    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/store/RMDownloadListener;->unbindService()V

    goto :goto_0

    .line 627
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->TAG:Ljava/lang/String;

    const-string v1, "unbindService, disconnect  automatically"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->disconnect()V

    return-void
.end method

.method public unregisterDownloadListener(Lcom/xiaopeng/xuimanager/store/RMDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/StoreResourceProvider;->mClientRMDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
