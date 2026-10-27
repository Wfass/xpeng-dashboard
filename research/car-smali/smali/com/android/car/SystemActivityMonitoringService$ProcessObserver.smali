.class Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "SystemActivityMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/SystemActivityMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/SystemActivityMonitoringService;


# direct methods
.method private constructor <init>(Lcom/android/car/SystemActivityMonitoringService;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p2, "x1"    # Lcom/android/car/SystemActivityMonitoringService$1;

    .line 395
    invoke-direct {p0, p1}, Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;-><init>(Lcom/android/car/SystemActivityMonitoringService;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 398
    const-string v0, "CAR.AM"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/car/CarLog$NoLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "CAR.AM"

    const-string v1, "onForegroundActivitiesChanged uid %d pid %d fg %b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 401
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 400
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Lcom/android/car/CarLog$NoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    invoke-static {v0}, Lcom/android/car/SystemActivityMonitoringService;->access$500(Lcom/android/car/SystemActivityMonitoringService;)Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->access$600(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;IIZ)V

    .line 404
    return-void
.end method

.method public onProcessDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 408
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    invoke-static {v0}, Lcom/android/car/SystemActivityMonitoringService;->access$500(Lcom/android/car/SystemActivityMonitoringService;)Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->access$700(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;II)V

    .line 409
    return-void
.end method
