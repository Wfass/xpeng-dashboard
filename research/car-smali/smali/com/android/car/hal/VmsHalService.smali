.class public Lcom/android/car/hal/VmsHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "VmsHalService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;,
        Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;
    }
.end annotation


# static fields
.field private static final AVAILABILITY_MESSAGE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final HAL_PROPERTY_ID:I = 0x11e00c00

.field private static NUM_INTEGERS_IN_VMS_LAYER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VmsHalService"


# instance fields
.field private final mAvailableLayers:Lcom/android/car/VmsLayersAvailability;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHalPublisherToken:Landroid/os/IBinder;

.field private mIsSupported:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOfferings:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/car/vms/VmsLayersOffering;",
            ">;"
        }
    .end annotation
.end field

.field private mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublishersInfo:Lcom/android/car/VmsPublishersInfo;

.field private final mRouting:Lcom/android/car/VmsRouting;

.field private mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleHal:Lcom/android/car/hal/VehicleHal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    .line 76
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/hal/VmsHalService;->AVAILABILITY_MESSAGE_TYPES:Ljava/util/List;

    .line 614
    const/4 v0, 0x3

    sput v0, Lcom/android/car/hal/VmsHalService;->NUM_INTEGERS_IN_VMS_LAYER:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 2
    .param p1, "vehicleHal"    # Lcom/android/car/hal/VehicleHal;

    .line 117
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mHalPublisherToken:Landroid/os/IBinder;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/android/car/VmsRouting;

    invoke-direct {v0}, Lcom/android/car/VmsRouting;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mOfferings:Ljava/util/Map;

    .line 92
    new-instance v0, Lcom/android/car/VmsLayersAvailability;

    invoke-direct {v0}, Lcom/android/car/VmsLayersAvailability;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayers:Lcom/android/car/VmsLayersAvailability;

    .line 94
    new-instance v0, Lcom/android/car/VmsPublishersInfo;

    invoke-direct {v0}, Lcom/android/car/VmsPublishersInfo;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mPublishersInfo:Lcom/android/car/VmsPublishersInfo;

    .line 118
    iput-object p1, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    .line 120
    const-string v0, "VmsHalService"

    const-string v1, "started VmsHalService!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private addHalSubscription(Landroid/car/vms/VmsLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 286
    const/4 v0, 0x1

    .line 287
    .local v0, "firstSubscriptionForLayer":Z
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    move v0, v2

    .line 292
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1}, Lcom/android/car/VmsRouting;->addHalSubscription(Landroid/car/vms/VmsLayer;)V

    .line 293
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, p1, v3}, Lcom/android/car/hal/VmsHalService;->notifyHalPublishers(Landroid/car/vms/VmsLayer;Z)V

    .line 296
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->notifyClientPublishers()V

    .line 298
    :cond_0
    return-void

    .line 293
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private addHalSubscriptionToPublisher(Landroid/car/vms/VmsLayer;I)V
    .locals 4
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I

    .line 301
    const/4 v0, 0x1

    .line 302
    .local v0, "firstSubscriptionForLayer":Z
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    .line 305
    invoke-virtual {v2, p1, p2}, Lcom/android/car/VmsRouting;->hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 308
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1, p2}, Lcom/android/car/VmsRouting;->addHalSubscriptionToPublisher(Landroid/car/vms/VmsLayer;I)V

    .line 309
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0, p1, p2, v3}, Lcom/android/car/hal/VmsHalService;->notifyHalPublishers(Landroid/car/vms/VmsLayer;IZ)V

    .line 312
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->notifyClientPublishers()V

    .line 314
    :cond_1
    return-void

    .line 309
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleDataEvent(Ljava/util/List;[B)V
    .locals 5
    .param p2, "payload"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[B)V"
        }
    .end annotation

    .line 531
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromDataMessageIntegerValues(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 532
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService;->parsePublisherIdFromDataMessageIntegerValues(Ljava/util/List;)I

    move-result v1

    .line 534
    .local v1, "publisherId":I
    const-string v2, "VmsHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling a data event for Layer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;

    .line 539
    .local v3, "listener":Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;
    invoke-interface {v3, v0, v1, p2}, Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;->onDataMessage(Landroid/car/vms/VmsLayer;I[B)V

    .line 540
    .end local v3    # "listener":Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;
    goto :goto_0

    .line 541
    :cond_0
    return-void
.end method

.method private handleHalAvailabilityRequestEvent()V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayers:Lcom/android/car/VmsLayersAvailability;

    invoke-virtual {v1}, Lcom/android/car/VmsLayersAvailability;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v1

    .line 685
    .local v1, "availableLayers":Landroid/car/vms/VmsAvailableLayers;
    const/16 v2, 0x8

    .line 686
    invoke-static {v1, v2}, Lcom/android/car/hal/VmsHalService;->toAvailabilityUpdateVehiclePropValue(Landroid/car/vms/VmsAvailableLayers;I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 690
    .local v2, "vehiclePropertyValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-virtual {p0, v2}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Z

    .line 691
    .end local v1    # "availableLayers":Landroid/car/vms/VmsAvailableLayers;
    .end local v2    # "vehiclePropertyValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    monitor-exit v0

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOfferingEvent(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 639
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 640
    .local v0, "publisherId":I
    nop

    .line 641
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 643
    .local v1, "numLayersDependencies":I
    const/4 v2, 0x3

    .line 645
    .local v2, "idx":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 648
    .local v3, "offeredLayers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayerDependency;>;"
    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .local v2, "i":I
    .local v5, "idx":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 649
    invoke-direct {p0, p1, v5}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromIndex(Ljava/util/List;I)Landroid/car/vms/VmsLayer;

    move-result-object v6

    .line 650
    .local v6, "offeredLayer":Landroid/car/vms/VmsLayer;
    sget v7, Lcom/android/car/hal/VmsHalService;->NUM_INTEGERS_IN_VMS_LAYER:I

    add-int/2addr v5, v7

    .line 652
    add-int/lit8 v7, v5, 0x1

    .local v7, "idx":I
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "idx":I
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 653
    .local v5, "numDependenciesForLayer":I
    if-nez v5, :cond_0

    .line 654
    new-instance v8, Landroid/car/vms/VmsLayerDependency;

    invoke-direct {v8, v6}, Landroid/car/vms/VmsLayerDependency;-><init>(Landroid/car/vms/VmsLayer;)V

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    move v5, v7

    goto :goto_2

    .line 656
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 658
    .local v8, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    move v9, v7

    move v7, v4

    .local v7, "j":I
    .local v9, "idx":I
    :goto_1
    if-ge v7, v5, :cond_1

    .line 659
    invoke-direct {p0, p1, v9}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromIndex(Ljava/util/List;I)Landroid/car/vms/VmsLayer;

    move-result-object v10

    .line 660
    .local v10, "dependantLayer":Landroid/car/vms/VmsLayer;
    sget v11, Lcom/android/car/hal/VmsHalService;->NUM_INTEGERS_IN_VMS_LAYER:I

    add-int/2addr v9, v11

    .line 661
    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v10    # "dependantLayer":Landroid/car/vms/VmsLayer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 663
    .end local v7    # "j":I
    :cond_1
    new-instance v7, Landroid/car/vms/VmsLayerDependency;

    invoke-direct {v7, v6, v8}, Landroid/car/vms/VmsLayerDependency;-><init>(Landroid/car/vms/VmsLayer;Ljava/util/Set;)V

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    .end local v5    # "numDependenciesForLayer":I
    .end local v6    # "offeredLayer":Landroid/car/vms/VmsLayer;
    .end local v8    # "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    move v5, v9

    .end local v9    # "idx":I
    .local v5, "idx":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Landroid/car/vms/VmsLayersOffering;

    invoke-direct {v2, v3, v0}, Landroid/car/vms/VmsLayersOffering;-><init>(Ljava/util/Set;I)V

    .line 668
    .local v2, "offering":Landroid/car/vms/VmsLayersOffering;
    iget-object v4, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 669
    :try_start_0
    iget-object v6, p0, Lcom/android/car/hal/VmsHalService;->mHalPublisherToken:Landroid/os/IBinder;

    invoke-direct {p0, v6, v2}, Lcom/android/car/hal/VmsHalService;->updateOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V

    .line 670
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/car/vms/VmsOperationRecorder;->setHalPublisherLayersOffering(Landroid/car/vms/VmsLayersOffering;)V

    .line 671
    monitor-exit v4

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private handleSubscribeEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 553
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromSimpleMessageIntegerValues(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 555
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    const-string v1, "VmsHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling a subscribe event for Layer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0, v0}, Lcom/android/car/hal/VmsHalService;->addHalSubscription(Landroid/car/vms/VmsLayer;)V

    .line 558
    return-void
.end method

.method private handleSubscribeToPublisherEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 571
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromSimpleMessageIntegerValues(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 573
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    const-string v1, "VmsHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling a subscribe event for Layer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    nop

    .line 576
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 577
    .local v1, "publisherId":I
    invoke-direct {p0, v0, v1}, Lcom/android/car/hal/VmsHalService;->addHalSubscriptionToPublisher(Landroid/car/vms/VmsLayer;I)V

    .line 578
    return-void
.end method

.method private handleSubscriptionsRequestEvent()V
    .locals 8

    .line 709
    invoke-virtual {p0}, Lcom/android/car/hal/VmsHalService;->getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v0

    .line 710
    .local v0, "subscription":Landroid/car/vms/VmsSubscriptionState;
    nop

    .line 711
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/android/car/hal/VmsHalService;->toTypedVmsVehiclePropValue(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    .line 712
    .local v1, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 713
    .local v2, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    iget-object v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/car/vms/VmsSubscriptionState;->getSequenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {v0}, Landroid/car/vms/VmsSubscriptionState;->getLayers()Ljava/util/Set;

    move-result-object v3

    .line 715
    .local v3, "layers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/vms/VmsLayer;

    .line 722
    .local v5, "layer":Landroid/car/vms/VmsLayer;
    iget-object v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/car/vms/VmsLayer;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/car/vms/VmsLayer;->getSubtype()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/car/vms/VmsLayer;->getVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    .end local v5    # "layer":Landroid/car/vms/VmsLayer;
    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Z

    .line 727
    return-void
.end method

.method private handleUnsubscribeEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 589
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromSimpleMessageIntegerValues(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 591
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    const-string v1, "VmsHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling an unsubscribe event for Layer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-direct {p0, v0}, Lcom/android/car/hal/VmsHalService;->removeHalSubscription(Landroid/car/vms/VmsLayer;)V

    .line 594
    return-void
.end method

.method private handleUnsubscribeFromPublisherEvent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 605
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromSimpleMessageIntegerValues(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 606
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    nop

    .line 607
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 609
    .local v1, "publisherId":I
    const-string v2, "VmsHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling an unsubscribe event for Layer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual {p0, v0, v1}, Lcom/android/car/hal/VmsHalService;->removeHalSubscriptionFromPublisher(Landroid/car/vms/VmsLayer;I)V

    .line 612
    return-void
.end method

.method private notifyClientPublishers()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;

    .line 399
    .local v1, "listener":Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;
    invoke-virtual {p0}, Lcom/android/car/hal/VmsHalService;->getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;->onChange(Landroid/car/vms/VmsSubscriptionState;)V

    .line 400
    .end local v1    # "listener":Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;
    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method private notifyHalPublishers(Landroid/car/vms/VmsLayer;IZ)V
    .locals 0
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I
    .param p3, "hasSubscribers"    # Z

    .line 390
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/car/hal/VmsHalService;->setSubscriptionToPublisherRequest(Landroid/car/vms/VmsLayer;IZ)Z

    .line 391
    return-void
.end method

.method private notifyHalPublishers(Landroid/car/vms/VmsLayer;Z)V
    .locals 0
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "hasSubscribers"    # Z

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/android/car/hal/VmsHalService;->setSubscriptionRequest(Landroid/car/vms/VmsLayer;Z)Z

    .line 386
    return-void
.end method

.method private notifyOfAvailabilityChange(Landroid/car/vms/VmsAvailableLayers;)V
    .locals 2
    .param p1, "availableLayers"    # Landroid/car/vms/VmsAvailableLayers;

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/car/hal/VmsHalService;->notifyAvailabilityChangeToHal(Landroid/car/vms/VmsAvailableLayers;)Z

    .line 413
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;

    .line 414
    .local v1, "listener":Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;
    invoke-interface {v1, p1}, Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;->onLayersAvaiabilityChange(Landroid/car/vms/VmsAvailableLayers;)V

    .line 415
    .end local v1    # "listener":Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;
    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method private parsePublisherIdFromDataMessageIntegerValues(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 515
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private parseVmsLayerFromDataMessageIntegerValues(Ljava/util/List;)Landroid/car/vms/VmsLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/vms/VmsLayer;"
        }
    .end annotation

    .line 511
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromSimpleMessageIntegerValues(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    return-object v0
.end method

.method private parseVmsLayerFromIndex(Ljava/util/List;I)Landroid/car/vms/VmsLayer;
    .locals 4
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/car/vms/VmsLayer;"
        }
    .end annotation

    .line 617
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v0, p2, 0x1

    .local v0, "index":I
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "index":I
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 618
    .local p2, "layerType":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "index":I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "index":I
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 619
    .local v0, "layerSutype":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "index":I
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "index":I
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 620
    .local v1, "layerVersion":I
    new-instance v3, Landroid/car/vms/VmsLayer;

    invoke-direct {v3, p2, v0, v1}, Landroid/car/vms/VmsLayer;-><init>(III)V

    return-object v3
.end method

.method private parseVmsLayerFromSimpleMessageIntegerValues(Ljava/util/List;)Landroid/car/vms/VmsLayer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/vms/VmsLayer;"
        }
    .end annotation

    .line 505
    .local p1, "integerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/car/vms/VmsLayer;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 506
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 507
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/car/vms/VmsLayer;-><init>(III)V

    .line 505
    return-object v0
.end method

.method private static populateAvailabilityPropValueFields(Landroid/car/vms/VmsAvailableLayers;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 8
    .param p0, "availableAssociatedLayers"    # Landroid/car/vms/VmsAvailableLayers;
    .param p1, "vehicleProp"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 841
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 842
    .local v0, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/car/vms/VmsAvailableLayers;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-virtual {p0}, Landroid/car/vms/VmsAvailableLayers;->getAssociatedLayers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 844
    .local v1, "numLayers":I
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-virtual {p0}, Landroid/car/vms/VmsAvailableLayers;->getAssociatedLayers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/vms/VmsAssociatedLayer;

    .line 846
    .local v3, "layer":Landroid/car/vms/VmsAssociatedLayer;
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/car/vms/VmsAssociatedLayer;->getVmsLayer()Landroid/car/vms/VmsLayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/car/vms/VmsLayer;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/car/vms/VmsAssociatedLayer;->getVmsLayer()Landroid/car/vms/VmsLayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/car/vms/VmsLayer;->getSubtype()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/car/vms/VmsAssociatedLayer;->getVmsLayer()Landroid/car/vms/VmsLayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/car/vms/VmsLayer;->getVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/car/vms/VmsAssociatedLayer;->getPublisherIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-virtual {v3}, Landroid/car/vms/VmsAssociatedLayer;->getPublisherIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 851
    .local v5, "publisherId":I
    iget-object v6, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    .end local v5    # "publisherId":I
    goto :goto_1

    .line 853
    .end local v3    # "layer":Landroid/car/vms/VmsAssociatedLayer;
    :cond_0
    goto :goto_0

    .line 854
    :cond_1
    return-void
.end method

.method private removeHalSubscription(Landroid/car/vms/VmsLayer;)V
    .locals 5
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 317
    const/4 v0, 0x1

    .line 318
    .local v0, "layerHasSubscribers":Z
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const-string v2, "VmsHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove a layer with no subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    monitor-exit v1

    return-void

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1}, Lcom/android/car/VmsRouting;->removeHalSubscription(Landroid/car/vms/VmsLayer;)V

    .line 328
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    move v0, v2

    .line 329
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    if-nez v0, :cond_1

    .line 331
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/car/hal/VmsHalService;->notifyHalPublishers(Landroid/car/vms/VmsLayer;Z)V

    .line 332
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->notifyClientPublishers()V

    .line 334
    :cond_1
    return-void

    .line 329
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static toAvailabilityUpdateVehiclePropValue(Landroid/car/vms/VmsAvailableLayers;I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 3
    .param p0, "availableLayers"    # Landroid/car/vms/VmsAvailableLayers;
    .param p1, "messageType"    # I

    .line 828
    sget-object v0, Lcom/android/car/hal/VmsHalService;->AVAILABILITY_MESSAGE_TYPES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    nop

    .line 832
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->toTypedVmsVehiclePropValue(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 833
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-static {p0, v0}, Lcom/android/car/hal/VmsHalService;->populateAvailabilityPropValueFields(Landroid/car/vms/VmsAvailableLayers;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 834
    return-object v0

    .line 829
    .end local v0    # "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported availability type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toTypedVmsVehiclePropValue(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 4
    .param p0, "messageType"    # I

    .line 803
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 804
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    const v1, 0x11e00c00

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 805
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 806
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 808
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    return-object v0
.end method

.method private static toTypedVmsVehiclePropValueWithLayer(ILandroid/car/vms/VmsLayer;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 4
    .param p0, "messageType"    # I
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 817
    invoke-static {p0}, Lcom/android/car/hal/VmsHalService;->toTypedVmsVehiclePropValue(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 818
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 819
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/car/vms/VmsLayer;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/car/vms/VmsLayer;->getSubtype()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/car/vms/VmsLayer;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    return-object v0
.end method

.method private updateOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V
    .locals 3
    .param p1, "publisherToken"    # Landroid/os/IBinder;
    .param p2, "offering"    # Landroid/car/vms/VmsLayersOffering;

    .line 731
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mOfferings:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayers:Lcom/android/car/VmsLayersAvailability;

    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mOfferings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/VmsLayersAvailability;->setPublishersOffering(Ljava/util/Collection;)V

    .line 737
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayers:Lcom/android/car/VmsLayersAvailability;

    invoke-virtual {v1}, Lcom/android/car/VmsLayersAvailability;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v1

    .line 738
    .local v1, "availableLayers":Landroid/car/vms/VmsAvailableLayers;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-direct {p0, v1}, Lcom/android/car/hal/VmsHalService;->notifyOfAvailabilityChange(Landroid/car/vms/VmsAvailableLayers;)V

    .line 740
    return-void

    .line 738
    .end local v1    # "availableLayers":Landroid/car/vms/VmsAvailableLayers;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPublisherListener(Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;

    .line 125
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public addSubscriberListener(Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;

    .line 129
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 181
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsRouting;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 4
    .param p1, "listener"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "firstSubscriptionForLayer":Z
    const-string v1, "VmsHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking for first subscription. Layer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    move v0, v2

    .line 150
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1, p2}, Lcom/android/car/VmsRouting;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 151
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p2, v3}, Lcom/android/car/hal/VmsHalService;->notifyHalPublishers(Landroid/car/vms/VmsLayer;Z)V

    .line 154
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->notifyClientPublishers()V

    .line 156
    :cond_0
    return-void

    .line 151
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 4
    .param p1, "listener"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "firstSubscriptionForLayer":Z
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    .line 197
    invoke-virtual {v2, p2, p3}, Lcom/android/car/VmsRouting;->hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 200
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/car/VmsRouting;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0, p2, v3}, Lcom/android/car/hal/VmsHalService;->notifyHalPublishers(Landroid/car/vms/VmsLayer;Z)V

    .line 204
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->notifyClientPublishers()V

    .line 206
    :cond_1
    return-void

    .line 201
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public containsSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Z
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 358
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsRouting;->containsSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 744
    const-string v0, "VmsHalService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmsProperty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "not"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public getAllSubscribers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1}, Lcom/android/car/VmsRouting;->getAllSubscribers()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayers:Lcom/android/car/VmsLayersAvailability;

    invoke-virtual {v1}, Lcom/android/car/VmsLayersAvailability;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPublisherId([B)I
    .locals 2
    .param p1, "publisherInfo"    # [B

    .line 269
    const-string v0, "VmsHalService"

    const-string v1, "Getting publisher static ID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mPublishersInfo:Lcom/android/car/VmsPublishersInfo;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsPublishersInfo;->getIdForInfo([B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPublisherInfo(I)[B
    .locals 3
    .param p1, "publisherId"    # I

    .line 278
    const-string v0, "VmsHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting information for publisher ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mPublishersInfo:Lcom/android/car/VmsPublishersInfo;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsPublishersInfo;->getPublisherInfo(I)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;
    .locals 2
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/vms/VmsLayer;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1, p2}, Lcom/android/car/VmsRouting;->getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1}, Lcom/android/car/VmsRouting;->getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 464
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    const-string v0, "VmsHalService"

    const-string v1, "Handling a VMS property change"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 467
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 468
    .local v2, "vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 471
    .local v3, "messageType":I
    const-string v4, "VmsHalService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling VMS message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected message type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :pswitch_0
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->handleSubscriptionsRequestEvent()V

    .line 497
    goto :goto_1

    .line 493
    :pswitch_1
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->handleHalAvailabilityRequestEvent()V

    .line 494
    goto :goto_1

    .line 490
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleOfferingEvent(Ljava/util/List;)V

    .line 491
    goto :goto_1

    .line 487
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleUnsubscribeFromPublisherEvent(Ljava/util/List;)V

    .line 488
    goto :goto_1

    .line 481
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleUnsubscribeEvent(Ljava/util/List;)V

    .line 482
    goto :goto_1

    .line 484
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleSubscribeToPublisherEvent(Ljava/util/List;)V

    .line 485
    goto :goto_1

    .line 478
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleSubscribeEvent(Ljava/util/List;)V

    .line 479
    goto :goto_1

    .line 475
    :cond_0
    iget-object v4, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/car/hal/VmsHalService;->handleDataEvent(Ljava/util/List;[B)V

    .line 476
    nop

    .line 501
    .end local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "messageType":I
    :goto_1
    goto :goto_0

    .line 502
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .line 421
    const-string v0, "VmsHalService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-boolean v0, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    const v1, 0x11e00c00

    invoke-virtual {v0, p0, v1}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 426
    :cond_0
    return-void
.end method

.method public isHalSubscribed(Landroid/car/vms/VmsLayer;)Z
    .locals 2
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 250
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsRouting;->isHalSubscribed(Landroid/car/vms/VmsLayer;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyAvailabilityChangeToHal(Landroid/car/vms/VmsAvailableLayers;)Z
    .locals 2
    .param p1, "availableLayers"    # Landroid/car/vms/VmsAvailableLayers;

    .line 784
    nop

    .line 785
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/android/car/hal/VmsHalService;->toAvailabilityUpdateVehiclePropValue(Landroid/car/vms/VmsAvailableLayers;I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 789
    .local v0, "vehiclePropertyValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-virtual {p0, v0}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Z

    move-result v1

    return v1
.end method

.method public release()V
    .locals 2

    .line 431
    const-string v0, "VmsHalService"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-boolean v0, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    const v1, 0x11e00c00

    invoke-virtual {v0, p0, v1}, Lcom/android/car/hal/VehicleHal;->unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 437
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 438
    return-void
.end method

.method public removeDeadSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 231
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsRouting;->removeDeadSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeHalSubscriptionFromPublisher(Landroid/car/vms/VmsLayer;I)V
    .locals 5
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I

    .line 337
    const/4 v0, 0x1

    .line 338
    .local v0, "layerHasSubscribers":Z
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    const-string v2, "VmsHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove a layer with no subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit v1

    return-void

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1, p2}, Lcom/android/car/VmsRouting;->removeHalSubscriptionToPublisher(Landroid/car/vms/VmsLayer;I)V

    .line 348
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    .line 349
    invoke-virtual {v2, p1, p2}, Lcom/android/car/VmsRouting;->hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 350
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    if-nez v0, :cond_3

    .line 352
    invoke-direct {p0, p1, p2, v3}, Lcom/android/car/hal/VmsHalService;->notifyHalPublishers(Landroid/car/vms/VmsLayer;IZ)V

    .line 353
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->notifyClientPublishers()V

    .line 355
    :cond_3
    return-void

    .line 350
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePublisherListener(Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/hal/VmsHalService$VmsHalPublisherListener;

    .line 133
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public removeSubscriberListener(Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;

    .line 137
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 187
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 5
    .param p1, "listener"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 159
    const/4 v0, 0x1

    .line 160
    .local v0, "layerHasSubscribers":Z
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    const-string v2, "VmsHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove a layer with no subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit v1

    return-void

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1, p2}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 172
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    move v0, v2

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-nez v0, :cond_1

    .line 175
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/car/hal/VmsHalService;->notifyHalPublishers(Landroid/car/vms/VmsLayer;Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->notifyClientPublishers()V

    .line 178
    :cond_1
    return-void

    .line 173
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 5
    .param p1, "listener"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, "layerHasSubscribers":Z
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p2, p3}, Lcom/android/car/VmsRouting;->hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    const-string v2, "VmsHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove a layer with no subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", publisher ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v1

    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 221
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mRouting:Lcom/android/car/VmsRouting;

    .line 222
    invoke-virtual {v2, p2, p3}, Lcom/android/car/VmsRouting;->hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-nez v0, :cond_3

    .line 225
    invoke-direct {p0, p2, v3}, Lcom/android/car/hal/VmsHalService;->notifyHalPublishers(Landroid/car/vms/VmsLayer;Z)V

    .line 226
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->notifyClientPublishers()V

    .line 228
    :cond_3
    return-void

    .line 223
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setDataMessage(Landroid/car/vms/VmsLayer;[B)Z
    .locals 7
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "payload"    # [B

    .line 773
    nop

    .line 774
    const/16 v0, 0xc

    invoke-static {v0, p1}, Lcom/android/car/hal/VmsHalService;->toTypedVmsVehiclePropValueWithLayer(ILandroid/car/vms/VmsLayer;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 775
    .local v0, "vehiclePropertyValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    .line 776
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 777
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p2, v3

    .line 778
    .local v4, "b":B
    iget-object v5, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Z

    move-result v2

    return v2
.end method

.method public setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Z
    .locals 4
    .param p1, "vehiclePropertyValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/VehicleHal;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    const/4 v0, 0x1

    return v0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v1, "CAR.PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set, property not ready 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x11e00c00

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    .end local v0    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    const/4 v0, 0x0

    return v0
.end method

.method public setPublisherLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V
    .locals 2
    .param p1, "publisherToken"    # Landroid/os/IBinder;
    .param p2, "offering"    # Landroid/car/vms/VmsLayersOffering;

    .line 364
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/hal/VmsHalService;->updateOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V

    .line 366
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/car/vms/VmsOperationRecorder;->setPublisherLayersOffering(Landroid/car/vms/VmsLayersOffering;)V

    .line 367
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSubscriptionRequest(Landroid/car/vms/VmsLayer;Z)Z
    .locals 2
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "hasSubscribers"    # Z

    .line 757
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 756
    :goto_0
    invoke-static {v0, p1}, Lcom/android/car/hal/VmsHalService;->toTypedVmsVehiclePropValueWithLayer(ILandroid/car/vms/VmsLayer;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 758
    .local v0, "vehiclePropertyValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-virtual {p0, v0}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Z

    move-result v1

    return v1
.end method

.method public setSubscriptionToPublisherRequest(Landroid/car/vms/VmsLayer;IZ)Z
    .locals 3
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I
    .param p3, "hasSubscribers"    # Z

    .line 765
    if-eqz p3, :cond_0

    .line 766
    const/4 v0, 0x2

    goto :goto_0

    .line 767
    :cond_0
    const/4 v0, 0x4

    .line 764
    :goto_0
    invoke-static {v0, p1}, Lcom/android/car/hal/VmsHalService;->toTypedVmsVehiclePropValueWithLayer(ILandroid/car/vms/VmsLayer;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 768
    .local v0, "vehiclePropertyValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {p0, v0}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Z

    move-result v1

    return v1
.end method

.method public takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
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

    .line 443
    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 444
    .local v0, "taken":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 445
    .local v2, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const v4, 0x11e00c00

    if-ne v3, v4, :cond_0

    .line 446
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    .line 449
    const-string v1, "VmsHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeSupportedProperties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    goto :goto_1

    .line 453
    .end local v2    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :cond_0
    goto :goto_0

    .line 454
    :cond_1
    :goto_1
    return-object v0
.end method
