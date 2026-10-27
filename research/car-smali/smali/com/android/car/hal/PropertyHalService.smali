.class public Lcom/android/car/hal/PropertyHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "PropertyHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    }
.end annotation


# static fields
.field private static final ENABLE_DUMP:Z = false

.field private static final TAG:Ljava/lang/String; = "PropertyHalService"


# instance fields
.field private final mDbg:Z

.field private final mEventsToDispatch:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

.field private final mProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mRates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribedPropIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleHal:Lcom/android/car/hal/VehicleHal;


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 2
    .param p1, "vehicleHal"    # Lcom/android/car/hal/VehicleHal;

    .line 130
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/hal/PropertyHalService;->mDbg:Z

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mRates:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/android/car/hal/PropertyHalServiceIds;

    invoke-direct {v0}, Lcom/android/car/hal/PropertyHalServiceIds;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    .line 133
    iput-object p1, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    .line 135
    const-string v0, "PropertyHalService"

    const-string v1, "started PropertyHalService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private halToManagerPropId(I)I
    .locals 2
    .param p1, "halPropId"    # I

    .line 90
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return p1

    .line 93
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private managerToHalPropId(I)I
    .locals 2
    .param p1, "propId"    # I

    .line 78
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    return p1

    .line 81
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public convertHalEventToCarEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/hardware/property/CarPropertyEvent;
    .locals 4
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 427
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-direct {p0, v0}, Lcom/android/car/hal/PropertyHalService;->halToManagerPropId(I)I

    move-result v0

    .line 428
    .local v0, "mgrPropId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 429
    const/4 v1, 0x0

    return-object v1

    .line 431
    :cond_0
    invoke-static {p1, v0}, Lcom/android/car/hal/CarPropertyUtils;->toCarPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;I)Landroid/car/hardware/CarPropertyValue;

    move-result-object v1

    .line 432
    .local v1, "propVal":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    new-instance v2, Landroid/car/hardware/property/CarPropertyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    return-object v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 424
    return-void
.end method

.method public getProperty(II)Landroid/car/hardware/CarPropertyValue;
    .locals 1
    .param p1, "mgrPropId"    # I
    .param p2, "areaId"    # I

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/car/hal/PropertyHalService;->getProperty(IIZ)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(IIZ)Landroid/car/hardware/CarPropertyValue;
    .locals 5
    .param p1, "mgrPropId"    # I
    .param p2, "areaId"    # I
    .param p3, "showNoDataLog"    # Z

    .line 175
    invoke-direct {p0, p1}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v0

    .line 176
    .local v0, "halPropId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 180
    const/4 v1, 0x0

    move-object v2, v1

    .line 182
    .local v2, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_start_0
    iget-object v3, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v3, v0, p2, p3}, Lcom/android/car/hal/VehicleHal;->get(IIZ)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 192
    nop

    .line 194
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Lcom/android/car/hal/CarPropertyUtils;->toCarPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;I)Landroid/car/hardware/CarPropertyValue;

    move-result-object v1

    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    invoke-static {}, Lcom/android/car/CarServiceUtils;->isCduConnectedToCar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get property failed due to timeout for 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    const-string v4, "CAR.PROPERTY"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get property failed due to timeout for 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string v4, "CAR.PROPERTY"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_1
    new-instance v3, Landroid/car/ValueUnavailableException;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/car/ValueUnavailableException;-><init>(I)V

    throw v3

    .line 177
    .end local v1    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    .end local v2    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property Id : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPropertyList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    return-object v0
.end method

.method public getReadPermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "propId"    # I

    .line 211
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalServiceIds;->getReadPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate(I)F
    .locals 1
    .param p1, "propId"    # I

    .line 202
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/VehicleHal;->getSampleRate(I)F

    move-result v0

    return v0
.end method

