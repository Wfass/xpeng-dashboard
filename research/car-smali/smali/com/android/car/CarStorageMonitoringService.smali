.class public Lcom/android/car/CarStorageMonitoringService;
.super Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;
.source "CarStorageMonitoringService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarStorageMonitoringService$Configuration;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_DUMP:Z = false

.field public static final INTENT_EXCESSIVE_IO:Ljava/lang/String; = "android.car.storagemonitoring.EXCESSIVE_IO"

.field static final LIFETIME_WRITES_FILENAME:Ljava/lang/String; = "lifetime_write"

.field private static final MIN_WEAR_ESTIMATE_OF_CONCERN:I = 0x50

.field public static final SHUTDOWN_COST_INFO_MISSING:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "CAR.STORAGE"

.field static final UPTIME_TRACKER_FILENAME:Ljava/lang/String; = "service_uptime"

.field static final WEAR_INFO_FILENAME:Ljava/lang/String; = "wear_info"


# instance fields
.field private mBootIoStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

.field private final mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private final mIoStatsSamples:Lcom/android/car/SlidingWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/SlidingWindow<",
            "Landroid/car/storagemonitoring/IoStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mIoStatsSamplesLock:Ljava/lang/Object;

.field private mIoStatsTracker:Lcom/android/car/storagemonitoring/IoStatsTracker;

.field private final mLifetimeWriteFile:Ljava/io/File;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/car/storagemonitoring/IIoStatsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnShutdownReboot:Lcom/android/car/OnShutdownReboot;

.field private mShutdownCostInfo:J

.field private mShutdownCostMissingReason:Ljava/lang/String;

.field private final mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

.field private final mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

.field private final mUidIoStatsProvider:Lcom/android/car/storagemonitoring/UidIoStatsProvider;

.field private mUptimeTracker:Lcom/android/car/UptimeTracker;

.field private final mUptimeTrackerFile:Ljava/io/File;

.field private mWearEstimateChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/WearEstimateChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mWearInfoFile:Ljava/io/File;

