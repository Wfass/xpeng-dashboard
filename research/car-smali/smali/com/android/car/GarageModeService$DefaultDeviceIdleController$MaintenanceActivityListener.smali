.class final Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;
.super Landroid/os/IMaintenanceActivityListener$Stub;
.source "GarageModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/GarageModeService$DefaultDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MaintenanceActivityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/GarageModeService$DefaultDeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/car/GarageModeService$DefaultDeviceIdleController;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;->this$0:Lcom/android/car/GarageModeService$DefaultDeviceIdleController;

    invoke-direct {p0}, Landroid/os/IMaintenanceActivityListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/GarageModeService$DefaultDeviceIdleController;Lcom/android/car/GarageModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/GarageModeService$DefaultDeviceIdleController;
    .param p2, "x1"    # Lcom/android/car/GarageModeService$1;

    .line 417
    invoke-direct {p0, p1}, Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;-><init>(Lcom/android/car/GarageModeService$DefaultDeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public onMaintenanceActivityChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .line 420
    iget-object v0, p0, Lcom/android/car/GarageModeService$DefaultDeviceIdleController$MaintenanceActivityListener;->this$0:Lcom/android/car/GarageModeService$DefaultDeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/car/GarageModeService$DefaultDeviceIdleController;->setMaintenanceActivity(Z)V

    .line 421
    return-void
.end method
