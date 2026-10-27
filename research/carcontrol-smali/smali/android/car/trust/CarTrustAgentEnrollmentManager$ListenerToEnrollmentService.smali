.class final Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;
.super Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/CarTrustAgentEnrollmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerToEnrollmentService"
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

    .line 446
    invoke-direct {p0}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;-><init>()V

    .line 447
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 5

    .line 470
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    .line 475
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x5

    new-instance v3, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 474
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    .line 456
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    .line 461
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, p2}, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 460
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEscrowTokenActiveStateChanged(JZ)V
    .locals 4

    .line 519
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 525
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "handle"

    .line 526
    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "active"

    .line 527
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 528
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 529
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEscrowTokenAdded(J)V
    .locals 4

    .line 485
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 491
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "handle"

    .line 492
    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 493
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 494
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEscrowTokenRemoved(J)V
    .locals 4

    .line 502
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 508
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "handle"

    .line 509
    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 510
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 511
    invoke-static {v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
