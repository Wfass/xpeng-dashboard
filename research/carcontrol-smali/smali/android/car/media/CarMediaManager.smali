.class public final Landroid/car/media/CarMediaManager;
.super Landroid/car/CarManagerBase;
.source "CarMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/CarMediaManager$MediaSourceChangedListener;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/media/CarMediaManager$MediaSourceChangedListener;",
            "Landroid/car/media/ICarMediaSourceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/media/ICarMedia;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    .line 45
    invoke-static {p2}, Landroid/car/media/ICarMedia$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarMedia;

    move-result-object p1

    iput-object p1, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "car_media"

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getMediaSource()Landroid/content/ComponentName;
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    invoke-interface {v0}, Landroid/car/media/ICarMedia;->getMediaSource()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 81
    :try_start_1
    invoke-virtual {p0, v0, v1}, Landroid/car/media/CarMediaManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/car/media/CarMediaManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "car_media"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/media/ICarMedia$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarMedia;

    move-result-object v0

    iput-object v0, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {p0, v0}, Landroid/car/media/CarMediaManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerMediaSourceListener(Landroid/car/media/CarMediaManager$MediaSourceChangedListener;)V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    new-instance v0, Landroid/car/media/CarMediaManager$1;

    invoke-direct {v0, p0, p1}, Landroid/car/media/CarMediaManager$1;-><init>(Landroid/car/media/CarMediaManager;Landroid/car/media/CarMediaManager$MediaSourceChangedListener;)V

    .line 113
    iget-object v1, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    invoke-interface {p1, v0}, Landroid/car/media/ICarMedia;->registerMediaSourceListener(Landroid/car/media/ICarMediaSourceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 116
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/car/media/CarMediaManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMediaSource(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    invoke-interface {v0, p1}, Landroid/car/media/ICarMedia;->setMediaSource(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 95
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/car/media/CarMediaManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterMediaSourceListener(Landroid/car/media/CarMediaManager$MediaSourceChangedListener;)V
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/media/ICarMediaSourceListener;

    .line 129
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    invoke-interface {v0, p1}, Landroid/car/media/ICarMedia;->unregisterMediaSourceListener(Landroid/car/media/ICarMediaSourceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 131
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/car/media/CarMediaManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
