.class public Lcom/xiaopeng/xuiservice/device/DeviceCarService;
.super Ljava/lang/Object;
.source "DeviceCarService.java"


# static fields
.field private static RESTART_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeviceCarService"

.field private static sDeviceCarService:Lcom/xiaopeng/xuiservice/device/DeviceCarService;


# instance fields
.field private mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mContext:Landroid/content/Context;

.field private mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->sDeviceCarService:Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    .line 22
    const-string v0, "sys.xiaopeng.deviceCarService.igonreboot"

    sput-object v0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->RESTART_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/device/DeviceCarService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/device/DeviceCarService$1;-><init>(Lcom/xiaopeng/xuiservice/device/DeviceCarService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 77
    new-instance v0, Lcom/xiaopeng/xuiservice/device/DeviceCarService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/device/DeviceCarService$2;-><init>(Lcom/xiaopeng/xuiservice/device/DeviceCarService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 38
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/device/DeviceCarService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/device/DeviceCarService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->handleMcuEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/device/DeviceCarService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/device/DeviceCarService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->handleBcmEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/device/DeviceCarService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    sget-object v0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->sDeviceCarService:Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->sDeviceCarService:Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->sDeviceCarService:Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->sDeviceCarService:Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    return-object v0
.end method

.method private handleBcmEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 88
    const-string v0, "DeviceCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBcmEvent val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401d89

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    nop

    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method private handleMcuEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 53
    :try_start_0
    const-string v0, "DeviceCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMcuEvent val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 59
    sget-object v1, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->RESTART_TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    nop

    .line 74
    .end local v0    # "state":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceCarService"

    const-string v2, "handleMcuEvent failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public getCarAngle(I)I
    .locals 3
    .param p1, "type"    # I

    .line 141
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getRseAngle()I

    move-result v0

    return v0

    .line 144
    :cond_0
    const-string v0, "DeviceCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarAngle type error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, -0x1

    return v0
.end method

.method public getCarFold(I)I
    .locals 3
    .param p1, "type"    # I

    .line 164
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->getRseFold()I

    move-result v0

    return v0

    .line 167
    :cond_0
    const-string v0, "DeviceCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarFold type error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, -0x1

    return v0
.end method

.method public getRseAngle()I
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getSfmAnglePos()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceCarService"

    const-string v2, "getRseAngle failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getRseFold()I
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getSfmCtrlState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceCarService"

    const-string v2, "getRseFold failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public setCarAngle(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "angle"    # I

    .line 121
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 122
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->setRseAngle(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public setCarFold(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "state"    # I

    .line 101
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 102
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->setRseFold(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public setRseAngle(I)V
    .locals 3
    .param p1, "angle"    # I

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setSfmAnglePos(I)V

    .line 133
    const-string v0, "DeviceCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRseAngle angle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceCarService"

    const-string v2, "setRseAngle failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public setRseFold(I)V
    .locals 3
    .param p1, "state"    # I

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setSfmCtrl(I)V

    .line 113
    const-string v0, "DeviceCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRseFold state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceCarService"

    const-string v2, "setRseFold failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
