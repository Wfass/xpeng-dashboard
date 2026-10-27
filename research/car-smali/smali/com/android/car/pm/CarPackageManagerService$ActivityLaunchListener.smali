.class Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;
.super Ljava/lang/Object;
.source "CarPackageManagerService.java"

# interfaces
.implements Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/CarPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityLaunchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/pm/CarPackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/car/pm/CarPackageManagerService;)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/pm/CarPackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p2, "x1"    # Lcom/android/car/pm/CarPackageManagerService$1;

    .line 1149
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;-><init>(Lcom/android/car/pm/CarPackageManagerService;)V

    return-void
.end method


# virtual methods
.method public onActivityLaunch(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V
    .locals 1
    .param p1, "topTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 1153
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ActivityLaunchListener;->this$0:Lcom/android/car/pm/CarPackageManagerService;

    invoke-static {v0, p1}, Lcom/android/car/pm/CarPackageManagerService;->access$2700(Lcom/android/car/pm/CarPackageManagerService;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    .line 1154
    return-void
.end method
