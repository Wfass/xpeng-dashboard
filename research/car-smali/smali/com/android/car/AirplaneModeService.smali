.class public Lcom/android/car/AirplaneModeService;
.super Ljava/lang/Object;
.source "AirplaneModeService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;
.implements Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/AirplaneModeService$AirplaneModeHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_POWER_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "AirplaneModeService"


# instance fields
.field private mAirplaneModeHandler:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

.field private mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

.field private final mContext:Landroid/content/Context;

.field private mEnablePowerManager:Z

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPowerManagementService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carPowerManagementService"    # Lcom/android/car/CarPowerManagementService;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/AirplaneModeService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 63
    iput-object v0, p0, Lcom/android/car/AirplaneModeService;->mThread:Landroid/os/HandlerThread;

    .line 64
    iput-object v0, p0, Lcom/android/car/AirplaneModeService;->mAirplaneModeHandler:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/AirplaneModeService;->mEnablePowerManager:Z

    .line 71
    iput-object p1, p0, Lcom/android/car/AirplaneModeService;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/car/AirplaneModeService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 75
    iget-object v1, p0, Lcom/android/car/AirplaneModeService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/AirplaneModeService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 76
    invoke-virtual {v1}, Lcom/android/car/CarPowerManagementService;->isCarPowerManagerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AirplaneModeService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/AirplaneModeService;->mThread:Landroid/os/HandlerThread;

    .line 78
    iget-object v1, p0, Lcom/android/car/AirplaneModeService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v1, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    iget-object v2, p0, Lcom/android/car/AirplaneModeService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;-><init>(Lcom/android/car/AirplaneModeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/car/AirplaneModeService;->mAirplaneModeHandler:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/car/AirplaneModeService;->mAirplaneModeHandler:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/android/car/AirplaneModeService;->mEnablePowerManager:Z

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnablePowerManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/AirplaneModeService;->mEnablePowerManager:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/AirplaneModeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AirplaneModeService;

    .line 56
    iget-object v0, p0, Lcom/android/car/AirplaneModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AirplaneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AirplaneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/car/AirplaneModeService;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AirplaneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/car/AirplaneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/AirplaneModeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AirplaneModeService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/car/AirplaneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/AirplaneModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/AirplaneModeService;

    .line 56
    invoke-direct {p0}, Lcom/android/car/AirplaneModeService;->notifyPowerEventProcessingCompletion()V

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 160
    const-string v0, "AirplaneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 173
    const-string v0, "AirplaneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 165
    const-string v0, "AirplaneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 169
    const-string v0, "AirplaneModeService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method private notifyPowerEventProcessingCompletion()V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/android/car/AirplaneModeService;->mEnablePowerManager:Z

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "notifyPowerEventProcessingCompletion"

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/car/AirplaneModeService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v0, p0}, Lcom/android/car/CarPowerManagementService;->notifyPowerEventProcessingCompletion(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 102
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirplaneModeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 101
    .end local p1    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/AirplaneModeService;
    throw p1
.end method

.method public getWakeupTime()I
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/android/car/AirplaneModeService;->mEnablePowerManager:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/car/AirplaneModeService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v0, p0}, Lcom/android/car/CarPowerManagementService;->registerPowerEventListener(Lcom/android/car/CarPowerManagementService$PowerServiceEventListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/car/AirplaneModeService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v0, p0}, Lcom/android/car/CarPowerManagementService;->registerPowerEventProcessingHandler(Lcom/android/car/CarPowerManagementService$PowerEventProcessingHandler;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onPowerOn(Z)V
    .locals 2
    .param p1, "displayOn"    # Z

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerOn displayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/android/car/AirplaneModeService;->mEnablePowerManager:Z

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/car/AirplaneModeService;->mAirplaneModeHandler:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    invoke-virtual {v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->notifyPowerOn()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/car/AirplaneModeService;->mAirplaneModeHandler:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->notifyPowerOff(Z)V

    .line 129
    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepareShutdown(Z)J
    .locals 4
    .param p1, "shuttingDown"    # Z

    .line 107
    const-wide/16 v0, 0x0

    .line 109
    .local v0, "shutdownTime":J
    iget-boolean v2, p0, Lcom/android/car/AirplaneModeService;->mEnablePowerManager:Z

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/car/AirplaneModeService;->mAirplaneModeHandler:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    invoke-virtual {v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->getShutdownTime()J

    move-result-wide v0

    .line 111
    iget-object v2, p0, Lcom/android/car/AirplaneModeService;->mAirplaneModeHandler:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    invoke-virtual {v2, p1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->notifyPowerOff(Z)V

    .line 113
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareShutdown shuttingDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", shutdownTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V

    .line 115
    return-wide v0
.end method

.method public onShutdown()V
    .locals 1

    .line 138
    const-string v0, "onShutdown"

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onSleepEntry()V
    .locals 1

    .line 143
    const-string v0, "onSleepEntry"

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onSleepExit()V
    .locals 1

    .line 148
    const-string v0, "onSleepExit"

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    const-string v0, "release "

    invoke-direct {p0, v0}, Lcom/android/car/AirplaneModeService;->logi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/AirplaneModeService;
    throw v0
.end method