.method public getWritePermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "propId"    # I

    .line 220
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalServiceIds;->getWritePermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 381
    .local v1, "listener":Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    if-eqz v1, :cond_3

    .line 383
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 384
    .local v2, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    if-nez v2, :cond_0

    .line 385
    goto :goto_0

    .line 387
    :cond_0
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-direct {p0, v3}, Lcom/android/car/hal/PropertyHalService;->halToManagerPropId(I)I

    move-result v3

    .line 388
    .local v3, "mgrPropId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 389
    const-string v4, "PropertyHalService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property is not supported: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    goto :goto_0

    .line 392
    :cond_1
    invoke-static {v2, v3}, Lcom/android/car/hal/CarPropertyUtils;->toCarPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;I)Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    .line 393
    .local v4, "propVal":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    new-instance v5, Landroid/car/hardware/property/CarPropertyEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 395
    .local v5, "event":Landroid/car/hardware/property/CarPropertyEvent;
    nop

    .line 396
    iget-object v6, p0, Lcom/android/car/hal/PropertyHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v2    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v3    # "mgrPropId":I
    .end local v4    # "propVal":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v5    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-interface {v1, v0}, Lcom/android/car/hal/PropertyHalService$PropertyHalListener;->onPropertyChange(Ljava/util/List;)V

    .line 400
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 402
    :cond_3
    return-void

    .line 381
    .end local v1    # "listener":Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handlePropertySetError(II)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "errorCode"    # I

    .line 407
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 409
    .local v1, "listener":Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    if-eqz v1, :cond_0

    .line 411
    const/4 v0, 0x0

    invoke-interface {v1, p1, v0, p2}, Lcom/android/car/hal/PropertyHalService$PropertyHalListener;->onPropertySetError(III)V

    .line 413
    :cond_0
    return-void

    .line 409
    .end local v1    # "listener":Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 2

    .line 328
    const-string v0, "PropertyHalService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public registerToHal(ILcom/android/car/hal/PropertyHalService;Landroid/car/hardware/property/ICarPropertyEventListener;)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "halService"    # Lcom/android/car/hal/PropertyHalService;
    .param p3, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 98
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/hal/VehicleHal;->registerClientInfo(ILcom/android/car/hal/PropertyHalService;Landroid/car/hardware/property/ICarPropertyEventListener;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 5

    .line 335
    const-string v0, "PropertyHalService"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 339
    .local v2, "prop":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/car/hal/VehicleHal;->unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 340
    .end local v2    # "prop":Ljava/lang/Integer;
    goto :goto_0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 345
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 347
    monitor-exit v1

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 342
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 144
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iput-object p1, p0, Lcom/android/car/hal/PropertyHalService;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMultiProperties(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyValue;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p1, "props":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyValue;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyValue;

    .line 251
    .local v2, "prop":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v3

    .line 252
    .local v3, "halPropId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 255
    const v4, 0x1540010a

    if-ne v3, v4, :cond_0

    .line 256
    const-string v4, "CAR.HAL"

    const-string v5, "this interface may not Implemented."

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    goto :goto_0

    .line 259
    :cond_0
    invoke-static {v2, v3}, Lcom/android/car/hal/CarPropertyUtils;->toVehiclePropValue(Landroid/car/hardware/CarPropertyValue;I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v4

    .line 260
    .local v4, "halProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v2    # "prop":Landroid/car/hardware/CarPropertyValue;
    .end local v3    # "halPropId":I
    .end local v4    # "halProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    goto :goto_0

    .line 253
    .restart local v2    # "prop":Landroid/car/hardware/CarPropertyValue;
    .restart local v3    # "halPropId":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid property Id : 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    .end local v2    # "prop":Landroid/car/hardware/CarPropertyValue;
    .end local v3    # "halPropId":I
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1, v0}, Lcom/android/car/hal/VehicleHal;->setMultiProperties(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    nop

    .line 273
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    invoke-static {}, Lcom/android/car/CarServiceUtils;->isCduConnectedToCar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set property failed due to timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.PROPERTY"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    :cond_3
    const-string v2, "CAR.PROPERTY"

    const-string v3, "set property failed due to timeout"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_1
    new-instance v2, Landroid/car/ValueUnavailableException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/car/ValueUnavailableException;-><init>(I)V

    throw v2
.end method

.method public setProperty(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "prop"    # Landroid/car/hardware/CarPropertyValue;

    .line 228
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v0

    .line 229
    .local v0, "halPropId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 233
    invoke-static {p1, v0}, Lcom/android/car/hal/CarPropertyUtils;->toVehiclePropValue(Landroid/car/hardware/CarPropertyValue;I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    .line 235
    .local v1, "halProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2, v1}, Lcom/android/car/hal/VehicleHal;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    nop

    .line 246
    return-void

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    invoke-static {}, Lcom/android/car/CarServiceUtils;->isCduConnectedToCar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set property failed due to timeout for 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    const-string v4, "CAR.PROPERTY"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set property failed due to timeout for 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    const-string v4, "CAR.PROPERTY"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    new-instance v3, Landroid/car/ValueUnavailableException;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/car/ValueUnavailableException;-><init>(I)V

    throw v3

    .line 230
    .end local v1    # "halProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property Id : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public subscribeProperty(IF)V
    .locals 5
    .param p1, "propId"    # I
    .param p2, "rate"    # F

    .line 282
    invoke-static {p1}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "PropertyHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeProperty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v0

    .line 287
    .local v0, "halPropId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    .line 293
    .local v1, "cfg":Landroid/car/hardware/CarPropertyConfig;
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getMaxSampleRate()F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 294
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getMaxSampleRate()F

    move-result p2

    .line 298
    .end local p2    # "rate":F
    .local v2, "rate":F
    :cond_1
    :goto_0
    move v2, p2

    goto :goto_1

    .line 295
    .end local v2    # "rate":F
    .restart local p2    # "rate":F
    :cond_2
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getMinSampleRate()F

    move-result v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 296
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getMinSampleRate()F

    move-result p2

    goto :goto_0

    .line 298
    .end local p2    # "rate":F
    .restart local v2    # "rate":F
    :goto_1
    iget-object v3, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    monitor-enter v3

    .line 299
    :try_start_0
    iget-object p2, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object p2, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {p2, p0, v0, v2}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;IF)V

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 288
    .end local v1    # "cfg":Landroid/car/hardware/CarPropertyConfig;
    .end local v2    # "rate":F
    .restart local p2    # "rate":F
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property Id : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
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

    .line 353
    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 355
    .local v0, "taken":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 356
    .local v2, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 357
    .local v3, "prop":I
    iget-object v4, p0, Lcom/android/car/hal/PropertyHalService;->mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

    invoke-virtual {v4, v3}, Lcom/android/car/hal/PropertyHalServiceIds;->isSupportedProperty(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    invoke-static {v2, v3}, Lcom/android/car/hal/CarPropertyUtils;->toCarPropertyConfig(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;I)Landroid/car/hardware/CarPropertyConfig;

    move-result-object v4

    .line 359
    .local v4, "config":Landroid/car/hardware/CarPropertyConfig;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v5, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {v3}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    const-string v5, "PropertyHalService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takeSupportedProperties: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v4    # "config":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_1

    .line 366
    :cond_1
    const-string v4, "PropertyHalService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not added to list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v2    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local v3    # "prop":I
    :goto_1
    goto :goto_0

    .line 371
    :cond_2
    const-string v1, "PropertyHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takeSupportedProperties() took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-object v0
.end method

.method public unregisterToHal(ILcom/android/car/hal/PropertyHalService;Landroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "halService"    # Lcom/android/car/hal/PropertyHalService;
    .param p3, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 103
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/hal/VehicleHal;->unregisterClientInfo(ILcom/android/car/hal/PropertyHalService;Landroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 104
    return-void
.end method

.method public unsubscribeProperty(I)V
    .locals 4
    .param p1, "propId"    # I

    .line 309
    invoke-static {p1}, Lcom/android/car/CarLog;->isCallbackLogEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "PropertyHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsubscribeProperty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v0

    .line 313
    .local v0, "halPropId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2, p0, v0}, Lcom/android/car/hal/VehicleHal;->unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 322
    :cond_1
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 314
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property Id : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
