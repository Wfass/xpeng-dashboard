.class Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;
.super Landroid/car/cluster/IInstrumentClusterManagerService$Stub;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterManagerService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/cluster/InstrumentClusterService;


# direct methods
.method private constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-direct {p0}, Landroid/car/cluster/IInstrumentClusterManagerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p2, "x1"    # Lcom/android/car/cluster/InstrumentClusterService$1;

    .line 453
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;-><init>(Lcom/android/car/cluster/InstrumentClusterService;)V

    return-void
.end method


# virtual methods
.method public registerCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/cluster/IInstrumentClusterManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0, p1}, Lcom/android/car/cluster/InstrumentClusterService;->access$1200(Lcom/android/car/cluster/InstrumentClusterService;Landroid/car/cluster/IInstrumentClusterManagerCallback;)V

    .line 464
    return-void
.end method

.method public startClusterActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0, p1}, Lcom/android/car/cluster/InstrumentClusterService;->access$1100(Lcom/android/car/cluster/InstrumentClusterService;Landroid/content/Intent;)V

    .line 458
    return-void
.end method

.method public unregisterCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/car/cluster/IInstrumentClusterManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-interface {p1}, Landroid/car/cluster/IInstrumentClusterManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$1000(Lcom/android/car/cluster/InstrumentClusterService;Landroid/os/IBinder;)V

    .line 470
    return-void
.end method
