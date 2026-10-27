.class Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "InstrumentClusterService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerCallbackDeathRecipient"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/cluster/InstrumentClusterService;


# direct methods
.method constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 439
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 441
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$1000(Lcom/android/car/cluster/InstrumentClusterService;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 450
    :goto_0
    return-void
.end method
