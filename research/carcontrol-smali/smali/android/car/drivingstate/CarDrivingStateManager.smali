.class public final Landroid/car/drivingstate/CarDrivingStateManager;
.super Landroid/car/CarManagerBase;
.source "CarDrivingStateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;,
        Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;,
        Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_HANDLE_DRIVING_STATE_CHANGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarDrivingStateMgr"

.field private static final VDBG:Z = false


# instance fields
.field private mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

.field private mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;

.field private final mEventCallbackHandler:Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

.field private mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 57
    invoke-static {p2}, Landroid/car/drivingstate/ICarDrivingState$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarDrivingState;

    move-result-object p1

    iput-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    .line 58
    new-instance p1, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

    invoke-virtual {p0}, Landroid/car/drivingstate/CarDrivingStateManager;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;-><init>(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mEventCallbackHandler:Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager;->handleDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager;->dispatchDrivingStateChangeToClient(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    return-void
.end method

.method private dispatchDrivingStateChangeToClient(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 258
    :cond_0
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;

    .line 260
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 262
    invoke-interface {v0, p1}, Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;->onDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 260
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "drivingstate"

    return-object v0
.end method

.method private handleDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 2

    .line 220
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mEventCallbackHandler:Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1, p1}, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 220
    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getCurrentCarDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 163
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    invoke-interface {v0}, Landroid/car/drivingstate/ICarDrivingState;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v0, v1}, Landroid/car/drivingstate/CarDrivingStateManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarDrivingStateEvent;

    return-object v0
.end method

.method public injectDrivingState(I)V
    .locals 3

    .line 181
    new-instance v0, Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Landroid/car/drivingstate/CarDrivingStateEvent;-><init>(IJ)V

    .line 184
    :try_start_0
    iget-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    invoke-interface {p1, v0}, Landroid/car/drivingstate/ICarDrivingState;->injectDrivingState(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 74
    :try_start_0
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    .line 75
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/car/drivingstate/CarDrivingStateManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string v1, "drivingstate"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/drivingstate/ICarDrivingState$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarDrivingState;

    move-result-object v0

    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {p0, v0}, Landroid/car/drivingstate/CarDrivingStateManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerListener(Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    iget-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    if-nez p1, :cond_1

    .line 120
    new-instance p1, Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    invoke-direct {p1, p0}, Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;-><init>(Landroid/car/drivingstate/CarDrivingStateManager;)V

    iput-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    .line 123
    :cond_1
    iget-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    invoke-interface {p1, v0}, Landroid/car/drivingstate/ICarDrivingState;->registerDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 108
    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 141
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    iget-object v1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    invoke-interface {v0, v1}, Landroid/car/drivingstate/ICarDrivingState;->unregisterDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;

    .line 146
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/car/drivingstate/CarDrivingStateManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
