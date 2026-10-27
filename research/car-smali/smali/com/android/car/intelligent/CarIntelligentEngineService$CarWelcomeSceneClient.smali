.class Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;
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
    name = "CarWelcomeSceneClient"
.end annotation


# instance fields
.field private final listener:Landroid/car/intelligent/ICarSceneListener;

.field private final listenerBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/intelligent/CarIntelligentEngineService;


# direct methods
.method public constructor <init>(Lcom/android/car/intelligent/CarIntelligentEngineService;Landroid/car/intelligent/ICarSceneListener;)V
    .locals 0
    .param p2, "l"    # Landroid/car/intelligent/ICarSceneListener;

    .line 297
    iput-object p1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->this$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->listener:Landroid/car/intelligent/ICarSceneListener;

    .line 299
    invoke-interface {p2}, Landroid/car/intelligent/ICarSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->listenerBinder:Landroid/os/IBinder;

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;

    .line 293
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->listenerBinder:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 305
    const-string v0, "CarIntelligentEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder died "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->listenerBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->listenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 308
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->this$0:Lcom/android/car/intelligent/CarIntelligentEngineService;

    invoke-static {v0}, Lcom/android/car/intelligent/CarIntelligentEngineService;->access$200(Lcom/android/car/intelligent/CarIntelligentEngineService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public dispatchEventToClients(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/car/intelligent/CarSceneEvent;

    .line 327
    if-nez p1, :cond_0

    .line 328
    return-void

    .line 331
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->listener:Landroid/car/intelligent/ICarSceneListener;

    invoke-interface {v0, p1}, Landroid/car/intelligent/ICarSceneListener;->onWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CarIntelligentEngine"

    const-string v2, "Dispatch to listener failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public isHoldingBinder(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 318
    iget-object v0, p0, Lcom/android/car/intelligent/CarIntelligentEngineService$CarWelcomeSceneClient;->listenerBinder:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
