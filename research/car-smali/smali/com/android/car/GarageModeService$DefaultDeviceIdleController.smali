.class Lcom/android/car/GarageModeService$DefaultDeviceIdleController;
.super Lcom/android/car/DeviceIdleControllerWrapper;
.source "GarageModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/GarageModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDeviceIdleController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;
    }
.end annotation


# instance fields
.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mMaintenanceActivityListener:Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 386
    invoke-direct {p0}, Lcom/android/car/DeviceIdleControllerWrapper;-><init>()V

    .line 388
    new-instance v0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;-><init>(Lcom/android/car/GarageModeService$DefaultDeviceIdleController;Lcom/android/car/GarageModeService$1;)V

    iput-object v0, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;->mMaintenanceActivityListener:Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/GarageModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/GarageModeService$1;

    .line 386
    invoke-direct {p0}, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;-><init>()V

    return-void
.end method


# virtual methods
.method public startLocked()Z
    .locals 4

    .line 393
    const-string v0, "deviceidle"

    .line 394
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, "active":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    iget-object v2, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;->mMaintenanceActivityListener:Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;

    .line 398
    invoke-interface {v1, v2}, Landroid/os/IDeviceIdleController;->registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 401
    goto :goto_0

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/car/GarageModeService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to register listener with DeviceIdleController"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public stopTracking()V
    .locals 3

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;->mMaintenanceActivityListener:Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/car/GarageModeService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fail to unregister listener."

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
