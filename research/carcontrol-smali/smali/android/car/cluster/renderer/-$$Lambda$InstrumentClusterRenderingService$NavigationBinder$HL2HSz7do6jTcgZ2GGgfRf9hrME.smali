.class public final synthetic Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$HL2HSz7do6jTcgZ2GGgfRf9hrME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$HL2HSz7do6jTcgZ2GGgfRf9hrME;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$HL2HSz7do6jTcgZ2GGgfRf9hrME;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;

    invoke-virtual {v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->lambda$getInstrumentClusterInfo$1$InstrumentClusterRenderingService$NavigationBinder()Landroid/car/navigation/CarNavigationInstrumentCluster;

    move-result-object v0

    return-object v0
.end method
