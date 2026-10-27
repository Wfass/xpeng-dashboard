.class Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
.super Ljava/lang/Object;
.source "CarUxRestrictionsManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarUxRestrictionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UxRestrictionsClient"
.end annotation


# instance fields
.field private final listener:Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

.field private final listenerBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/CarUxRestrictionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/car/CarUxRestrictionsManagerService;Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    .locals 0
    .param p2, "l"    # Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    .line 235
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listener:Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    .line 237
    invoke-interface {p2}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 231
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 246
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-static {v1}, Lcom/android/car/CarUxRestrictionsManagerService;->access$100(Lcom/android/car/CarUxRestrictionsManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchEventToClients(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1
    .param p1, "event"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 267
    if-nez p1, :cond_0

    .line 268
    return-void

    .line 271
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listener:Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    invoke-interface {v0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 277
    :goto_0
    return-void
.end method

.method public isHoldingBinder(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 258
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
