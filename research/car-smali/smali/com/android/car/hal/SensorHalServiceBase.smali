.class public abstract Lcom/android/car/hal/SensorHalServiceBase;
.super Lcom/android/car/hal/HalServiceBase;
.source "SensorHalServiceBase.java"

# interfaces
.implements Lcom/android/car/hal/SensorBase;


# static fields
.field protected static final DBG:Z = false

.field protected static final SENSOR_TYPE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mHal:Lcom/android/car/hal/VehicleHal;

.field private mIsReady:Z

.field protected final mSensorToPropConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "CAR.SENSOR"

    const-class v1, Lcom/android/car/hal/SensorHalServiceBase;

    invoke-static {v0, v1}, Lcom/android/car/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/hal/SensorHalServiceBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 1
    .param p1, "hal"    # Lcom/android/car/hal/VehicleHal;

    .line 50
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mIsReady:Z

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mSensorToPropConfig:Landroid/util/SparseArray;

    .line 51
    iput-object p1, p0, Lcom/android/car/hal/SensorHalServiceBase;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 52
    return-void
.end method


# virtual methods
.method protected abstract fixSamplingRateForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;I)F
.end method

.method public getCurrentSensorVehiclePropValue(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 6
    .param p1, "sensorType"    # I

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mSensorToPropConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 136
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    sget-object v2, Lcom/android/car/hal/SensorHalServiceBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sensor type not available 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v1

    .line 142
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/car/hal/SensorHalServiceBase;->mHal:Lcom/android/car/hal/VehicleHal;

    iget v3, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v2, v3}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    sget-object v3, Lcom/android/car/hal/SensorHalServiceBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "property not ready 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-object v1

    .line 136
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSupportedSensors()[I
    .locals 3

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mSensorToPropConfig:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 102
    .local v0, "supportedSensors":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/car/hal/SensorHalServiceBase;->mSensorToPropConfig:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_0
    monitor-exit p0

    return-object v0

    .line 100
    .end local v0    # "supportedSensors":[I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/SensorHalServiceBase;
    throw v0
.end method

.method protected abstract getTokenForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)I
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should not be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 78
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/SensorHalServiceBase;
    throw v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/SensorHalServiceBase;
    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 83
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/SensorHalServiceBase;
    throw v0
.end method

.method public declared-synchronized requestSensorStart(II)Z
    .locals 4
    .param p1, "sensorType"    # I
    .param p2, "rate"    # I

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mSensorToPropConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 112
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    if-nez v0, :cond_0

    .line 113
    sget-object v1, Lcom/android/car/hal/SensorHalServiceBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requesting to start sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but VHAL config not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 117
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/car/hal/SensorHalServiceBase;->mHal:Lcom/android/car/hal/VehicleHal;

    iget v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {p0, v0, p2}, Lcom/android/car/hal/SensorHalServiceBase;->fixSamplingRateForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;I)F

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 110
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local p1    # "sensorType":I
    .end local p2    # "rate":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/SensorHalServiceBase;
    throw p1
.end method

.method public declared-synchronized requestSensorStop(I)V
    .locals 3
    .param p1, "sensorType"    # I

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/SensorHalServiceBase;->mSensorToPropConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .local v0, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    if-nez v0, :cond_0

    .line 126
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/car/hal/SensorHalServiceBase;->mHal:Lcom/android/car/hal/VehicleHal;

    iget v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v1, p0, v2}, Lcom/android/car/hal/VehicleHal;->unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 123
    .end local v0    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local p1    # "sensorType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/SensorHalServiceBase;
    throw p1
.end method

.method public declared-synchronized takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    monitor-enter p0

    .line 59
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 60
    .local v0, "supportedProperties":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 61
    .local v2, "halProperty":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    invoke-virtual {p0, v2}, Lcom/android/car/hal/SensorHalServiceBase;->getTokenForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)I

    move-result v3

    .line 62
    .local v3, "sensor":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 68
    .local v4, "mapped":Z
    :goto_1
    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v5, p0, Lcom/android/car/hal/SensorHalServiceBase;->mSensorToPropConfig:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v2    # "halProperty":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local v3    # "sensor":I
    .end local v4    # "mapped":Z
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    monitor-exit p0

    return-object v0

    .line 58
    .end local v0    # "supportedProperties":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    .end local p1    # "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/SensorHalServiceBase;
    throw p1
.end method
