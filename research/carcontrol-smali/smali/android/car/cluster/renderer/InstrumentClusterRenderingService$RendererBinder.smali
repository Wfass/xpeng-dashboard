.class Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;
.super Landroid/car/cluster/renderer/IInstrumentCluster$Stub;
.source "InstrumentClusterRenderingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/cluster/renderer/InstrumentClusterRenderingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererBinder"
.end annotation


# instance fields
.field private final mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

.field final synthetic this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;


# direct methods
.method constructor <init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;Landroid/car/cluster/renderer/NavigationRenderer;)V
    .locals 0

    .line 498
    iput-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-direct {p0}, Landroid/car/cluster/renderer/IInstrumentCluster$Stub;-><init>()V

    .line 499
    iput-object p2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

    return-void
.end method

.method static synthetic access$000(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;)Landroid/car/cluster/renderer/NavigationRenderer;
    .locals 0

    .line 495
    iget-object p0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

    return-object p0
.end method

.method static synthetic lambda$setNavigationContextOwner$0(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)V
    .locals 0

    .line 515
    invoke-static {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$400(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)V

    return-void
.end method


# virtual methods
.method public getNavigationService()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    new-instance v0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;

    iget-object v1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    iget-object v2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

    invoke-direct {v0, v1, v2}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;-><init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;Landroid/car/cluster/renderer/NavigationRenderer;)V

    return-object v0
.end method

.method public synthetic lambda$onKeyEvent$1$InstrumentClusterRenderingService$RendererBinder(Landroid/view/KeyEvent;)V
    .locals 1

    .line 520
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-virtual {v0, p1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->onKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$300(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$1Ng5pVKEq74yIZbm_mkiu7IlQFc;

    invoke-direct {v1, p0, p1}, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$1Ng5pVKEq74yIZbm_mkiu7IlQFc;-><init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setNavigationContextOwner(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CAR.L.CLUSTER"

    const/4 v1, 0x3

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.L.CLUSTER"

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating navigation ownership to uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$100(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object v1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    new-instance v2, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    iget-object v3, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-virtual {v3}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;-><init>(IILandroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$202(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;)Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    .line 514
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iget-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {p1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$300(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$RendererBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    new-instance v0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$AgWDXsUL0vXE2aLA5rmfEJITOQw;

    invoke-direct {v0, p2}, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$RendererBinder$AgWDXsUL0vXE2aLA5rmfEJITOQw;-><init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 514
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
