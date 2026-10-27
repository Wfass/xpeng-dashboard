.class public Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;
.super Ljava/lang/Object;
.source "DataCompareWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataCompareWriter"


# instance fields
.field private aDriveSystemViewModel:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

.field private atlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

.field private avasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

.field private carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field private lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

.field private mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private meterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field private mirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

.field private vcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private windowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

.field private xpuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->initViewModel()V

    return-void
.end method

.method private getData()Ljava/lang/String;
    .locals 7

    const-string v0, "isSupportAirSuspension"

    .line 105
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "auto_self_check"

    .line 108
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->isAutoSelfCheck()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSupportWiperRepair"

    .line 109
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "front_wiper_repair"

    .line 110
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperRepairMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "isSupportRearWiper"

    .line 112
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "rear_wiper_repair"

    .line 113
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getRearWiperRepairMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "as_repair"

    .line 116
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionRepairMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "isSupportLockUnLockRspSep"

    .line 118
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "unlock_response_feedback"

    .line 119
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getUnLockResponseNew()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "lock_response_feedback"

    .line 120
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLockResponseNew()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const-string v2, "lock_unlock_response_feedback"

    .line 122
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getUnlockResponse()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "isSupportDhc"

    .line 124
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "dhc_sw"

    .line 125
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->windowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isAutoDoorHandleEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "isSupportPollingLock"

    .line 127
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "near_unlock_sw"

    .line 128
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getNearUnlock()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "leave_lock_sw"

    .line 129
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLeaveAutoLock()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    const-string v2, "isSupportWelcomeMode"

    .line 131
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "drv_welcome_mode"

    .line 132
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isWelcomeModeEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    const-string v2, "isSupportPsnWelcomeMode"

    .line 134
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "psn_welcome_mode"

    .line 135
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnWelcomeEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_7
    const-string v2, "isSupportAsWelcomeMode"

    .line 137
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "as_welcome_mode"

    .line 138
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isAirSuspensionWelcomeEnable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_8
    const-string v2, "isSupportRearSeatWelcomeMode"

    .line 140
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "rear_welcome_mode"

    .line 141
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRearSeatWelcomeEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    const-string v2, "isSupportCarpetLightWelcomeMode"

    .line 143
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "carpet_light_welcome"

    .line 144
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getCarpetLightWelcomeMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_a
    const-string v2, "isSupportPollingLightWelcomeMode"

    .line 146
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "polling_light_welcome"

    .line 147
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getPollingLightWelcomeMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_b
    const-string v2, "isSupportBootSoundEffect"

    .line 149
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_e

    const-string/jumbo v2, "welcome_sound_sw"

    .line 150
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->avasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootSoundEffect()I

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_1

    :cond_c
    move v5, v3

    :goto_1
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "welcome_sound_item"

    .line 151
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->avasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootSoundEffect()I

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->avasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootEffectBeforeSw()I

    move-result v5

    goto :goto_2

    :cond_d
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->avasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getBootSoundEffect()I

    move-result v5

    :goto_2
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_e
    const-string v2, "central_lock_sw"

    .line 153
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->windowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isCentralLocked()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "parking_auto_unlock"

    .line 154
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getParkingAutoUnlock()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSupportChildLock"

    .line 155
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "left_child_lock"

    .line 156
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isLeftChildLocked()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "right_child_lock"

    .line 157
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isRightChildLocked()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_f
    const-string v2, "door_key_item"

    .line 159
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->meterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorKeyForCustomerValue()Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "window_lock_sw"

    .line 160
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->windowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isWindowLockActive()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSupportAutoCloseWin"

    .line 161
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "lock_auto_win_close"

    .line 162
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->windowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getAutoWindowLockSw()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_10
    const-string v2, "high_speed_auto_win_close"

    .line 164
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->windowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->isHighSpdCloseWinEnabled()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "auto_wiper_sensitivity"

    .line 165
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperIntervalValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->toSensitivityBcmCmd()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "isSupportTrunkSetPosition"

    .line 166
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "trunk_open_angle"

    .line 167
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->windowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getTrunkFullOpenPos()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    :cond_11
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "auto_easy_load_sw"

    .line 170
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->vcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isAutoEasyLoadingMode()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_12
    const-string v2, "fcw_sw"

    .line 174
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getFcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bsd_sw"

    .line 175
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getBsdState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lss_seg"

    .line 176
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLssMode()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rcw_sw"

    .line 177
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRcwState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dow_sw"

    .line 178
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getDowState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rcta"

    .line 179
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getRctaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isla_seg"

    .line 180
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getIslaState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "apa_sw"

    .line 181
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAutoParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "vpa_sw"

    .line 182
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getMemoryParkSw()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lcc_sw"

    .line 183
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getLccState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "alc_sw"

    .line 184
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAlcState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ngp_sw"

    .line 185
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getNgpState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isSupportAutoLampHeight"

    .line 188
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "isSupportLampHeight"

    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const-string v2, "lamp_height"

    .line 189
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLampHeightLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    const-string v2, "lamp_head_mode"

    .line 191
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getHeadLampMode(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "rear_fog_light"

    .line 192
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearFogLampState()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSupportSaberLight"

    .line 194
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "position_light"

    .line 195
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isParkLampIncludeFmB()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_15
    const-string v2, "isSupportIhb"

    .line 198
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "ihb_sw"

    .line 199
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getIhbState()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_16
    const-string v2, "isSupportRearLogoLight"

    .line 202
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "rear_logo_light"

    .line 203
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getRearLogoLightSw()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_17
    const-string v2, "home_light_sw"

    .line 206
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->isLightMeHomeEnable()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "home_light_seg"

    .line 207
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getLightMeTime()Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "read_light_sw"

    .line 208
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightSw(I)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSupportDomeLightBrightnessCtrl"

    .line 209
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "read_light_brightness"

    .line 210
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->getDomeLightBrightness()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_18
    const-string v2, "isSupportLlu"

    .line 212
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "llu_unlock_sw"

    .line 213
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLluWakeWaitEnable()Z

    move-result v5

    if-eqz v5, :cond_19

    move v5, v4

    goto :goto_3

    :cond_19
    move v5, v3

    :goto_3
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "llu_lock_sw"

    .line 214
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLluSleepEnable()Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v4

    goto :goto_4

    :cond_1a
    move v5, v3

    :goto_4
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "llu_effect_unlock_seg"

    .line 215
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;->Locking:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->getLluEffect(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "llu_charge_sw"

    .line 216
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLluChargingEnable()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v4

    goto :goto_5

    :cond_1b
    move v5, v3

    :goto_5
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "llu_sayhi_effect"

    .line 217
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->avasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->getFriendEffect()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "sayhi_sw"

    .line 218
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isSayHiEnabled()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1c
    const-string v2, "isSupportAtl"

    .line 221
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "atl_sw"

    .line 222
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->atlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->isAtlEnabled()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "atl_brightness"

    .line 223
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->atlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlBrightnessValue()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "atl_effect"

    .line 224
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->atlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "atl_color_mode"

    .line 225
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->atlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlThemeColorMode()Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x2

    goto :goto_6

    :cond_1d
    move v5, v4

    :goto_6
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "atl_single_color"

    .line 226
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->atlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSingleColor()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "atl_double_color"

    .line 227
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->atlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getDoubleColor()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1e
    const-string v2, "drive_mode"

    .line 231
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->vcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveMode()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "energy_recycle_grade"

    .line 232
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->vcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getEnergyRecycleGrade()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "eps_mode"

    .line 233
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getSteeringEps()I

    move-result v5

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->fromEpsState(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isSupportEspBpf"

    .line 234
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "esp_bpf_sw"

    .line 235
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspBpfModeValue()Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1f
    const-string v2, "isSupportEspCst"

    .line 237
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "esp_cst_sw"

    .line 238
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspCstSw()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 240
    :cond_20
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "as_height"

    .line 241
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsHeightMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_21
    const-string/jumbo v0, "xkey_item"

    .line 243
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->meterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getXKeyForCustomerValue()Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isSupportMirrorMemory"

    .line 244
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "left_mirror_sw"

    .line 245
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getLMReverseSw()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "right_mirror_sw"

    .line 246
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRMReverseSw()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_22
    const-string v0, "isSupportIms"

    .line 248
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "ims_sw"

    .line 249
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result v2

    if-ne v2, v4, :cond_23

    move v2, v4

    goto :goto_7

    :cond_23
    move v2, v3

    :goto_7
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "ims_high_speed_vision"

    .line 250
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsHighSpeedAutoVisionSw()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "ims_park_auto_vision"

    .line 251
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsAutoVisionSw()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "ims_brightness"

    .line 252
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsBrightLevel()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_24
    const-string v0, "avh_sw"

    .line 254
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAvhFault()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAvhForUI()Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v4

    goto :goto_8

    :cond_25
    move v2, v3

    :goto_8
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "isSupportHdc"

    .line 255
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "hdc_sw"

    .line 256
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getHdcFault()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getHdc()Z

    move-result v2

    if-eqz v2, :cond_26

    move v3, v4

    :cond_26
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_27
    const-string v0, "esp_sw"

    .line 258
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspForUI()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "epb_sw"

    .line 259
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getApbSystemStatus()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "body_fault_sw"

    .line 262
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->aDriveSystemViewModel:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getBodyFaultIndicationSw()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "start_remind_sw"

    .line 263
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->aDriveSystemViewModel:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getStartRemindStateSw()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "isSupportCNgp"

    .line 264
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "green_light_remind_sw"

    .line 265
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->aDriveSystemViewModel:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->getGreenLightRemindStateSw()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_28
    const-string v0, "isSupportCwc"

    .line 269
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "cwc_sw"

    .line 270
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcSwEnable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_29
    const-string v0, "isSupportCwcFR"

    .line 272
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "cwc_fr_sw"

    .line 273
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcFRSwEnable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2a
    const-string v0, "isSupportCwcRL"

    .line 275
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "cwc_rl_sw"

    .line 276
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcRLSwEnable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2b
    const-string v0, "isSupportCwcRR"

    .line 278
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "cwc_rr_sw"

    .line 279
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isCwcRRSwEnable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2c
    const-string v0, "isSingleChargePort"

    .line 282
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v2, "right_charge_port"

    if-eqz v0, :cond_2d

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    .line 285
    :cond_2d
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "left_charge_port"

    .line 286
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_9
    const-string/jumbo v0, "turn_assist_sw"

    .line 288
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->xpuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getTurnAssistantSw()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "nra_sw"

    .line 289
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->xpuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraState()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "nra_sensitivity_seg"

    .line 290
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->xpuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraState()I

    move-result v2

    if-lez v2, :cond_2e

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->xpuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraState()I

    move-result v2

    goto :goto_a

    :cond_2e
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->xpuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;->getNraCacheState()I

    move-result v2

    :goto_a
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 296
    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;
    .locals 1

    .line 79
    invoke-static {}, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter$SingleHolder;->access$000()Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;

    move-result-object v0

    return-object v0
.end method

.method private initViewModel()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    .line 89
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 90
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->chassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 91
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->windowDoorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 92
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lampViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    .line 93
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->avasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    .line 94
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->vcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 95
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->scuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 96
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->lluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    .line 97
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->atlViewModel:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;

    .line 98
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->meterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 99
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->mirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 100
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->xpuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;

    .line 101
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/IADriveSystemViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->aDriveSystemViewModel:Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;

    return-void
.end method


# virtual methods
.method public writeData(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->getData()Ljava/lang/String;

    move-result-object v0

    .line 301
    sget-object v1, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 303
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CarControl_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "UTF-8"

    .line 309
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 311
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result p1

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mkdirs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 323
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 327
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 330
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v3, :cond_3

    .line 327
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    :cond_3
    :goto_3
    throw p1
.end method
