.class public final Landroid/car/storagemonitoring/CarStorageMonitoringManager;
.super Landroid/car/CarManagerBase;
.source "CarStorageMonitoringManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;,
        Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;
    }
.end annotation


# static fields
.field public static final INTENT_EXCESSIVE_IO:Ljava/lang/String; = "android.car.storagemonitoring.EXCESSIVE_IO"

.field private static final MSG_IO_STATS_EVENT:I = 0x0

.field public static final PRE_EOL_INFO_NORMAL:I = 0x1

.field public static final PRE_EOL_INFO_UNKNOWN:I = 0x0

.field public static final PRE_EOL_INFO_URGENT:I = 0x3

.field public static final PRE_EOL_INFO_WARNING:I = 0x2

.field public static final SHUTDOWN_COST_INFO_MISSING:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "CarStorageMonitoringManager"


# instance fields
.field private mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHandler:Lcom/android/car/internal/SingleMessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/internal/SingleMessageHandler<",
            "Landroid/car/storagemonitoring/IoStats;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 46
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    .line 81
    invoke-static {p2}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/storagemonitoring/ICarStorageMonitoring;

    move-result-object p1

    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    .line 82
    new-instance p1, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;

    invoke-virtual {p0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;-><init>(Landroid/car/storagemonitoring/CarStorageMonitoringManager;Landroid/os/Handler;I)V

    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mMessageHandler:Lcom/android/car/internal/SingleMessageHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)Lcom/android/car/internal/SingleMessageHandler;
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mMessageHandler:Lcom/android/car/internal/SingleMessageHandler;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)Ljava/util/Set;
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    return-object p0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "storage_monitoring"

    return-object v0
.end method


# virtual methods
.method public getAggregateIoStats()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getAggregateIoStats()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getBootIoStats()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getBootIoStats()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getIoStatsDeltas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStats;",
            ">;"
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getIoStatsDeltas()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPreEolIndicatorStatus()I
    .locals 2

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getPreEolIndicatorStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShutdownDiskWriteAmount()J
    .locals 2

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getShutdownDiskWriteAmount()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getWearEstimate()Landroid/car/storagemonitoring/WearEstimate;
    .locals 2

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getWearEstimate()Landroid/car/storagemonitoring/WearEstimate;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0, v0, v1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/WearEstimate;

    return-object v0
.end method

.method public getWearEstimateHistory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/WearEstimateChange;",
            ">;"
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getWearEstimateHistory()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public onCarDisconnected()V
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/car/CarManagerBase;->onConnected()V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->getICarOrThrow()Landroid/car/ICar;

    move-result-object v0

    const-string/jumbo v1, "storage_monitoring"

    invoke-interface {v0, v1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/storagemonitoring/ICarStorageMonitoring;

    move-result-object v0

    iput-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {p0, v0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public registerListener(Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;)V
    .locals 2

    .line 268
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    invoke-direct {v0, p0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;-><init>(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)V

    iput-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    iget-object v1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    invoke-interface {v0, v1}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->registerListener(Landroid/car/storagemonitoring/IIoStatsListener;)V

    .line 274
    :cond_1
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p0, p1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public unregisterListener(Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;)V
    .locals 1

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    iget-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    invoke-interface {p1, v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->unregisterListener(Landroid/car/storagemonitoring/IIoStatsListener;)V

    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p0, p1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :cond_1
    :goto_0
    return-void
.end method
