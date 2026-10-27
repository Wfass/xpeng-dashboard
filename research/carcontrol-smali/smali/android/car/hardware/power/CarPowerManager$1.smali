.class Landroid/car/hardware/power/CarPowerManager$1;
.super Landroid/car/hardware/power/ICarPowerStateListener$Stub;
.source "CarPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/power/CarPowerManager;->setServiceForListenerLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/hardware/power/CarPowerManager;

.field final synthetic val$useCompletion:Z


# direct methods
.method constructor <init>(Landroid/car/hardware/power/CarPowerManager;Z)V
    .locals 0

    .line 597
    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    iput-boolean p2, p0, Landroid/car/hardware/power/CarPowerManager$1;->val$useCompletion:Z

    invoke-direct {p0}, Landroid/car/hardware/power/ICarPowerStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    iget-boolean v0, p0, Landroid/car/hardware/power/CarPowerManager$1;->val$useCompletion:Z

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v0}, Landroid/car/hardware/power/CarPowerManager;->access$300(Landroid/car/hardware/power/CarPowerManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 605
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v1, p1}, Landroid/car/hardware/power/CarPowerManager;->access$400(Landroid/car/hardware/power/CarPowerManager;I)V

    .line 606
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v1}, Landroid/car/hardware/power/CarPowerManager;->access$500(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    move-result-object v1

    .line 607
    iget-object v2, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v2}, Landroid/car/hardware/power/CarPowerManager;->access$600(Landroid/car/hardware/power/CarPowerManager;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 608
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-interface {v1, p1, v2}, Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;->onStateChanged(ILjava/util/concurrent/CompletableFuture;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 608
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 614
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v0}, Landroid/car/hardware/power/CarPowerManager;->access$300(Landroid/car/hardware/power/CarPowerManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 615
    :try_start_2
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v1}, Landroid/car/hardware/power/CarPowerManager;->access$700(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    move-result-object v1

    .line 616
    iget-object v2, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v2, p1}, Landroid/car/hardware/power/CarPowerManager;->access$800(Landroid/car/hardware/power/CarPowerManager;I)V

    .line 617
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    invoke-interface {v1, p1}, Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;->onStateChanged(I)V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 617
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
