.class Lcom/android/car/CarConditionService$Client;
.super Ljava/lang/Object;
.source "CarConditionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarConditionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final mCallbackBinder:Landroid/os/IBinder;

.field final mListener:Landroid/car/hardware/condition/ICarConditionEventListener;

.field final pid:I

.field final processName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/car/CarConditionService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/car/CarConditionService;Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .locals 3
    .param p2, "listener"    # Landroid/car/hardware/condition/ICarConditionEventListener;

    .line 269
    iput-object p1, p0, Lcom/android/car/CarConditionService$Client;->this$0:Lcom/android/car/CarConditionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/android/car/CarConditionService$Client;->mListener:Landroid/car/hardware/condition/ICarConditionEventListener;

    .line 271
    invoke-interface {p2}, Landroid/car/hardware/condition/ICarConditionEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarConditionService$Client;->mCallbackBinder:Landroid/os/IBinder;

    .line 272
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarConditionService$Client;->pid:I

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarConditionService$Client;->uid:I

    .line 274
    invoke-static {p1}, Lcom/android/car/CarConditionService;->access$100(Lcom/android/car/CarConditionService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/car/CarConditionService$Client;->pid:I

    iget v2, p0, Lcom/android/car/CarConditionService$Client;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarConditionService$Client;->processName:Ljava/lang/String;

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarConditionService$Client;->mCallbackBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {p1}, Lcom/android/car/CarConditionService;->access$200(Lcom/android/car/CarConditionService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/CarConditionService$Client;->mCallbackBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/car/CarConditionService$Client;->this$0:Lcom/android/car/CarConditionService;

    invoke-static {v0}, Lcom/android/car/CarConditionService;->access$300(Lcom/android/car/CarConditionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarConditionService$Client;->this$0:Lcom/android/car/CarConditionService;

    iget-object v2, p0, Lcom/android/car/CarConditionService$Client;->mCallbackBinder:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/car/CarConditionService;->access$400(Lcom/android/car/CarConditionService;Landroid/os/IBinder;)V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getListener()Landroid/car/hardware/condition/ICarConditionEventListener;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/car/CarConditionService$Client;->mListener:Landroid/car/hardware/condition/ICarConditionEventListener;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/car/CarConditionService$Client;->mCallbackBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 292
    iget-object v0, p0, Lcom/android/car/CarConditionService$Client;->this$0:Lcom/android/car/CarConditionService;

    invoke-static {v0}, Lcom/android/car/CarConditionService;->access$200(Lcom/android/car/CarConditionService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarConditionService$Client;->mCallbackBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method
