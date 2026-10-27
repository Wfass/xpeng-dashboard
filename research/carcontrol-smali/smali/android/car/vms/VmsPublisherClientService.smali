.class public abstract Landroid/car/vms/VmsPublisherClientService;
.super Landroid/app/Service;
.source "VmsPublisherClientService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/vms/VmsPublisherClientService$VmsEventHandler;,
        Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_SUBSCRIPTIONS:Landroid/car/vms/VmsSubscriptionState;

.field private static final TAG:Ljava/lang/String; = "VmsPublisherClientService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mToken:Landroid/os/IBinder;

.field private final mVmsPublisherClient:Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;

.field private volatile mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Landroid/car/vms/VmsSubscriptionState;

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/car/vms/VmsSubscriptionState;-><init>(ILjava/util/Set;Ljava/util/Set;)V

    sput-object v0, Landroid/car/vms/VmsPublisherClientService;->DEFAULT_SUBSCRIPTIONS:Landroid/car/vms/VmsSubscriptionState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/car/vms/VmsPublisherClientService$VmsEventHandler;

    invoke-direct {v0, p0}, Landroid/car/vms/VmsPublisherClientService$VmsEventHandler;-><init>(Landroid/car/vms/VmsPublisherClientService;)V

    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;

    invoke-direct {v0, p0}, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;-><init>(Landroid/car/vms/VmsPublisherClientService;)V

    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherClient:Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    .line 70
    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Landroid/car/vms/VmsPublisherClientService;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/vms/VmsPublisherClientService;Landroid/os/IBinder;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/car/vms/VmsPublisherClientService;->setToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/vms/VmsPublisherClientService;Landroid/car/vms/IVmsPublisherService;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroid/car/vms/VmsPublisherClientService;->setVmsPublisherService(Landroid/car/vms/IVmsPublisherService;)V

    return-void
.end method

.method private getTokenForPublisherServiceThreadSafe()Landroid/os/IBinder;
    .locals 2

    .line 148
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsPublisherClientService;->mToken:Landroid/os/IBinder;

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VmsPublisherService does not have a valid token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 155
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VmsPublisherService not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setToken(Landroid/os/IBinder;)V
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iput-object p1, p0, Landroid/car/vms/VmsPublisherClientService;->mToken:Landroid/os/IBinder;

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setVmsPublisherService(Landroid/car/vms/IVmsPublisherService;)V
    .locals 0

    .line 206
    iput-object p1, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    .line 207
    invoke-virtual {p0}, Landroid/car/vms/VmsPublisherClientService;->onVmsPublisherServiceReady()V

    return-void
.end method


# virtual methods
.method public final getPublisherId([B)I
    .locals 3

    .line 173
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {v0, p1}, Landroid/car/vms/IVmsPublisherService;->getPublisherId([B)I

    move-result p1

    const-string v0, "VmsPublisherClientService"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assigned publisher ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/vms/VmsOperationRecorder;->getPublisherId(I)V

    return p1

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "VmsPublisherService not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getSubscriptions()Landroid/car/vms/VmsSubscriptionState;
    .locals 2

    .line 195
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {v0}, Landroid/car/vms/IVmsPublisherService;->getSubscriptions()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 201
    sget-object v1, Landroid/car/vms/VmsPublisherClientService;->DEFAULT_SUBSCRIPTIONS:Landroid/car/vms/VmsSubscriptionState;

    invoke-static {p0, v0, v1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/app/Service;Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/VmsSubscriptionState;

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VmsPublisherService not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 76
    iget-object p1, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherClient:Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;

    invoke-virtual {p1}, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroid/car/vms/VmsPublisherClientService;->stopSelf()V

    .line 83
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected abstract onVmsPublisherServiceReady()V
.end method

.method public abstract onVmsSubscriptionChange(Landroid/car/vms/VmsSubscriptionState;)V
.end method

.method public final publish(Landroid/car/vms/VmsLayer;I[B)V
    .locals 2

    const-string v0, "layer cannot be null"

    .line 115
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-direct {p0}, Landroid/car/vms/VmsPublisherClientService;->getTokenForPublisherServiceThreadSafe()Landroid/os/IBinder;

    move-result-object v0

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {v1, v0, p1, p2, p3}, Landroid/car/vms/IVmsPublisherService;->publish(Landroid/os/IBinder;Landroid/car/vms/VmsLayer;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/app/Service;Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public final setLayersOffering(Landroid/car/vms/VmsLayersOffering;)V
    .locals 2

    const-string v0, "offering cannot be null"

    .line 134
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-direct {p0}, Landroid/car/vms/VmsPublisherClientService;->getTokenForPublisherServiceThreadSafe()Landroid/os/IBinder;

    move-result-object v0

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {v1, v0, p1}, Landroid/car/vms/IVmsPublisherService;->setLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V

    .line 141
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/vms/VmsOperationRecorder;->setLayersOffering(Landroid/car/vms/VmsLayersOffering;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-static {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/app/Service;Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
