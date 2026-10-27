.class public Lcom/android/car/CarLocalServices;
.super Ljava/lang/Object;
.source "CarLocalServices.java"


# static fields
.field private static final sLocalServiceObjects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 56
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "service":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    const-string v1, "CarLocalServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v1, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Overriding service registration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/car/Car;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/os/Handler;)V

    .line 96
    .local v0, "car":Landroid/car/Car;
    const-class v2, Lcom/android/car/CarPowerManagementService;

    invoke-static {v2}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarPowerManagementService;

    .line 97
    .local v2, "service":Lcom/android/car/CarPowerManagementService;
    if-nez v2, :cond_0

    .line 98
    return-object v1

    .line 100
    :cond_0
    new-instance v1, Landroid/car/hardware/power/CarPowerManager;

    invoke-direct {v1, v0, v2}, Landroid/car/hardware/power/CarPowerManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 46
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "CarLocalServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeAllServices()V
    .locals 2

    .line 80
    const-string v0, "CarLocalServices"

    const-string v1, " removeAllServices"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeServiceForTest(Ljava/lang/Class;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "CarLocalServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/android/car/CarLocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
