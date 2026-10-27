.class Lcom/android/car/CarDrivingStateService$DrivingStateClient;
.super Ljava/lang/Object;
.source "CarDrivingStateService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarDrivingStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrivingStateClient"
.end annotation


# instance fields
.field private final listener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

.field private final listenerBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/CarDrivingStateService;


# direct methods
.method public constructor <init>(Lcom/android/car/CarDrivingStateService;Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V
    .locals 0
    .param p2, "l"    # Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    .line 233
    iput-object p1, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->this$0:Lcom/android/car/CarDrivingStateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->listener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    .line 235
    invoke-interface {p2}, Landroid/car/drivingstate/ICarDrivingStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->listenerBinder:Landroid/os/IBinder;

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarDrivingStateService$DrivingStateClient;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarDrivingStateService$DrivingStateClient;

    .line 229
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->listenerBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->listenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 244
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->this$0:Lcom/android/car/CarDrivingStateService;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->this$0:Lcom/android/car/CarDrivingStateService;

    invoke-static {v1}, Lcom/android/car/CarDrivingStateService;->access$100(Lcom/android/car/CarDrivingStateService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchEventToClients(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 265
    if-nez p1, :cond_0

    .line 266
    return-void

    .line 269
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->listener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    invoke-interface {v0, p1}, Landroid/car/drivingstate/ICarDrivingStateChangeListener;->onDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 275
    :goto_0
    return-void
.end method

.method public isHoldingBinder(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 256
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->listenerBinder:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
