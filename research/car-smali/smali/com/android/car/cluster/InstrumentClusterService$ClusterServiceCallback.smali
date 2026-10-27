.class Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;
.super Landroid/car/cluster/renderer/IInstrumentClusterCallback$Stub;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/cluster/InstrumentClusterService;


# direct methods
.method private constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-direct {p0}, Landroid/car/cluster/renderer/IInstrumentClusterCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p2, "x1"    # Lcom/android/car/cluster/InstrumentClusterService$1;

    .line 479
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;-><init>(Lcom/android/car/cluster/InstrumentClusterService;)V

    return-void
.end method


# virtual methods
.method public setClusterActivityLaunchOptions(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "activityOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0, p1, p2}, Lcom/android/car/cluster/InstrumentClusterService;->access$1300(Lcom/android/car/cluster/InstrumentClusterService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 485
    return-void
.end method

.method public setClusterActivityState(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "clusterActivityState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$ClusterServiceCallback;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0, p1, p2}, Lcom/android/car/cluster/InstrumentClusterService;->access$1400(Lcom/android/car/cluster/InstrumentClusterService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    return-void
.end method
