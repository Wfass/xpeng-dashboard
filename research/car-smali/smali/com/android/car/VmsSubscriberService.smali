.class public Lcom/android/car/VmsSubscriberService;
.super Landroid/car/vms/IVmsSubscriberService$Stub;
.source "VmsSubscriberService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final PERMISSION:Ljava/lang/String; = "android.car.permission.VMS_SUBSCRIBER"

.field private static final TAG:Ljava/lang/String; = "VmsSubscriberService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHal:Lcom/android/car/hal/VmsHalService;

.field private final mSubscriberServiceLock:Ljava/lang/Object;

.field private final mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSubscriberServiceLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/VmsHalService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/android/car/hal/VmsHalService;

    .line 197
    invoke-direct {p0}, Landroid/car/vms/IVmsSubscriberService$Stub;-><init>()V

    .line 53
    new-instance v0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-direct {v0, p0}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;-><init>(Lcom/android/car/VmsSubscriberService;)V

    iput-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    .line 198
    iput-object p1, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    .line 200
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/VmsSubscriberService;)Lcom/android/car/hal/VmsHalService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsSubscriberService;

    .line 44
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/VmsSubscriberService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsSubscriberService;

    .line 44
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 241
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->add(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 247
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p1, p2}, Lcom/android/car/hal/VmsHalService;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 287
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 288
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->add(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 290
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/VmsHalService;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 221
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 222
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->add(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 264
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->add(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 270
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/car/hal/VmsHalService;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 271
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 216
    return-void
.end method

.method public getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/VmsHalService;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherInfo(I)[B
    .locals 2
    .param p1, "publisherId"    # I

    .line 305
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 306
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/VmsHalService;->getPublisherInfo(I)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/VmsHalService;->addSubscriberListener(Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;)V

    .line 206
    return-void
.end method

.method public onDataMessage(Landroid/car/vms/VmsLayer;I[B)V
    .locals 6
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I
    .param p3, "payload"    # [B

    .line 321
    const-string v0, "VmsSubscriberService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publishing a message for layer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    .line 325
    invoke-virtual {v0, p1, p2}, Lcom/android/car/hal/VmsHalService;->getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;

    move-result-object v0

    .line 327
    .local v0, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/vms/IVmsSubscriberClient;

    .line 329
    .local v2, "subscriber":Landroid/car/vms/IVmsSubscriberClient;
    :try_start_0
    invoke-interface {v2, p1, p3}, Landroid/car/vms/IVmsSubscriberClient;->onVmsMessageReceived(Landroid/car/vms/VmsLayer;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    goto :goto_1

    .line 330
    :catch_0
    move-exception v3

    .line 333
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "VmsSubscriberService"

    const-string v5, "onVmsMessageReceived calling failed: "

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v2    # "subscriber":Landroid/car/vms/IVmsSubscriberClient;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method public onLayersAvaiabilityChange(Landroid/car/vms/VmsAvailableLayers;)V
    .locals 6
    .param p1, "availableLayers"    # Landroid/car/vms/VmsAvailableLayers;

    .line 341
    const-string v0, "VmsSubscriberService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publishing layers availability change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-virtual {v1}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->getListeners()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 347
    .local v0, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/vms/IVmsSubscriberClient;

    .line 349
    .local v2, "subscriber":Landroid/car/vms/IVmsSubscriberClient;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/car/vms/IVmsSubscriberClient;->onLayersAvailabilityChanged(Landroid/car/vms/VmsAvailableLayers;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_1

    .line 350
    :catch_0
    move-exception v3

    .line 353
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "VmsSubscriberService"

    const-string v5, "onLayersAvailabilityChanged calling failed: "

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v2    # "subscriber":Landroid/car/vms/IVmsSubscriberClient;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-virtual {v0}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->release()V

    .line 211
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/VmsHalService;->removeSubscriberListener(Lcom/android/car/hal/VmsHalService$VmsHalSubscriberListener;)V

    .line 212
    return-void
.end method

.method public removeVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 253
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 254
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p1, p2}, Lcom/android/car/hal/VmsHalService;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 296
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 297
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/VmsHalService;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 230
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/VmsHalService;->containsSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mSubscribersManager:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->remove(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Subscriber has active subscriptions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 278
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 279
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mSubscriberServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService;->mHal:Lcom/android/car/hal/VmsHalService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/car/hal/VmsHalService;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
