.class public final Landroid/car/vms/VmsSubscriberManager;
.super Landroid/car/CarManagerBase;
.source "VmsSubscriberManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_AVAILABLE_LAYERS:Landroid/car/vms/VmsAvailableLayers;

.field private static final DEFAULT_PUBLISHER_INFO:[B

.field private static final TAG:Ljava/lang/String; = "VmsSubscriberManager"


# instance fields
.field private mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

.field private final mClientCallbackLock:Ljava/lang/Object;

.field private mClientManager:Landroid/car/vms/VmsClientManager;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

.field private mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 48
    sput-object v1, Landroid/car/vms/VmsSubscriberManager;->DEFAULT_PUBLISHER_INFO:[B

    .line 49
    new-instance v1, Landroid/car/vms/VmsAvailableLayers;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/car/vms/VmsAvailableLayers;-><init>(Ljava/util/Set;I)V

    sput-object v1, Landroid/car/vms/VmsSubscriberManager;->DEFAULT_AVAILABLE_LAYERS:Landroid/car/vms/VmsAvailableLayers;

    return-void
.end method

.method private constructor <init>(Landroid/car/Car;Landroid/car/vms/VmsClientManager;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    .line 92
    iput-object p2, p0, Landroid/car/vms/VmsSubscriberManager;->mClientManager:Landroid/car/vms/VmsClientManager;

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Landroid/car/vms/IVmsSubscriberService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberService;

    move-result-object p1

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    .line 103
    new-instance p1, Landroid/car/vms/VmsSubscriberManager$1;

    invoke-direct {p1, p0}, Landroid/car/vms/VmsSubscriberManager$1;-><init>(Landroid/car/vms/VmsSubscriberManager;)V

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    return-void
.end method

.method static synthetic access$000(Landroid/car/vms/VmsSubscriberManager;)Ljava/lang/Object;
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/vms/VmsSubscriberManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 45
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/vms/VmsSubscriberManager;Landroid/car/vms/VmsAvailableLayers;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->dispatchOnAvailabilityChangeMessage(Landroid/car/vms/VmsAvailableLayers;)V

    return-void
.end method

.method static synthetic access$300(Landroid/car/vms/VmsSubscriberManager;Landroid/car/vms/VmsLayer;[B)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/car/vms/VmsSubscriberManager;->dispatchOnReceiveMessage(Landroid/car/vms/VmsLayer;[B)V

    return-void
.end method

.method private dispatchOnAvailabilityChangeMessage(Landroid/car/vms/VmsAvailableLayers;)V
    .locals 1

    .line 318
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->getClientCallbackThreadSafe()Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "VmsSubscriberManager"

    const-string v0, "Cannot dispatch availability change message."

    .line 320
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_0
    invoke-interface {v0, p1}, Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;->onLayersAvailabilityChanged(Landroid/car/vms/VmsAvailableLayers;)V

    return-void
.end method

.method private dispatchOnReceiveMessage(Landroid/car/vms/VmsLayer;[B)V
    .locals 1

    .line 309
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->getClientCallbackThreadSafe()Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "VmsSubscriberManager"

    const-string p2, "Cannot dispatch received message."

    .line 311
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;->onVmsMessageReceived(Landroid/car/vms/VmsLayer;[B)V

    return-void
.end method

.method private getClientCallbackThreadSafe()Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;
    .locals 3

    .line 328
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string v0, "VmsSubscriberManager"

    const-string v2, "client callback not set."

    .line 332
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 330
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vehicle_map_subscriber_service"

    return-object v0
.end method

.method private verifySubscriptionIsAllowed()V
    .locals 2

    .line 341
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->getClientCallbackThreadSafe()Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrap(Landroid/car/Car;Landroid/car/vms/VmsClientManager;)Landroid/car/vms/VmsSubscriberManager;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Landroid/car/vms/VmsSubscriberManager;

    invoke-direct {v0, p0, p1}, Landroid/car/vms/VmsSubscriberManager;-><init>(Landroid/car/Car;Landroid/car/vms/VmsClientManager;)V

    return-object v0
.end method


# virtual methods
.method public clearVmsSubscriberClientCallback()V
    .locals 3

    .line 168
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 170
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x0

    .line 172
    :try_start_1
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v2, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v1, v2}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_2
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    .line 178
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 179
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 174
    :try_start_3
    invoke-virtual {p0, v1}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_4
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    .line 178
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 179
    monitor-exit v1

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 176
    :goto_1
    iget-object v2, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_5
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    .line 178
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 179
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 170
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method

.method public getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;
    .locals 2

    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    invoke-interface {v0}, Landroid/car/vms/IVmsSubscriberService;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 208
    sget-object v1, Landroid/car/vms/VmsSubscriberManager;->DEFAULT_AVAILABLE_LAYERS:Landroid/car/vms/VmsAvailableLayers;

    invoke-virtual {p0, v0, v1}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/VmsAvailableLayers;

    return-object v0
.end method

.method public getPublisherInfo(I)[B
    .locals 1

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    invoke-interface {v0, p1}, Landroid/car/vms/IVmsSubscriberService;->getPublisherInfo(I)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 194
    sget-object v0, Landroid/car/vms/VmsSubscriberManager;->DEFAULT_PUBLISHER_INFO:[B

    invoke-virtual {p0, p1, v0}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public onCarDisconnected()V
    .locals 2

    .line 352
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 353
    :try_start_0
    iput-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    .line 354
    iput-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 355
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVmsSubscriberClientCallback(Ljava/util/concurrent/Executor;Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;)V
    .locals 2

    .line 148
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    if-nez v1, :cond_0

    const-string v1, "clientCallback cannot be null"

    .line 152
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    iput-object p2, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    const-string p2, "executor cannot be null"

    .line 154
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    iget-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object p2, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {p1, p2}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    .line 150
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client callback is already configured."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public startMonitoring()V
    .locals 2

    .line 252
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->verifySubscriptionIsAllowed()V

    .line 254
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, v1}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 255
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/vms/VmsOperationRecorder;->startMonitoring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {p0, v0}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, v1}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 302
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/vms/VmsOperationRecorder;->stopMonitoring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {p0, v0}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public subscribe(Landroid/car/vms/VmsLayer;)V
    .locals 2

    .line 220
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->verifySubscriptionIsAllowed()V

    .line 222
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, v1, p1}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 223
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/vms/VmsOperationRecorder;->subscribe(Landroid/car/vms/VmsLayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public subscribe(Landroid/car/vms/VmsLayer;I)V
    .locals 2

    .line 238
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->verifySubscriptionIsAllowed()V

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, v1, p1, p2}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 242
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->subscribe(Landroid/car/vms/VmsLayer;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public unsubscribe(Landroid/car/vms/VmsLayer;)V
    .locals 2

    .line 269
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->verifySubscriptionIsAllowed()V

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, v1, p1}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 272
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/vms/VmsOperationRecorder;->unsubscribe(Landroid/car/vms/VmsLayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public unsubscribe(Landroid/car/vms/VmsLayer;I)V
    .locals 2

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, v1, p1, p2}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 290
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->unsubscribe(Landroid/car/vms/VmsLayer;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 292
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
