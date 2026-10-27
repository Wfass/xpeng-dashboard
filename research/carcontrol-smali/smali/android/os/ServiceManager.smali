.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ServiceManager$ServiceNotFoundException;,
        Landroid/os/ServiceManager$Stats;
    }
.end annotation


# static fields
.field private static final GET_SERVICE_LOG_EVERY_CALLS_CORE:I

.field private static final GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

.field private static final SLOW_LOG_INTERVAL_MS:I = 0x1388

.field private static final STATS_LOG_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetServiceAccumulatedCallCount:I

.field private static sGetServiceAccumulatedUs:I

.field private static sLastSlowLogActualTime:J

.field private static sLastSlowLogUptime:J

.field private static sLastStatsLogUptime:J

.field private static final sLock:Ljava/lang/Object;

.field private static sServiceManager:Landroid/os/IServiceManager;

.field public static final sStatLogger:Lcom/android/internal/util/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    const-string v0, "debug.servicemanager.slow_call_core_ms"

    const/16 v1, 0xa

    .line 59
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    const-string v0, "debug.servicemanager.slow_call_ms"

    const/16 v1, 0x32

    .line 66
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    const-string v0, "debug.servicemanager.log_calls_core"

    const/16 v1, 0x64

    .line 72
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    const-string v0, "debug.servicemanager.log_calls"

    const/16 v1, 0xc8

    .line 78
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 101
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "getService()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 166
    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 1

    const/16 v0, 0x8

    .line 180
    invoke-static {p0, p1, p2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .locals 1

    .line 197
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceManager"

    const-string p2, "error in addService"

    .line 199
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 210
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    .line 214
    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ServiceManager"

    const-string v1, "error in checkService"

    .line 217
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 245
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ServiceManager"

    const-string v1, "error in getDeclaredInstances"

    .line 247
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIServiceManager()Landroid/os/IServiceManager;
    .locals 1

    .line 111
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 117
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 130
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    .line 134
    :cond_0
    invoke-static {p0}, Landroid/os/ServiceManager;->rawGetService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ServiceManager"

    const-string v1, "error in getService"

    .line 137
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .locals 3

    .line 297
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ServiceManager"

    const-string v2, "error in getServiceDebugInfo"

    .line 299
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 149
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v0, p0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initServiceCache(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 313
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 316
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    .line 314
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setServiceCache may only be called once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDeclared(Ljava/lang/String;)Z
    .locals 2

    .line 230
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ServiceManager"

    const-string v1, "error in isDeclared"

    .line 232
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3

    .line 283
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    .line 285
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static rawGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    .line 335
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    .line 337
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 339
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 340
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    sget-wide v5, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    goto :goto_0

    .line 344
    :cond_0
    sget-wide v5, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    .line 346
    :goto_0
    sget-object v2, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 347
    :try_start_0
    sget v7, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    add-int/2addr v7, v0

    sput v7, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 348
    sget v7, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    int-to-long v9, v0

    cmp-long v5, v9, v5

    const-wide/16 v11, 0x1388

    if-ltz v5, :cond_2

    .line 357
    sget-wide v5, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    add-long/2addr v5, v11

    cmp-long v5, v7, v5

    if-gtz v5, :cond_1

    sget-wide v5, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_2

    .line 359
    :cond_1
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0, p0}, Landroid/os/EventLogTags;->writeServiceManagerSlow(ILjava/lang/String;)V

    .line 361
    sput-wide v7, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    .line 362
    sput-wide v9, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    :cond_2
    if-eqz v1, :cond_3

    .line 369
    sget p0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    goto :goto_1

    .line 370
    :cond_3
    sget p0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 372
    :goto_1
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    if-lt v0, p0, :cond_4

    sget-wide v5, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    add-long/2addr v11, v5

    cmp-long p0, v7, v11

    if-ltz p0, :cond_4

    .line 375
    sget p0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    div-int/lit16 p0, p0, 0x3e8

    sub-long v5, v7, v5

    long-to-int v1, v5

    invoke-static {v0, p0, v1}, Landroid/os/EventLogTags;->writeServiceManagerStats(III)V

    .line 379
    sput v4, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 380
    sput v4, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 381
    sput-wide v7, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    .line 383
    :cond_4
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .line 272
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static native waitForService(Ljava/lang/String;)Landroid/os/IBinder;
.end method
