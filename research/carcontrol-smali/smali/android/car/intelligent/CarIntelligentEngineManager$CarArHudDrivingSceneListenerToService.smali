.class Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;
.super Landroid/car/intelligent/ICarArHudDrivingSceneListener$Stub;
.source "CarIntelligentEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/intelligent/CarIntelligentEngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarArHudDrivingSceneListenerToService"
.end annotation


# instance fields
.field private final mCarIntelEngMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/intelligent/CarIntelligentEngineManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/intelligent/CarIntelligentEngineManager;)V
    .locals 1

    .line 477
    invoke-direct {p0}, Landroid/car/intelligent/ICarArHudDrivingSceneListener$Stub;-><init>()V

    .line 478
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;->mCarIntelEngMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCarArHudDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarArHudDrivingSceneChanged() event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarIntelligentEngine"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager$CarArHudDrivingSceneListenerToService;->mCarIntelEngMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/intelligent/CarIntelligentEngineManager;

    if-eqz v0, :cond_0

    .line 486
    invoke-static {v0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->access$200(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V

    :cond_0
    return-void
.end method
