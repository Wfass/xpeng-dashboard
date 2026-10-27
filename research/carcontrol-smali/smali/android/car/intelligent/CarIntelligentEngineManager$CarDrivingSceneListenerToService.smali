.class Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;
.super Landroid/car/intelligent/ICarDrivingSceneListener$Stub;
.source "CarIntelligentEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/intelligent/CarIntelligentEngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarDrivingSceneListenerToService"
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

    .line 459
    invoke-direct {p0}, Landroid/car/intelligent/ICarDrivingSceneListener$Stub;-><init>()V

    .line 460
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;->mCarIntelEngMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCarDrivingSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarDrivingSceneChanged() event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarIntelligentEngine"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Landroid/car/intelligent/CarIntelligentEngineManager$CarDrivingSceneListenerToService;->mCarIntelEngMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/intelligent/CarIntelligentEngineManager;

    if-eqz v0, :cond_0

    .line 468
    invoke-static {v0, p1}, Landroid/car/intelligent/CarIntelligentEngineManager;->access$100(Landroid/car/intelligent/CarIntelligentEngineManager;Landroid/car/intelligent/CarSceneEvent;)V

    :cond_0
    return-void
.end method
