.class public final Landroid/car/drivingstate/CarUxRestrictionsManager;
.super Landroid/car/CarManagerBase;
.source "CarUxRestrictionsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarUxRestrictionsManager$EventCallbackHandler;,
        Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;,
        Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_HANDLE_UX_RESTRICTIONS_CHANGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarUxRManager"

.field public static final UX_RESTRICTION_MODE_BASELINE:Ljava/lang/String; = "baseline"

.field private static final VDBG:Z = false


# instance fields
.field private mDisplayId:I

.field private final mEventCallbackHandler:Landroid/car/drivingstate/CarUxRestrictionsManager$EventCallbackHandler;

.field private mListenerToService:Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;

.field private mUxRListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

.field private mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mDisplayId:I

    .line 69
    invoke-static {p2}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object p1

    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    .line 70
    new-instance p1, Landroid/car/drivingstate/CarUxRestrictionsManager$EventCallbackHandler;

    .line 71
    invoke-virtual {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/drivingstate/CarUxRestrictionsManager$EventCallbackHandler;-><init>(Landroid/car/drivingstate/CarUxRestrictionsManager;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mEventCallbackHandler:Landroid/car/drivingstate/CarUxRestrictionsManager$EventCallbackHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/drivingstate/CarUxRestrictionsManager;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/drivingstate/CarUxRestrictionsManager;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->dispatchUxRChangeToClient(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method private dispatchUxRChangeToClient(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 378
    :cond_0
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    if-eqz v0, :cond_1

    .line 380
    invoke-interface {v0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    .line 382
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getDisplayId()I
    .locals 3

    .line 386
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mDisplayId:I

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context returns display ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mDisplayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarUxRManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mDisplayId:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mDisplayId:I

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not retrieve display id. Using default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mDisplayId:I

    return v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uxrestriction"

    return-object v0
.end method

.method private handleUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2

    .line 343
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mEventCallbackHandler:Landroid/car/drivingstate/CarUxRestrictionsManager$EventCallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager$EventCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager$EventCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .line 307
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    invoke-interface {v0}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getConfigs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p0, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 1

    .line 199
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCarUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 1

    .line 208
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    invoke-interface {v0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/drivingstate/CarUxRestrictions;

    return-object p1
.end method

.method public getRestrictionMode()Ljava/lang/String;
    .locals 2

    .line 254
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    invoke-interface {v0}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getRestrictionMode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStagedConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .line 292
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    invoke-interface {v0}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getStagedConfigs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 294
    invoke-virtual {p0, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public onCarDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mListenerToService:Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnected()V
    .locals 2

    .line 76
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "uxrestriction"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v0

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {p0, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;I)V

    return-void
.end method

.method public registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;I)V
    .locals 1

    .line 126
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    if-eqz v0, :cond_0

    .line 132
    monitor-exit p0

    return-void

    .line 134
    :cond_0
    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    iget-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mListenerToService:Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;

    if-nez p1, :cond_1

    .line 139
    new-instance p1, Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;

    invoke-direct {p1, p0}, Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;-><init>(Landroid/car/drivingstate/CarUxRestrictionsManager;)V

    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mListenerToService:Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;

    .line 142
    :cond_1
    iget-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mListenerToService:Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;

    invoke-interface {p1, v0, p2}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public saveUxRestrictionsConfigurationForNextBoot(Landroid/car/drivingstate/CarUxRestrictionsConfiguration;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 273
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->saveUxRestrictionsConfigurationForNextBoot(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public saveUxRestrictionsConfigurationForNextBoot(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 186
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    invoke-interface {v0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->saveUxRestrictionsConfigurationForNextBoot(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public setRestrictionMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mode must not be null"

    .line 232
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    invoke-interface {v0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->setRestrictionMode(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public unregisterListener()V
    .locals 2

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    if-nez v0, :cond_0

    .line 157
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mUxRService:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsManager;->mListenerToService:Landroid/car/drivingstate/CarUxRestrictionsManager$CarUxRestrictionsChangeListenerToService;

    invoke-interface {v0, v1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->unregisterUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0, v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 160
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
