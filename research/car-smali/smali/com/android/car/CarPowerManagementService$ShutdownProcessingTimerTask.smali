.class Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;
.super Ljava/util/TimerTask;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownProcessingTimerTask"
.end annotation


# instance fields
.field private mCurrentCount:I

.field private final mExpirationCount:I

.field private final mShutdownWhenCompleted:Z

.field final synthetic this$0:Lcom/android/car/CarPowerManagementService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarPowerManagementService;ZI)V
    .locals 0
    .param p2, "shutdownWhenCompleted"    # Z
    .param p3, "expirationCount"    # I

    .line 1134
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1135
    iput-boolean p2, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mShutdownWhenCompleted:Z

    .line 1136
    iput p3, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mExpirationCount:I

    .line 1137
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mCurrentCount:I

    .line 1138
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarPowerManagementService;ZILcom/android/car/CarPowerManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p2, "x1"    # Z
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/car/CarPowerManagementService$1;

    .line 1129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;-><init>(Lcom/android/car/CarPowerManagementService;ZI)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1142
    iget v0, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mCurrentCount:I

    .line 1143
    iget v0, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mCurrentCount:I

    iget v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mExpirationCount:I

    if-le v0, v1, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    monitor-enter v0

    .line 1146
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$1900(Lcom/android/car/CarPowerManagementService;)V

    .line 1147
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$400(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;

    move-result-object v1

    .line 1148
    .local v1, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mShutdownWhenCompleted:Z

    invoke-static {v1, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$900(Lcom/android/car/CarPowerManagementService$PowerHandler;Z)V

    .line 1150
    .end local v1    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$2000(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/hal/PowerHalService;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/android/car/hal/PowerHalService;->sendShutdownPostpone(I)V

    .line 1153
    :goto_0
    return-void
.end method
