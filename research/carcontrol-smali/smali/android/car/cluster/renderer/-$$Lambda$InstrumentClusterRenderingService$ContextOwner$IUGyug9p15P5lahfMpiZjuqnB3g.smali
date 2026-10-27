.class public final synthetic Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$IUGyug9p15P5lahfMpiZjuqnB3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

.field public final synthetic f$1:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor <init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$IUGyug9p15P5lahfMpiZjuqnB3g;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    iput-object p2, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$IUGyug9p15P5lahfMpiZjuqnB3g;->f$1:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$IUGyug9p15P5lahfMpiZjuqnB3g;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    iget-object v1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$ContextOwner$IUGyug9p15P5lahfMpiZjuqnB3g;->f$1:Landroid/content/pm/PackageManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->lambda$new$0$InstrumentClusterRenderingService$ContextOwner(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
