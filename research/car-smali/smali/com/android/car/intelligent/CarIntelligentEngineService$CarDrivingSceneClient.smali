.class Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;
.super Ljava/lang/Object;
.source "CarIntelligentEngineService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/intelligent/CarIntelligentEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarDrivingSceneClient"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mListener:Landroid/car/intelligent/ICarDrivingSceneListener;

.field final synthetic this$0:Lcom/android/car/intelligent/CarIntelligentEngineService;


# direct methods
.method public constructor <init>(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/ICarDrivingSceneListener;)V
    .locals 2
    .param p2, "l"    # Landroid/car/intelligent/ICarDrivingSceneListener;

    .line 344
    iput-object p1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->this$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->mListener:Landroid/car/intelligent/ICarDrivingSceneListener;

    .line 346
    invoke-interface {p2}, Landroid/car/intelligent/ICarDrivingSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->mBinder:Landroid/os/IBinder;

    .line 348
    :try_start_0
    iget-object p1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    nop

    .line 353
    return-void

    .line 349
    :catch_0
    move-exception p1

    .line 350
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death for recipient. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarIntelligentEngine"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarNotConnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;

    .line 340
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;)Landroid/car/intelligent/ICarDrivingSceneListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;

    .line 340
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->mListener:Landroid/car/intelligent/ICarDrivingSceneListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 358
    const-string v0, "CarIntelligentEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder died "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 361
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->this$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

    iget-object v1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarDrivingSceneClient;->mListener:Landroid/car/intelligent/ICarDrivingSceneListener;

    invoke-virtual {v0, v1}, Lcom/android/car/intelligent/CarIntelligentEngineService;->unregisterCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V

    .line 362
    return-void
.end method
