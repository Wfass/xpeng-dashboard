.class Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;
.super Ljava/lang/Object;
.source "CarAutoWakeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mListener:Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Ljava/lang/String;Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    .line 300
    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p3, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mListener:Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    .line 302
    invoke-interface {p3}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mBinder:Landroid/os/IBinder;

    .line 303
    iput-object p2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mPackageName:Ljava/lang/String;

    .line 305
    :try_start_0
    iget-object p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    nop

    .line 310
    return-void

    .line 306
    :catch_0
    move-exception p1

    .line 307
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

    const-string v1, "CarAutoWakeService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarNotConnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$2000(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;)Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;

    .line 295
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mListener:Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 318
    const-string v0, "CarAutoWakeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mListener:Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    invoke-static {v0, v1, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$1900(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;Ljava/lang/String;Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V

    .line 320
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client{mBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mListener:Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$Client;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
