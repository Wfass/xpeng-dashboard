.class public Lcom/android/car/VmsRouting;
.super Ljava/lang/Object;
.source "VmsRouting.java"


# instance fields
.field private mHalSubscriptions:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mHalSubscriptionsToPublishers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/vms/VmsLayer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayerSubscriptions:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/vms/VmsLayer;",
            "Ljava/util/Set<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayerSubscriptionsToPublishers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/vms/VmsLayer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPromiscuousSubscribers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mPromiscuousSubscribers:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mHalSubscriptions:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mHalSubscriptionsToPublishers:Ljava/util/Map;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    return-void
.end method

.method static synthetic lambda$getSubscriptionState$0(Ljava/util/Map$Entry;)Landroid/car/vms/VmsAssociatedLayer;
    .locals 3
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 403
    new-instance v0, Landroid/car/vms/VmsAssociatedLayer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/vms/VmsLayer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/car/vms/VmsAssociatedLayer;-><init>(Landroid/car/vms/VmsLayer;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic lambda$getSubscriptionState$1(Ljava/util/Map$Entry;)Landroid/car/vms/VmsAssociatedLayer;
    .locals 3
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 407
    new-instance v0, Landroid/car/vms/VmsAssociatedLayer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/vms/VmsLayer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Landroid/car/vms/VmsAssociatedLayer;-><init>(Landroid/car/vms/VmsLayer;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public addHalSubscription(Landroid/car/vms/VmsLayer;)V
    .locals 3
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 297
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 299
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mHalSubscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v1

    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    invoke-virtual {v1, v2, p1}, Landroid/car/vms/VmsOperationRecorder;->addHalSubscription(ILandroid/car/vms/VmsLayer;)V

    .line 301
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addHalSubscriptionToPublisher(Landroid/car/vms/VmsLayer;I)V
    .locals 3
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I

    .line 305
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 308
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mHalSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 309
    .local v1, "publisherIdsForLayer":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 310
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 311
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mHalSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v1    # "publisherIdsForLayer":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 95
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 97
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mPromiscuousSubscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v1

    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    invoke-virtual {v1, v2}, Landroid/car/vms/VmsOperationRecorder;->addPromiscuousSubscription(I)V

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 4
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 74
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 77
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 79
    .local v1, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    if-nez v1, :cond_0

    .line 80
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 81
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v2

    iget v3, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    invoke-virtual {v2, v3, p2}, Landroid/car/vms/VmsOperationRecorder;->addSubscription(ILandroid/car/vms/VmsLayer;)V

    .line 86
    .end local v1    # "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 4
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 110
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 113
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 114
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 116
    .local v1, "publisherIdsToSubscribersForLayer":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;>;"
    if-nez v1, :cond_0

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 118
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    nop

    .line 122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 124
    .local v2, "subscribersForPublisher":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    if-nez v2, :cond_1

    .line 125
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    .line 126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v1    # "publisherIdsToSubscribersForLayer":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;>;"
    .end local v2    # "subscribersForPublisher":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Z
    .locals 4
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 279
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 282
    .local v2, "layerSubscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 285
    .end local v2    # "layerSubscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    :cond_0
    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mPromiscuousSubscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllSubscribers()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 262
    .local v0, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/vms/VmsLayer;

    .line 264
    .local v3, "layer":Landroid/car/vms/VmsLayer;
    iget-object v4, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    .end local v3    # "layer":Landroid/car/vms/VmsLayer;
    goto :goto_0

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mPromiscuousSubscribers:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 268
    monitor-exit v1

    .line 269
    return-object v0

    .line 268
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;
    .locals 4
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

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 238
    .local v0, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mPromiscuousSubscribers:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    monitor-exit v1

    .line 254
    return-object v0

    .line 253
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 396
    .local v1, "layers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 397
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mHalSubscriptions:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 400
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 401
    .local v2, "layersFromPublishers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsAssociatedLayer;>;"
    iget-object v3, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 402
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/car/-$$Lambda$VmsRouting$TCaz8QnaCpvjXAzI1aUMQoMDCbQ;->INSTANCE:Lcom/android/car/-$$Lambda$VmsRouting$TCaz8QnaCpvjXAzI1aUMQoMDCbQ;

    .line 403
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 404
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 401
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 405
    iget-object v3, p0, Lcom/android/car/VmsRouting;->mHalSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 406
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/car/-$$Lambda$VmsRouting$4YhE2x_6GVdbI0aoKUuQY24Pi4E;->INSTANCE:Lcom/android/car/-$$Lambda$VmsRouting$4YhE2x_6GVdbI0aoKUuQY24Pi4E;

    .line 407
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 408
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 405
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 410
    new-instance v3, Landroid/car/vms/VmsSubscriptionState;

    iget v4, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    invoke-direct {v3, v4, v1, v2}, Landroid/car/vms/VmsSubscriptionState;-><init>(ILjava/util/Set;Ljava/util/Set;)V

    monitor-exit v0

    return-object v3

    .line 411
    .end local v1    # "layers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    .end local v2    # "layersFromPublishers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsAssociatedLayer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z
    .locals 6
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I

    .line 378
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 380
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 381
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 383
    .local v1, "hasClientSubscription":Z
    :goto_0
    iget-object v4, p0, Lcom/android/car/VmsRouting;->mHalSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/car/VmsRouting;->mHalSubscriptionsToPublishers:Ljava/util/Map;

    .line 384
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 386
    .local v4, "hasHalSubscription":Z
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
    monitor-exit v0

    return v2

    .line 387
    .end local v1    # "hasClientSubscription":Z
    .end local v4    # "hasHalSubscription":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z
    .locals 2
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 365
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/car/VmsRouting;->mHalSubscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHalSubscribed(Landroid/car/vms/VmsLayer;)Z
    .locals 2
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 353
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mHalSubscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeDeadSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 216
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/vms/VmsLayer;

    .line 219
    .local v2, "layer":Landroid/car/vms/VmsLayer;
    invoke-virtual {p0, p1, v2}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 220
    .end local v2    # "layer":Landroid/car/vms/VmsLayer;
    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 223
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeHalSubscription(Landroid/car/vms/VmsLayer;)V
    .locals 3
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 323
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 325
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mHalSubscriptions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v1

    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    invoke-virtual {v1, v2, p1}, Landroid/car/vms/VmsOperationRecorder;->removeHalSubscription(ILandroid/car/vms/VmsLayer;)V

    .line 327
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeHalSubscriptionToPublisher(Landroid/car/vms/VmsLayer;I)V
    .locals 3
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I

    .line 331
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 334
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mHalSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 335
    .local v1, "publisherIdsForLayer":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 336
    monitor-exit v0

    return-void

    .line 338
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mHalSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local v1    # "publisherIdsForLayer":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit v0

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 166
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 168
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mPromiscuousSubscribers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 169
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v1

    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    invoke-virtual {v1, v2}, Landroid/car/vms/VmsOperationRecorder;->removePromiscuousSubscription(I)V

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 4
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 142
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 144
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 147
    .local v1, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    if-nez v1, :cond_0

    .line 148
    monitor-exit v0

    return-void

    .line 150
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v2

    iget v3, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    invoke-virtual {v2, v3, p2}, Landroid/car/vms/VmsOperationRecorder;->removeSubscription(ILandroid/car/vms/VmsLayer;)V

    .line 154
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v1    # "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    :cond_1
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 4
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 183
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 186
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 187
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 189
    .local v1, "subscribersToPublishers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;>;"
    if-nez v1, :cond_0

    .line 190
    monitor-exit v0

    return-void

    .line 193
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 195
    .local v2, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    if-nez v2, :cond_1

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v1    # "subscribersToPublishers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;>;"
    .end local v2    # "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    :cond_3
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
