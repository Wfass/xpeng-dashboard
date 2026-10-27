.class public Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;
.super Landroid/car/CarManagerBase;
.source "CarRemoteControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarRemoteControlManager"


# instance fields
.field private final mCarRemoteControlListenerToService:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;

.field private final mClientListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/xpeng/remotecontrol/CarRemoteControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteControlHandler:Landroid/os/Handler;

.field private mService:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mRemoteControlHandler:Landroid/os/Handler;

    .line 34
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    .line 40
    invoke-static {p2}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mService:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    .line 41
    new-instance p1, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;

    invoke-direct {p1, p0}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;-><init>(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;)V

    iput-object p1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mCarRemoteControlListenerToService:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mRemoteControlHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->handleCarRemoteCameraEventChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->handleCarRemoteMirrorControlEventChanged(I)V

    return-void
.end method

.method private dispatchCarRemoteCameraToClients(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/xpeng/remotecontrol/CarRemoteControlListener;

    .line 113
    invoke-interface {v2, p1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlListener;->onRemoteCameraEventChange(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchCarRemoteMirrorSwToClients(I)V
    .locals 3

    .line 120
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/xpeng/remotecontrol/CarRemoteControlListener;

    .line 123
    invoke-interface {v2, p1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlListener;->onRemoteControlMirrorSwitch(I)V

    goto :goto_0

    .line 126
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_remote_control_service"

    return-object v0
.end method

.method private handleCarRemoteCameraEventChanged(Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mRemoteControlHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$EebOlzawnXp2Jhy8sMm2pA0gGsk;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$EebOlzawnXp2Jhy8sMm2pA0gGsk;-><init>(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleCarRemoteMirrorControlEventChanged(I)V
    .locals 2

    .line 101
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mRemoteControlHandler:Landroid/os/Handler;

    new-instance v1, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$gKtbxyH17Ozwl1fFFgP7FDOrCRU;

    invoke-direct {v1, p0, p1}, Landroid/car/xpeng/remotecontrol/-$$Lambda$CarRemoteControlManager$gKtbxyH17Ozwl1fFFgP7FDOrCRU;-><init>(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$handleCarRemoteCameraEventChanged$0$CarRemoteControlManager(Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->dispatchCarRemoteCameraToClients(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$handleCarRemoteMirrorControlEventChanged$1$CarRemoteControlManager(I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->dispatchCarRemoteMirrorSwToClients(I)V

    return-void
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "xp_remote_control_service"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    move-result-object v0

    iput-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mService:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {p0, v0}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerRemoteControlListener(Landroid/car/xpeng/remotecontrol/CarRemoteControlListener;)V
    .locals 5

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 59
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mService:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    iget-object v2, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mCarRemoteControlListenerToService:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;->registerRemoteControlListener(Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CarRemoteControlManager"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlListener failed, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "CarRemoteControlManager"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerRemoteControlListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mClientListenerList = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 65
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRemoteCameraControlCmd(Ljava/lang/String;)V
    .locals 2

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mService:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;->setRemoteCameraControlCmd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRemoteCameraControlCmd failed, e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarRemoteControlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRemoteControlMirrowFeedBack(I)V
    .locals 2

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mService:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;->setRemoteControlMirrowFeedBack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRemoteControlMirrowFeedBack failed, e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarRemoteControlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setRemoteControlMirrowOnOff(I)I
    .locals 2

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mService:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    invoke-interface {v0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;->setRemoteControlMirrowOnOff(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRemoteControlMirrowOnOff failed, e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarRemoteControlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized unregisterRemoteControlListener(Landroid/car/xpeng/remotecontrol/CarRemoteControlListener;)V
    .locals 5

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 77
    :try_start_2
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mService:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    iget-object v2, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mCarRemoteControlListenerToService:Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;

    invoke-interface {v1, v2}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;->unregisterRemoteControlListener(Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CarRemoteControlManager"

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterRemoteControlListener failed, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "CarRemoteControlManager"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterRemoteControlListener listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", mClientListenerList = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->mClientListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
