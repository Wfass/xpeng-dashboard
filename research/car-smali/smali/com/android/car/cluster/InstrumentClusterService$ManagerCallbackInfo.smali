.class Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;
.super Ljava/lang/Object;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerCallbackInfo"
.end annotation


# instance fields
.field final callback:Landroid/car/cluster/IInstrumentClusterManagerCallback;

.field final deathRecipient:Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;


# direct methods
.method constructor <init>(Landroid/car/cluster/IInstrumentClusterManagerCallback;Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;)V
    .locals 0
    .param p1, "callback"    # Landroid/car/cluster/IInstrumentClusterManagerCallback;
    .param p2, "deathRecipient"    # Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;->callback:Landroid/car/cluster/IInstrumentClusterManagerCallback;

    .line 533
    iput-object p2, p0, Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackInfo;->deathRecipient:Lcom/android/car/cluster/InstrumentClusterService$ManagerCallbackDeathRecipient;

    .line 534
    return-void
.end method