.field private mWearInformation:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/car/storagemonitoring/WearInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final mWearInformationProviders:[Lcom/android/car/storagemonitoring/WearInformationProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/systeminterface/SystemInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/car/systeminterface/SystemInterface;

    .line 115
    invoke-direct {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsSamplesLock:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mUptimeTracker:Lcom/android/car/UptimeTracker;

    .line 106
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformation:Ljava/util/Optional;

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mWearEstimateChanges:Ljava/util/List;

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mBootIoStats:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsTracker:Lcom/android/car/storagemonitoring/IoStatsTracker;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarStorageMonitoringService;->mInitialized:Z

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/car/CarStorageMonitoringService;->mShutdownCostInfo:J

    .line 116
    iput-object p1, p0, Lcom/android/car/CarStorageMonitoringService;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/car/CarStorageMonitoringService$Configuration;

    invoke-direct {v1, v0}, Lcom/android/car/CarStorageMonitoringService$Configuration;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    .line 120
    const-string v1, "CAR.STORAGE"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "CAR.STORAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {p2}, Lcom/android/car/systeminterface/SystemInterface;->getUidIoStatsProvider()Lcom/android/car/storagemonitoring/UidIoStatsProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mUidIoStatsProvider:Lcom/android/car/storagemonitoring/UidIoStatsProvider;

    .line 125
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/car/systeminterface/SystemInterface;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "service_uptime"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mUptimeTrackerFile:Ljava/io/File;

    .line 126
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/car/systeminterface/SystemInterface;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "wear_info"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInfoFile:Ljava/io/File;

    .line 127
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/android/car/systeminterface/SystemInterface;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "lifetime_write"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mLifetimeWriteFile:Ljava/io/File;

    .line 128
    new-instance v1, Lcom/android/car/OnShutdownReboot;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/car/OnShutdownReboot;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mOnShutdownReboot:Lcom/android/car/OnShutdownReboot;

    .line 129
    iput-object p2, p0, Lcom/android/car/CarStorageMonitoringService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 130
    invoke-virtual {p2}, Lcom/android/car/systeminterface/SystemInterface;->getFlashWearInformationProviders()[Lcom/android/car/storagemonitoring/WearInformationProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformationProviders:[Lcom/android/car/storagemonitoring/WearInformationProvider;

    .line 131
    new-instance v1, Lcom/android/car/internal/CarPermission;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mContext:Landroid/content/Context;

    const-string v3, "android.car.permission.STORAGE_MONITORING"

    invoke-direct {v1, v2, v3}, Lcom/android/car/internal/CarPermission;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mWearEstimateChanges:Ljava/util/List;

    .line 134
    new-instance v1, Lcom/android/car/SlidingWindow;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget v2, v2, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsNumSamplesToStore:I

    invoke-direct {v1, v2}, Lcom/android/car/SlidingWindow;-><init>(I)V

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsSamples:Lcom/android/car/SlidingWindow;

    .line 135
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 136
    new-instance v1, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$4lfr8eOeJ5l1CIfzvzF8g3QqC4U;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$4lfr8eOeJ5l1CIfzvzF8g3QqC4U;-><init>(Lcom/android/car/CarStorageMonitoringService;)V

    const-wide/16 v2, 0xa

    .line 137
    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    .line 136
    invoke-virtual {p2, v1, v2}, Lcom/android/car/systeminterface/SystemInterface;->scheduleActionForBootCompleted(Ljava/lang/Runnable;Ljava/time/Duration;)V

    .line 138
    return-void
.end method

.method private addEventIfNeeded(Lcom/android/car/storagemonitoring/WearHistory;)Z
    .locals 10
    .param p1, "wearHistory"    # Lcom/android/car/storagemonitoring/WearHistory;

    .line 170
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformation:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformation:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/storagemonitoring/WearInformation;

    .line 174
    .local v0, "wearInformation":Lcom/android/car/storagemonitoring/WearInformation;
    invoke-virtual {v0}, Lcom/android/car/storagemonitoring/WearInformation;->toWearEstimate()Landroid/car/storagemonitoring/WearEstimate;

    move-result-object v8

    .line 176
    .local v8, "currentWearEstimate":Landroid/car/storagemonitoring/WearEstimate;
    invoke-virtual {p1}, Lcom/android/car/storagemonitoring/WearHistory;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 177
    sget-object v2, Landroid/car/storagemonitoring/WearEstimate;->UNKNOWN_ESTIMATE:Landroid/car/storagemonitoring/WearEstimate;

    .local v2, "lastWearEstimate":Landroid/car/storagemonitoring/WearEstimate;
    goto :goto_0

    .line 179
    .end local v2    # "lastWearEstimate":Landroid/car/storagemonitoring/WearEstimate;
    :cond_1
    invoke-virtual {p1}, Lcom/android/car/storagemonitoring/WearHistory;->getLast()Lcom/android/car/storagemonitoring/WearEstimateRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/car/storagemonitoring/WearEstimateRecord;->getNewWearEstimate()Landroid/car/storagemonitoring/WearEstimate;

    move-result-object v2

    .restart local v2    # "lastWearEstimate":Landroid/car/storagemonitoring/WearEstimate;
    :goto_0
    move-object v9, v2

    .line 182
    .end local v2    # "lastWearEstimate":Landroid/car/storagemonitoring/WearEstimate;
    .local v9, "lastWearEstimate":Landroid/car/storagemonitoring/WearEstimate;
    invoke-virtual {v8, v9}, Landroid/car/storagemonitoring/WearEstimate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 184
    :cond_2
    new-instance v1, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mUptimeTracker:Lcom/android/car/UptimeTracker;

    .line 186
    invoke-virtual {v2}, Lcom/android/car/UptimeTracker;->getTotalUptime()J

    move-result-wide v5

    .line 187
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v7

    move-object v2, v1

    move-object v3, v9

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/car/storagemonitoring/WearEstimateRecord;-><init>(Landroid/car/storagemonitoring/WearEstimate;Landroid/car/storagemonitoring/WearEstimate;JLjava/time/Instant;)V

    .line 188
    .local v1, "newRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    const-string v2, "CAR.STORAGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new wear record generated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1, v1}, Lcom/android/car/storagemonitoring/WearHistory;->add(Lcom/android/car/storagemonitoring/WearEstimateRecord;)Z

    .line 190
    const/4 v2, 0x1

    return v2
.end method

.method private collectNewIoMetrics()V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsTracker:Lcom/android/car/storagemonitoring/IoStatsTracker;

    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->loadNewIoStats()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/storagemonitoring/IoStatsTracker;->update(Landroid/util/SparseArray;)V

    .line 245
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsSamplesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    new-instance v1, Landroid/car/storagemonitoring/IoStats;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsTracker:Lcom/android/car/storagemonitoring/IoStatsTracker;

    .line 247
    invoke-virtual {v2}, Lcom/android/car/storagemonitoring/IoStatsTracker;->getCurrentSample()Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/car/SparseArrayStream;->valueStream(Landroid/util/SparseArray;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 248
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/android/car/CarStorageMonitoringService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 249
    invoke-virtual {v3}, Lcom/android/car/systeminterface/SystemInterface;->getUptime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/car/storagemonitoring/IoStats;-><init>(Ljava/util/List;J)V

    .line 250
    .local v1, "ioStats":Landroid/car/storagemonitoring/IoStats;
    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsSamples:Lcom/android/car/SlidingWindow;

    invoke-virtual {v2, v1}, Lcom/android/car/SlidingWindow;->add(Ljava/lang/Object;)V

    .line 251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-direct {p0, v1}, Lcom/android/car/CarStorageMonitoringService;->dispatchNewIoEvent(Landroid/car/storagemonitoring/IoStats;)V

    .line 264
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->needsExcessiveIoBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "CAR.STORAGE"

    const-string v2, "about to send android.car.storagemonitoring.EXCESSIVE_IO"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->sendExcessiveIoBroadcast()V

    .line 268
    :cond_0
    return-void

    .line 251
    .end local v1    # "ioStats":Landroid/car/storagemonitoring/IoStats;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private computeShutdownCost()J
    .locals 17

    .line 378
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/car/CarStorageMonitoringService;->loadLifetimeWrites()Ljava/util/List;

    move-result-object v1

    .line 379
    .local v1, "shutdownWrites":Ljava/util/List;, "Ljava/util/List<Landroid/car/storagemonitoring/LifetimeWriteInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    .line 380
    const-string v2, "CAR.STORAGE"

    const-string v5, "lifetime write data from last shutdown missing"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v2, "no historical writes stored at last shutdown"

    iput-object v2, v0, Lcom/android/car/CarStorageMonitoringService;->mShutdownCostMissingReason:Ljava/lang/String;

    .line 382
    return-wide v3

    .line 384
    :cond_0
    iget-object v2, v0, Lcom/android/car/CarStorageMonitoringService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 385
    invoke-virtual {v2}, Lcom/android/car/systeminterface/SystemInterface;->getLifetimeWriteInfoProvider()Lcom/android/car/storagemonitoring/LifetimeWriteInfoProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/car/storagemonitoring/LifetimeWriteInfoProvider;->load()[Landroid/car/storagemonitoring/LifetimeWriteInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 386
    .local v2, "currentWrites":Ljava/util/List;, "Ljava/util/List<Landroid/car/storagemonitoring/LifetimeWriteInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    const-string v5, "CAR.STORAGE"

    const-string v6, "current lifetime write data missing"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v5, "current write data cannot be obtained"

    iput-object v5, v0, Lcom/android/car/CarStorageMonitoringService;->mShutdownCostMissingReason:Ljava/lang/String;

    .line 389
    return-wide v3

    .line 392
    :cond_1
    const-wide/16 v5, 0x0

    .line 394
    .local v5, "shutdownCost":J
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 395
    .local v7, "shutdownLifetimeWrites":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v8, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$M9OR9NrtUFo4vxYupRO3Lv4zVAI;

    invoke-direct {v8, v7}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$M9OR9NrtUFo4vxYupRO3Lv4zVAI;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v8}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 399
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 400
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/car/storagemonitoring/LifetimeWriteInfo;

    .line 403
    .local v9, "li":Landroid/car/storagemonitoring/LifetimeWriteInfo;
    iget-object v10, v9, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    iget-wide v11, v9, Landroid/car/storagemonitoring/LifetimeWriteInfo;->writtenBytes:J

    .line 404
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 405
    .local v10, "writtenAtShutdown":J
    iget-wide v12, v9, Landroid/car/storagemonitoring/LifetimeWriteInfo;->writtenBytes:J

    sub-long/2addr v12, v10

    .line 406
    .local v12, "costDelta":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-ltz v14, :cond_2

    .line 407
    const-string v14, "CAR.STORAGE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "partition "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " had "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes written to it during shutdown"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    add-long/2addr v5, v12

    .line 399
    .end local v9    # "li":Landroid/car/storagemonitoring/LifetimeWriteInfo;
    .end local v10    # "writtenAtShutdown":J
    .end local v12    # "costDelta":J
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v3, -0x1

    goto :goto_0

    .line 415
    .restart local v9    # "li":Landroid/car/storagemonitoring/LifetimeWriteInfo;
    .restart local v10    # "writtenAtShutdown":J
    .restart local v12    # "costDelta":J
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has a negative write amount ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/car/CarStorageMonitoringService;->mShutdownCostMissingReason:Ljava/lang/String;

    .line 417
    const-string v3, "CAR.STORAGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "partition "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " reported "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " bytes written to it during shutdown. assuming we can\'t determine proper shutdown information."

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-wide/16 v3, -0x1

    return-wide v3

    .line 424
    .end local v8    # "i":I
    .end local v9    # "li":Landroid/car/storagemonitoring/LifetimeWriteInfo;
    .end local v10    # "writtenAtShutdown":J
    .end local v12    # "costDelta":J
    :cond_3
    return-wide v5
.end method

.method private dispatchNewIoEvent(Landroid/car/storagemonitoring/IoStats;)V
    .locals 3
    .param p1, "delta"    # Landroid/car/storagemonitoring/IoStats;

    .line 306
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 307
    .local v0, "listenersCount":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$BB7XOuHptu3JcCtYJXf2rOLPkCU;

    invoke-direct {v2, p0, p1}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$BB7XOuHptu3JcCtYJXf2rOLPkCU;-><init>(Lcom/android/car/CarStorageMonitoringService;Landroid/car/storagemonitoring/IoStats;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 315
    iget-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 316
    return-void
.end method

.method private declared-synchronized doInitServiceIfNeeded()V
    .locals 9

    monitor-enter p0

    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarStorageMonitoringService;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_1
    const-string v0, "CAR.STORAGE"

    const-string v1, "initializing CarStorageMonitoringService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->loadWearInformation()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformation:Ljava/util/Optional;

    .line 326
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->loadWearHistory()Lcom/android/car/storagemonitoring/WearHistory;

    move-result-object v0

    .line 327
    .local v0, "wearHistory":Lcom/android/car/storagemonitoring/WearHistory;
    invoke-direct {p0, v0}, Lcom/android/car/CarStorageMonitoringService;->addEventIfNeeded(Lcom/android/car/storagemonitoring/WearHistory;)Z

    move-result v1

    .line 328
    .local v1, "didWearChangeHappen":Z
    if-eqz v1, :cond_1

    .line 329
    invoke-direct {p0, v0}, Lcom/android/car/CarStorageMonitoringService;->storeWearHistory(Lcom/android/car/storagemonitoring/WearHistory;)V

    .line 331
    :cond_1
    const-string v2, "CAR.STORAGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wear history being tracked is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget v2, v2, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableHoursPerOnePercentFlashWear:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/car/storagemonitoring/WearHistory;->toWearEstimateChanges(J)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mWearEstimateChanges:Ljava/util/List;

    .line 335
    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mOnShutdownReboot:Lcom/android/car/OnShutdownReboot;

    new-instance v3, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$_WmeglMKVK32-medXtW62Rd8ChI;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$_WmeglMKVK32-medXtW62Rd8ChI;-><init>(Lcom/android/car/CarStorageMonitoringService;)V

    invoke-virtual {v2, v3}, Lcom/android/car/OnShutdownReboot;->addAction(Ljava/util/function/BiConsumer;)Lcom/android/car/OnShutdownReboot;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$H5rrupwJsCJtCKqZLPCoVFCmMFc;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$H5rrupwJsCJtCKqZLPCoVFCmMFc;-><init>(Lcom/android/car/CarStorageMonitoringService;)V

    .line 336
    invoke-virtual {v2, v3}, Lcom/android/car/OnShutdownReboot;->addAction(Ljava/util/function/BiConsumer;)Lcom/android/car/OnShutdownReboot;

    .line 338
    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformation:Ljava/util/Optional;

    sget-object v3, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$qW99OHY0SHOxhCevR7AsJS-Qwkc;->INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$qW99OHY0SHOxhCevR7AsJS-Qwkc;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 340
    nop

    .line 344
    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v2}, Lcom/android/car/systeminterface/SystemInterface;->getUptime()J

    move-result-wide v2

    .line 345
    .local v2, "bootUptime":J
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->loadNewIoStats()Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v4}, Lcom/android/car/SparseArrayStream;->valueStream(Landroid/util/SparseArray;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$ZJRgUrXgNv6rcjMAtNH60oxt-XM;

    invoke-direct {v5, v2, v3}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$ZJRgUrXgNv6rcjMAtNH60oxt-XM;-><init>(J)V

    .line 346
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 354
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/android/car/CarStorageMonitoringService;->mBootIoStats:Ljava/util/List;

    .line 356
    new-instance v4, Lcom/android/car/storagemonitoring/IoStatsTracker;

    iget-object v5, p0, Lcom/android/car/CarStorageMonitoringService;->mBootIoStats:Ljava/util/List;

    iget-object v6, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget v6, v6, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsRefreshRateMs:I

    int-to-long v6, v6

    iget-object v8, p0, Lcom/android/car/CarStorageMonitoringService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 358
    invoke-virtual {v8}, Lcom/android/car/systeminterface/SystemInterface;->getSystemStateInterface()Lcom/android/car/systeminterface/SystemStateInterface;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/car/storagemonitoring/IoStatsTracker;-><init>(Ljava/util/List;JLcom/android/car/systeminterface/SystemStateInterface;)V

    iput-object v4, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsTracker:Lcom/android/car/storagemonitoring/IoStatsTracker;

    .line 360
    iget-object v4, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget v4, v4, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsNumSamplesToStore:I

    if-lez v4, :cond_2

    .line 361
    iget-object v4, p0, Lcom/android/car/CarStorageMonitoringService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    new-instance v5, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$xKTnl5Ai9zjrmyRyKQQQttzcWnE;

    invoke-direct {v5, p0}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$xKTnl5Ai9zjrmyRyKQQQttzcWnE;-><init>(Lcom/android/car/CarStorageMonitoringService;)V

    iget-object v6, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget v6, v6, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsRefreshRateMs:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/car/systeminterface/SystemInterface;->scheduleAction(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 364
    :cond_2
    const-string v4, "CAR.STORAGE"

    const-string v5, "service configuration disabled I/O sample window. not collecting samples"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->computeShutdownCost()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/car/CarStorageMonitoringService;->mShutdownCostInfo:J

    .line 368
    const-string v4, "CAR.STORAGE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculated data written in last shutdown was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/car/CarStorageMonitoringService;->mShutdownCostInfo:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Lcom/android/car/CarStorageMonitoringService;->mLifetimeWriteFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 372
    const-string v4, "CAR.STORAGE"

    const-string v5, "CarStorageMonitoringService is up"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/car/CarStorageMonitoringService;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 318
    .end local v0    # "wearHistory":Lcom/android/car/storagemonitoring/WearHistory;
    .end local v1    # "didWearChangeHappen":Z
    .end local v2    # "bootUptime":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarStorageMonitoringService;
    throw v0
.end method

.method public static synthetic lambda$4lfr8eOeJ5l1CIfzvzF8g3QqC4U(Lcom/android/car/CarStorageMonitoringService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$N7T3rOI2b6LP6BgZNum38gpOWD0(Landroid/car/storagemonitoring/IoStatsEntry;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/car/storagemonitoring/IoStatsEntry;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$collectNewIoMetrics$0(Landroid/car/storagemonitoring/IoStatsEntry;)V
    .locals 3
    .param p0, "uidIoStats"    # Landroid/car/storagemonitoring/IoStatsEntry;

    .line 259
    const-string v0, "CAR.STORAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated I/O stat data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$computeShutdownCost$6(Ljava/util/Map;Landroid/car/storagemonitoring/LifetimeWriteInfo;)V
    .locals 3
    .param p0, "shutdownLifetimeWrites"    # Ljava/util/Map;
    .param p1, "li"    # Landroid/car/storagemonitoring/LifetimeWriteInfo;

    .line 396
    iget-object v0, p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    iget-wide v1, p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;->writtenBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-void
.end method

.method public static synthetic lambda$dispatchNewIoEvent$2(Lcom/android/car/CarStorageMonitoringService;Landroid/car/storagemonitoring/IoStats;I)V
    .locals 3
    .param p1, "delta"    # Landroid/car/storagemonitoring/IoStats;
    .param p2, "i"    # I

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/IIoStatsListener;

    invoke-interface {v0, p1}, Landroid/car/storagemonitoring/IIoStatsListener;->onSnapshot(Landroid/car/storagemonitoring/IoStats;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.STORAGE"

    const-string v2, "failed to dispatch snapshot"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$doInitServiceIfNeeded$3(Lcom/android/car/CarStorageMonitoringService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .line 335
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->logLifetimeWrites()V

    return-void
.end method

.method public static synthetic lambda$doInitServiceIfNeeded$4(Lcom/android/car/CarStorageMonitoringService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .line 336
    invoke-virtual {p0}, Lcom/android/car/CarStorageMonitoringService;->release()V

    return-void
.end method

.method static synthetic lambda$doInitServiceIfNeeded$5(JLandroid/car/storagemonitoring/UidIoRecord;)Landroid/car/storagemonitoring/IoStatsEntry;
    .locals 1
    .param p0, "bootUptime"    # J
    .param p2, "record"    # Landroid/car/storagemonitoring/UidIoRecord;

    .line 349
    new-instance v0, Landroid/car/storagemonitoring/IoStatsEntry;

    invoke-direct {v0, p2, p0, p1}, Landroid/car/storagemonitoring/IoStatsEntry;-><init>(Landroid/car/storagemonitoring/UidIoRecord;J)V

    .line 353
    .local v0, "stats":Landroid/car/storagemonitoring/IoStatsEntry;
    return-object v0
.end method

.method private static synthetic lambda$dump$7(Landroid/car/storagemonitoring/IoStats;)Ljava/lang/String;
    .locals 2
    .param p0, "sample"    # Landroid/car/storagemonitoring/IoStats;

    .line 503
    nop

    .line 501
    invoke-virtual {p0}, Landroid/car/storagemonitoring/IoStats;->getStats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$N7T3rOI2b6LP6BgZNum38gpOWD0;->INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$N7T3rOI2b6LP6BgZNum38gpOWD0;

    .line 502
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "\n"

    .line 503
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getPreEolIndicatorStatus$8(Lcom/android/car/storagemonitoring/WearInformation;)Ljava/lang/Integer;
    .locals 1
    .param p0, "wi"    # Lcom/android/car/storagemonitoring/WearInformation;

    .line 524
    iget v0, p0, Lcom/android/car/storagemonitoring/WearInformation;->preEolInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getWearEstimate$9(Lcom/android/car/storagemonitoring/WearInformation;)Landroid/car/storagemonitoring/WearEstimate;
    .locals 3
    .param p0, "wi"    # Lcom/android/car/storagemonitoring/WearInformation;

    .line 534
    new-instance v0, Landroid/car/storagemonitoring/WearEstimate;

    iget v1, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateA:I

    iget v2, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateB:I

    invoke-direct {v0, v1, v2}, Landroid/car/storagemonitoring/WearEstimate;-><init>(II)V

    return-object v0
.end method

.method public static synthetic lambda$needsExcessiveIoBroadcast$1(Lcom/android/car/CarStorageMonitoringService;Landroid/car/storagemonitoring/IoStats;)Z
    .locals 8
    .param p1, "delta"    # Landroid/car/storagemonitoring/IoStats;

    .line 295
    invoke-virtual {p1}, Landroid/car/storagemonitoring/IoStats;->getTotals()Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    move-result-object v0

    .line 296
    .local v0, "total":Landroid/car/storagemonitoring/IoStatsEntry$Metrics;
    iget-wide v1, v0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWrittenToStorage:J

    iget-object v3, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget-wide v3, v3, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableBytesWrittenPerSample:J

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 298
    .local v1, "tooManyBytesWritten":Z
    :goto_0
    iget-wide v4, v0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->fsyncCalls:J

    iget-object v6, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget v6, v6, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableFsyncCallsPerSample:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 300
    .local v4, "tooManyFsyncCalls":Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v2, v3

    :goto_3
    return v2
.end method

.method public static synthetic lambda$qW99OHY0SHOxhCevR7AsJS-Qwkc(Lcom/android/car/storagemonitoring/WearInformation;)V
    .locals 0

    invoke-static {p0}, Lcom/android/car/CarStorageMonitoringService;->logOnAdverseWearLevel(Lcom/android/car/storagemonitoring/WearInformation;)V

    return-void
.end method

.method public static synthetic lambda$xKTnl5Ai9zjrmyRyKQQQttzcWnE(Lcom/android/car/CarStorageMonitoringService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->collectNewIoMetrics()V

    return-void
.end method

.method private launchWearChangeActivity()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget-object v0, v0, Lcom/android/car/CarStorageMonitoringService$Configuration;->activityHandlerForFlashWearChanges:Ljava/lang/String;

    .line 212
    .local v0, "activityPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 214
    :cond_0
    nop

    .line 215
    :try_start_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 216
    .local v1, "activityComponent":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 218
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 219
    iget-object v3, p0, Lcom/android/car/CarStorageMonitoringService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "activityComponent":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "CAR.STORAGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value of activityHandlerForFlashWearChanges invalid non-empty string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private loadLifetimeWrites()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/LifetimeWriteInfo;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mLifetimeWriteFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mLifetimeWriteFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 433
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mLifetimeWriteFile:Ljava/io/File;

    .line 434
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "lifetimeWriteInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 438
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/car/storagemonitoring/LifetimeWriteInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 440
    new-instance v4, Landroid/car/storagemonitoring/LifetimeWriteInfo;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/car/storagemonitoring/LifetimeWriteInfo;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 443
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/car/storagemonitoring/LifetimeWriteInfo;>;"
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.STORAGE"

    const-string v2, "lifetime write file does not contain valid JSON"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const-string v0, "CAR.STORAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lifetime write file missing or inaccessible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mLifetimeWriteFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private loadNewIoStats()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/car/storagemonitoring/UidIoRecord;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mUidIoStatsProvider:Lcom/android/car/storagemonitoring/UidIoStatsProvider;

    invoke-interface {v0}, Lcom/android/car/storagemonitoring/UidIoStatsProvider;->load()Landroid/util/SparseArray;

    move-result-object v0

    .line 238
    .local v0, "ioRecords":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/UidIoRecord;>;"
    if-nez v0, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private loadWearHistory()Lcom/android/car/storagemonitoring/WearHistory;
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInfoFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/car/storagemonitoring/WearHistory;->fromJson(Ljava/io/File;)Lcom/android/car/storagemonitoring/WearHistory;

    move-result-object v0

    .line 157
    .local v0, "wearHistory":Lcom/android/car/storagemonitoring/WearHistory;
    const-string v1, "CAR.STORAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieved wear history "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-object v0

    .line 159
    .end local v0    # "wearHistory":Lcom/android/car/storagemonitoring/WearHistory;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.STORAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to read wear info file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInfoFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v0, "CAR.STORAGE"

    const-string v1, "no wear history available"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Lcom/android/car/storagemonitoring/WearHistory;

    invoke-direct {v0}, Lcom/android/car/storagemonitoring/WearHistory;-><init>()V

    return-object v0
.end method

.method private loadWearInformation()Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/car/storagemonitoring/WearInformation;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformationProviders:[Lcom/android/car/storagemonitoring/WearInformationProvider;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 142
    .local v3, "provider":Lcom/android/car/storagemonitoring/WearInformationProvider;
    invoke-interface {v3}, Lcom/android/car/storagemonitoring/WearInformationProvider;->load()Lcom/android/car/storagemonitoring/WearInformation;

    move-result-object v4

    .line 143
    .local v4, "wearInfo":Lcom/android/car/storagemonitoring/WearInformation;
    if-eqz v4, :cond_0

    .line 144
    const-string v0, "CAR.STORAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieved wear info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " via provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 141
    .end local v3    # "provider":Lcom/android/car/storagemonitoring/WearInformationProvider;
    .end local v4    # "wearInfo":Lcom/android/car/storagemonitoring/WearInformation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, "CAR.STORAGE"

    const-string v1, "no wear info available"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private logLifetimeWrites()V
    .locals 8

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 452
    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->getLifetimeWriteInfoProvider()Lcom/android/car/storagemonitoring/LifetimeWriteInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/car/storagemonitoring/LifetimeWriteInfoProvider;->load()[Landroid/car/storagemonitoring/LifetimeWriteInfo;

    move-result-object v0

    .line 453
    .local v0, "lifetimeWriteInfos":[Landroid/car/storagemonitoring/LifetimeWriteInfo;
    new-instance v1, Landroid/util/JsonWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/car/CarStorageMonitoringService;->mLifetimeWriteFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 454
    .local v1, "jsonWriter":Landroid/util/JsonWriter;
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 455
    const-string v2, "lifetimeWriteInfo"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 456
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 457
    .local v4, "writeInfo":Landroid/car/storagemonitoring/LifetimeWriteInfo;
    const-string v5, "CAR.STORAGE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storing lifetime write info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v4, v1}, Landroid/car/storagemonitoring/LifetimeWriteInfo;->writeToJson(Landroid/util/JsonWriter;)V

    .line 456
    .end local v4    # "writeInfo":Landroid/car/storagemonitoring/LifetimeWriteInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 461
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v0    # "lifetimeWriteInfos":[Landroid/car/storagemonitoring/LifetimeWriteInfo;
    .end local v1    # "jsonWriter":Landroid/util/JsonWriter;
    goto :goto_1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CAR.STORAGE"

    const-string v2, "unable to save lifetime write info on shutdown"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private static logOnAdverseWearLevel(Lcom/android/car/storagemonitoring/WearInformation;)V
    .locals 3
    .param p0, "wearInformation"    # Lcom/android/car/storagemonitoring/WearInformation;

    .line 228
    iget v0, p0, Lcom/android/car/storagemonitoring/WearInformation;->preEolInfo:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateA:I

    iget v1, p0, Lcom/android/car/storagemonitoring/WearInformation;->lifetimeEstimateB:I

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_1

    .line 231
    :cond_0
    const-string v0, "CAR.STORAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flash storage reached wear a level that requires attention: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    return-void
.end method

.method private needsExcessiveIoBroadcast()Z
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsSamplesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsSamples:Lcom/android/car/SlidingWindow;

    new-instance v2, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$pCAdAR4fOJdGCeOYd7DWFDmMrYw;

    invoke-direct {v2, p0}, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$pCAdAR4fOJdGCeOYd7DWFDmMrYw;-><init>(Lcom/android/car/CarStorageMonitoringService;)V

    invoke-virtual {v1, v2}, Lcom/android/car/SlidingWindow;->count(Ljava/util/function/Predicate;)I

    move-result v1

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget v2, v2, Lcom/android/car/CarStorageMonitoringService$Configuration;->maxExcessiveIoSamplesInWindow:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendExcessiveIoBroadcast()V
    .locals 5

    .line 271
    const-string v0, "CAR.STORAGE"

    const-string v1, "sending android.car.storagemonitoring.EXCESSIVE_IO"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget-object v0, v0, Lcom/android/car/CarStorageMonitoringService$Configuration;->intentReceiverForUnacceptableIoMetrics:Ljava/lang/String;

    .line 274
    .local v0, "receiverPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 278
    :cond_0
    nop

    .line 279
    :try_start_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 278
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .local v1, "receiverComponent":Landroid/content/ComponentName;
    nop

    .line 283
    nop

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.car.storagemonitoring.EXCESSIVE_IO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 288
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    iget-object v3, p0, Lcom/android/car/CarStorageMonitoringService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v4}, Lcom/android/car/internal/CarPermission;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 290
    return-void

    .line 280
    .end local v1    # "receiverComponent":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "CAR.STORAGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value of intentReceiverForUnacceptableIoMetrics non-null but invalid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    return-void
.end method

.method private storeWearHistory(Lcom/android/car/storagemonitoring/WearHistory;)V
    .locals 4
    .param p1, "wearHistory"    # Lcom/android/car/storagemonitoring/WearHistory;

    .line 194
    :try_start_0
    new-instance v0, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInfoFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "jsonWriter":Landroid/util/JsonWriter;
    const/4 v1, 0x0

    .line 195
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/android/car/storagemonitoring/WearHistory;->writeToJson(Landroid/util/JsonWriter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    .end local v0    # "jsonWriter":Landroid/util/JsonWriter;
    goto :goto_2

    .line 196
    .restart local v0    # "jsonWriter":Landroid/util/JsonWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    :goto_0
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v0    # "jsonWriter":Landroid/util/JsonWriter;
    :catch_2
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CAR.STORAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to write wear info file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInfoFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 515
    return-void
.end method

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

    .line 556
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 557
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    .line 559
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsTracker:Lcom/android/car/storagemonitoring/IoStatsTracker;

    invoke-virtual {v0}, Lcom/android/car/storagemonitoring/IoStatsTracker;->getTotal()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/SparseArrayStream;->valueStream(Landroid/util/SparseArray;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 560
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 559
    return-object v0
.end method

.method public getBootIoStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 549
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    .line 551
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mBootIoStats:Ljava/util/List;

    return-object v0
.end method

.method public getIoStatsDeltas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStats;",
            ">;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 574
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    .line 576
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsSamplesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mIoStatsSamples:Lcom/android/car/SlidingWindow;

    invoke-virtual {v1}, Lcom/android/car/SlidingWindow;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPreEolIndicatorStatus()I
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 522
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    .line 524
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformation:Ljava/util/Optional;

    sget-object v1, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$3JpWX-E7qURpq44XDloaxqv9kn4;->INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$3JpWX-E7qURpq44XDloaxqv9kn4;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 525
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 524
    return v0
.end method

.method public getShutdownDiskWriteAmount()J
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 566
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    .line 568
    iget-wide v0, p0, Lcom/android/car/CarStorageMonitoringService;->mShutdownCostInfo:J

    return-wide v0
.end method

.method public getWearEstimate()Landroid/car/storagemonitoring/WearEstimate;
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 531
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    .line 533
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearInformation:Ljava/util/Optional;

    sget-object v1, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$UxRDIRw7F7H6x6CvEJacqObxq-4;->INSTANCE:Lcom/android/car/-$$Lambda$CarStorageMonitoringService$UxRDIRw7F7H6x6CvEJacqObxq-4;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Landroid/car/storagemonitoring/WearEstimate;->UNKNOWN_ESTIMATE:Landroid/car/storagemonitoring/WearEstimate;

    .line 534
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/WearEstimate;

    .line 533
    return-object v0
.end method

.method public getWearEstimateHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/WearEstimateChange;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 541
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    .line 543
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mWearEstimateChanges:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 203
    const-string v0, "CAR.STORAGE"

    const-string v1, "CarStorageMonitoringService init()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lcom/android/car/UptimeTracker;

    iget-object v1, p0, Lcom/android/car/CarStorageMonitoringService;->mUptimeTrackerFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService;->mConfiguration:Lcom/android/car/CarStorageMonitoringService$Configuration;

    iget-wide v2, v2, Lcom/android/car/CarStorageMonitoringService$Configuration;->uptimeIntervalBetweenUptimeDataWriteMs:J

    iget-object v4, p0, Lcom/android/car/CarStorageMonitoringService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/car/UptimeTracker;-><init>(Ljava/io/File;JLcom/android/car/systeminterface/SystemInterface;)V

    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mUptimeTracker:Lcom/android/car/UptimeTracker;

    .line 208
    return-void
.end method

.method public registerListener(Landroid/car/storagemonitoring/IIoStatsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/storagemonitoring/IIoStatsListener;

    .line 583
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 584
    invoke-direct {p0}, Lcom/android/car/CarStorageMonitoringService;->doInitServiceIfNeeded()V

    .line 586
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 587
    return-void
.end method

.method public release()V
    .locals 2

    .line 469
    const-string v0, "CAR.STORAGE"

    const-string v1, "tearing down CarStorageMonitoringService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mUptimeTracker:Lcom/android/car/UptimeTracker;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mUptimeTracker:Lcom/android/car/UptimeTracker;

    invoke-virtual {v0}, Lcom/android/car/UptimeTracker;->onDestroy()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mOnShutdownReboot:Lcom/android/car/OnShutdownReboot;

    invoke-virtual {v0}, Lcom/android/car/OnShutdownReboot;->clearActions()V

    .line 474
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 475
    return-void
.end method

.method public unregisterListener(Landroid/car/storagemonitoring/IIoStatsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/storagemonitoring/IIoStatsListener;

    .line 591
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mStorageMonitoringPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 594
    iget-object v0, p0, Lcom/android/car/CarStorageMonitoringService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 595
    return-void
.end method
