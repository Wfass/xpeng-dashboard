.class Lcom/android/car/CarInputService$2;
.super Ljava/lang/Object;
.source "CarInputService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarInputService;


# direct methods
.method constructor <init>(Lcom/android/car/CarInputService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarInputService;

    .line 121
    iput-object p1, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onServiceConnected$0(Lcom/android/car/CarInputService$2;)V
    .locals 2

    .line 132
    const-string v0, "CAR.INPUT"

    const-string v1, "Input service died. Trying to rebind..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/CarInputService;->access$202(Lcom/android/car/CarInputService;Landroid/car/input/ICarInputListener;)Landroid/car/input/ICarInputListener;

    .line 135
    iget-object v0, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    iget-object v1, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    invoke-static {v1}, Lcom/android/car/CarInputService;->access$400(Lcom/android/car/CarInputService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/CarInputService;->access$302(Lcom/android/car/CarInputService;Z)Z

    .line 136
    return-void
.end method

.method public static synthetic lambda$onServiceConnected$1(Lcom/android/car/CarInputService$2;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/car/-$$Lambda$CarInputService$2$cQbtFXOfXO9nl4cJAElRk4HVxAM;

    invoke-direct {v0, p0}, Lcom/android/car/-$$Lambda$CarInputService$2$cQbtFXOfXO9nl4cJAElRk4HVxAM;-><init>(Lcom/android/car/CarInputService$2;)V

    invoke-static {v0}, Lcom/android/car/CarServiceUtils;->runOnMainSync(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 128
    iget-object v0, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    invoke-static {p2}, Landroid/car/input/ICarInputListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/input/ICarInputListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/CarInputService;->access$202(Lcom/android/car/CarInputService;Landroid/car/input/ICarInputListener;)Landroid/car/input/ICarInputListener;

    .line 131
    :try_start_0
    new-instance v0, Lcom/android/car/-$$Lambda$CarInputService$2$0LsScQV_4nEzp7l4Stxzkpy00V4;

    invoke-direct {v0, p0}, Lcom/android/car/-$$Lambda$CarInputService$2$0LsScQV_4nEzp7l4Stxzkpy00V4;-><init>(Lcom/android/car/CarInputService$2;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.INPUT"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 144
    const-string v0, "CAR.INPUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/CarInputService;->access$202(Lcom/android/car/CarInputService;Landroid/car/input/ICarInputListener;)Landroid/car/input/ICarInputListener;

    .line 147
    iget-object v0, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    iget-object v1, p0, Lcom/android/car/CarInputService$2;->this$0:Lcom/android/car/CarInputService;

    invoke-static {v1}, Lcom/android/car/CarInputService;->access$400(Lcom/android/car/CarInputService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/CarInputService;->access$302(Lcom/android/car/CarInputService;Z)Z

    .line 148
    return-void
.end method
