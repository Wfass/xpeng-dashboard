.class final Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;
.super Landroid/car/trust/ICarTrustAgentBleCallback$Stub;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/CarTrustAgentEnrollmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerToBleService"
.end annotation


# instance fields
.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/trust/CarTrustAgentEnrollmentManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;)V
    .locals 1

    .line 536
    invoke-direct {p0}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;-><init>()V

    .line 537
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 572
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    .line 577
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 576
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 585
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    .line 590
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 589
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEnrollmentAdvertisingFailed()V
    .locals 3

    .line 559
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    .line 564
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 563
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEnrollmentAdvertisingStarted()V
    .locals 3

    .line 545
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    .line 550
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 549
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
