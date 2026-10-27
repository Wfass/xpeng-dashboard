.class public Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
.super Ljava/lang/Object;
.source "CarRebootManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;,
        Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$CarRebootManagerHolder;
    }
.end annotation


# static fields
.field private static final CHECK_REBOOT_POLICY_INTERVAL:J = 0x927c0L

.field private static final OTA_STATE_IDLE:Ljava/lang/String; = "0"

.field private static final OTA_STATE_PROPERTY:Ljava/lang/String; = "sys.xiaopeng.ota.state"

.field private static final OTA_STATE_RUNNING:Ljava/lang/String; = "1"

.field private static final SCREEN_RUNTIME:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "CarRebootManager"


# instance fields
.field private mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mHandler:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

.field private mIsCarCharging:Z

.field private mIsCarLock:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 79
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$2;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 101
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$3;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->isRebootPolicyMeet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->isInCharging()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->isCarLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mHandler:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->tryToRebootPolicyTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
    .param p1, "x1"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->handleBcmATWS(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
    .param p1, "x1"    # I

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->handleChargeStatus(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mIsCarCharging:Z

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mIsCarCharging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->cancelRebootPolicyTask()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mIsCarLock:Z

    return v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mIsCarLock:Z

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Landroid/app/AlarmManager$OnAlarmListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private addCarListener()V
    .locals 2

    .line 263
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 264
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 265
    return-void
.end method

.method private cancelRebootPolicyTask()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mHandler:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$6;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;->optPost(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
    .locals 1

    .line 219
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$CarRebootManagerHolder;->access$1300()Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    move-result-object v0

    return-object v0
.end method

.method private handleBcmATWS(I)V
    .locals 2
    .param p1, "status"    # I

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mHandler:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;->optPost(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method private handleChargeStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mHandler:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;->optPost(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method private isCarLock()Z
    .locals 6

    .line 238
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 239
    .local v0, "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getAtwsState()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarRebootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCarLock-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v1
.end method

.method private isInCharging()Z
    .locals 6

    .line 251
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_vcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    .line 252
    .local v0, "carVcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargeStatus()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarRebootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInCharging-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v1
.end method

.method private isInOTA()Z
    .locals 2

    .line 169
    const-string v0, "sys.xiaopeng.ota.state"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "state":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isRebootPolicyMeet()Z
    .locals 8

    .line 205
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->isInCharging()Z

    move-result v0

    .line 206
    .local v0, "isInCharging":Z
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->isCarLock()Z

    move-result v1

    .line 207
    .local v1, "isCarLock":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 208
    .local v2, "time":J
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->isInOTA()Z

    move-result v4

    .line 209
    .local v4, "isOTA":Z
    const-string v5, "CarRebootManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRebootPolicyMeet, isInCharging: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isCarLock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", isOTA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    if-nez v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method private tryToRebootPolicyTask()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mHandler:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;-><init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;->optPost(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 235
    return-void
.end method

.method public init()V
    .locals 4

    .line 223
    const-string v0, "persist.sys.xiaopeng.fo.reboot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 224
    .local v0, "policyEnable":Z
    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CarRebootManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 227
    new-instance v2, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mHandler:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

    .line 228
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 229
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->addCarListener()V

    .line 231
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method
