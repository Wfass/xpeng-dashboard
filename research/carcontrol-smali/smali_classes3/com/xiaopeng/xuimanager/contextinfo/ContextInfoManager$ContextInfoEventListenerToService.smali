.class Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;
.super Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;
.source "ContextInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextInfoEventListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;)V
    .locals 1

    .line 2344
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;-><init>()V

    .line 2345
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onATLSStatus(II)V
    .locals 1

    .line 2567
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2569
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleATLSStatus(II)V

    :cond_0
    return-void
.end method

.method public onAccelerationEvent(F)V
    .locals 1

    .line 2359
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2361
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$4100(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;F)V

    :cond_0
    return-void
.end method

.method public onAngularVelocityEvent(F)V
    .locals 1

    .line 2367
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2369
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleAngularVelocityEvent(F)V

    :cond_0
    return-void
.end method

.method public onAutoBrightness(II)V
    .locals 1

    .line 2527
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2529
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleAutoBrightness(II)V

    :cond_0
    return-void
.end method

.method public onAvpWifi(I)V
    .locals 1

    .line 2543
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2545
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleAvpWifi(I)V

    :cond_0
    return-void
.end method

.method public onBcmLightMode(II)V
    .locals 1

    .line 2615
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2617
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleLightmode(II)V

    :cond_0
    return-void
.end method

.method public onBeltStatus(I)V
    .locals 1

    .line 2575
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2577
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleBeltStatus(I)V

    :cond_0
    return-void
.end method

.method public onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V
    .locals 1

    .line 2431
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2433
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V

    :cond_0
    return-void
.end method

.method public onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V
    .locals 1

    .line 2439
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2441
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V

    :cond_0
    return-void
.end method

.method public onCarSpeed(F)V
    .locals 1

    .line 2511
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2513
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleCarSpeed(F)V

    :cond_0
    return-void
.end method

.method public onChargingGunStatus(I)V
    .locals 1

    .line 2591
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2593
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleChargingGunStatus(I)V

    :cond_0
    return-void
.end method

.method public onCommonEvent(II)V
    .locals 3

    .line 2350
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    .line 2351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommonEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextInfoManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 2353
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$4000(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    :cond_0
    return-void
.end method

.method public onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2457
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V

    :cond_0
    return-void
.end method

.method public onDeviceChargeStatus(I)V
    .locals 1

    .line 2599
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2601
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleDeviceChargeStatus(I)V

    :cond_0
    return-void
.end method

.method public onDriverSeatStatus(I)V
    .locals 1

    .line 2607
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2609
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleDriverSeatStatus(I)V

    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 1

    .line 2663
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2665
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$4200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    :cond_0
    return-void
.end method

.method public onGearChanged(I)V
    .locals 1

    .line 2503
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2505
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleGearStatus(I)V

    :cond_0
    return-void
.end method

.method public onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V
    .locals 1

    .line 2407
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2409
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V

    :cond_0
    return-void
.end method

.method public onIGStatus(I)V
    .locals 1

    .line 2519
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2521
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleIGStatus(I)V

    :cond_0
    return-void
.end method

.method public onLLUStatus(II)V
    .locals 1

    .line 2559
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2561
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleLLUStatus(II)V

    :cond_0
    return-void
.end method

.method public onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V
    .locals 1

    .line 2423
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2425
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V

    :cond_0
    return-void
.end method

.method public onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V
    .locals 1

    .line 2463
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2465
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V

    :cond_0
    return-void
.end method

.method public onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2377
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V

    :cond_0
    return-void
.end method

.method public onMsgEvent(I)V
    .locals 1

    .line 2487
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2489
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleMsgEvent(I)V

    :cond_0
    return-void
.end method

.method public onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V
    .locals 1

    .line 2391
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2393
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V

    :cond_0
    return-void
.end method

.method public onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V
    .locals 1

    .line 2399
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2401
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V

    :cond_0
    return-void
.end method

.method public onNavigationEnable(Z)V
    .locals 1

    .line 2479
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2481
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleNavigationEnableEvent(Z)V

    :cond_0
    return-void
.end method

.method public onNavigationInfo(Ljava/lang/String;)V
    .locals 1

    .line 2471
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2473
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleNavigationInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPoiEvent(Ljava/lang/String;)V
    .locals 1

    .line 2415
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2417
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handlePoiInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPowerAction(I)V
    .locals 1

    .line 2583
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2585
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handlePowerAction(I)V

    :cond_0
    return-void
.end method

.method public onPowerOffCount(I)V
    .locals 1

    .line 2639
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2641
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handlePowerOffCount(I)V

    :cond_0
    return-void
.end method

.method public onPsdMoto(I)V
    .locals 1

    .line 2631
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2633
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handlePsdMoto(I)V

    :cond_0
    return-void
.end method

.method public onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V
    .locals 1

    .line 2383
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V

    :cond_0
    return-void
.end method

.method public onRemoteCommand(I)V
    .locals 1

    .line 2551
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2553
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleRemoteCommand(I)V

    :cond_0
    return-void
.end method

.method public onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V
    .locals 1

    .line 2447
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2449
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V

    :cond_0
    return-void
.end method

.method public onVpmEvent(II)V
    .locals 1

    .line 2623
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2625
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleVpmEvent(II)V

    :cond_0
    return-void
.end method

.method public onWeatherInfo(Ljava/lang/String;)V
    .locals 1

    .line 2495
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2497
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleWeatherInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onXPilotWarning(II)V
    .locals 1

    .line 2535
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextInfoEventListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    if-eqz v0, :cond_0

    .line 2537
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->handleXPilotWarnings(II)V

    :cond_0
    return-void
.end method
