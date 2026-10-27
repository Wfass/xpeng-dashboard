.class Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerManagerCallbackList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/car/hardware/power/ICarPowerStateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarPowerManagementService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarPowerManagementService;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPowerManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p2, "x1"    # Lcom/android/car/CarPowerManagementService$1;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;-><init>(Lcom/android/car/CarPowerManagementService;)V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 190
    const-string v0, "CAR.POWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/car/hardware/power/ICarPowerStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0, p1}, Lcom/android/car/CarPowerManagementService;->access$100(Lcom/android/car/CarPowerManagementService;Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 192
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 183
    check-cast p1, Landroid/car/hardware/power/ICarPowerStateListener;

    invoke-virtual {p0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->onCallbackDied(Landroid/car/hardware/power/ICarPowerStateListener;)V

    return-void
.end method
