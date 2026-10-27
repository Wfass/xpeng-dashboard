.class public Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;
.source "PowerCenterManager_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChargeLimit"

    const-string v2, "onChargeLimitChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChargeFault"

    const-string v2, "showChargeFault"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSoc"

    const-string v2, "onSocChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDischargeLimit"

    const-string v2, "onDisChargeLimitChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLfpTipsFlag"

    const-string v2, "updateLfpTipsFlag"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChargeStatus"

    const-string v2, "onChargeStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getACMaxPower"

    const-string v2, "updateACMaxPower"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getConsumptionAverage_100"

    const-string v2, "onConsumptionAverage_last100_Changed"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getElectricityMode"

    const-string v2, "onElectricityModeChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRemainingDistance"

    const-string v2, "onRemainingDistanceChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getConsumptionAverage"

    const-string v2, "onConsumptionAverageChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChargeGunLockStatus"

    const-string v2, "updateChargeGunLockStatus"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDischargeError"

    const-string v2, "showDischargeError"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChargeGunStatus"

    const-string v2, "onChargeGunStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBatteryKeepTemperatureMode"

    const-string v2, "onKeepTempModeChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getIs800v"

    const-string v2, "updateIs800v"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDCMaxPower"

    const-string v2, "updateDCMaxPower"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSuperCharge"

    const-string v2, "onSuperChargeFlagChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getChargeRemainingTime"

    const-string v2, "onRemainingTimeChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getACMaxPower()I
    .locals 5

    .line 447
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_ac_max_power"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getACMaxPower   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getACMaxPower"

    .line 452
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getACMaxPower   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getAppId()Ljava/lang/String;
    .locals 1

    const-string v0, "powercenter"

    return-object v0
.end method

.method public getBatteryKeepTemperatureMode()I
    .locals 5

    .line 628
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_battery_keep_temperature_mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getBatteryKeepTemperatureMode   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getBatteryKeepTemperatureMode"

    .line 633
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatteryKeepTemperatureMode   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChargeAppointmentTime()Ljava/lang/String;
    .locals 5

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "getChargeAppointmentTime   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getChargeAppointmentTime"

    const/4 v1, 0x0

    .line 434
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 435
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargeAppointmentTime   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getChargeFault()Ljava/lang/String;
    .locals 5

    .line 672
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_charge_fault"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getChargeFault   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getChargeFault"

    .line 677
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 678
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargeFault   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getChargeGunLockStatus()Ljava/lang/String;
    .locals 5

    .line 478
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_charge_gun_lock_status"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getChargeGunLockStatus   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getChargeGunLockStatus"

    .line 483
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 484
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargeGunLockStatus   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getChargeGunStatus()I
    .locals 5

    .line 502
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_charge_gun_status"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getChargeGunStatus   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getChargeGunStatus"

    .line 507
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargeGunStatus   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChargeLimit()I
    .locals 5

    .line 490
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_charge_limit"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getChargeLimit   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getChargeLimit"

    .line 495
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargeLimit   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChargeRemainingTime()I
    .locals 5

    .line 552
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_charge_remaining_time"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getChargeRemainingTime   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getChargeRemainingTime"

    .line 557
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 558
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargeRemainingTime   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChargeStatus()I
    .locals 5

    .line 466
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_charge_status"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getChargeStatus   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getChargeStatus"

    .line 471
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 472
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargeStatus   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getConsumptionAverage()F
    .locals 5

    .line 578
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_consumption_average"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getConsumptionAverage   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getConsumptionAverage"

    .line 583
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 584
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConsumptionAverage   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getConsumptionAverage_100()F
    .locals 5

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_consumption_average_last100"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getConsumptionAverage_100   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getConsumptionAverage_100"

    .line 376
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConsumptionAverage_100   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDCMaxPower()I
    .locals 5

    .line 407
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_dc_max_power"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getDCMaxPower   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getDCMaxPower"

    .line 412
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDCMaxPower   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDischargeError()Ljava/lang/String;
    .locals 5

    .line 640
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_discharge_error"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getDischargeError   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getDischargeError"

    .line 645
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDischargeError   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getDischargeLimit()I
    .locals 5

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_discharge_limit"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getDischargeLimit   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getDischargeLimit"

    .line 364
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDischargeLimit   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getElectricityMode()I
    .locals 5

    .line 602
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_electricity_mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getElectricityMode   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getElectricityMode"

    .line 607
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getElectricityMode   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIs800v()Z
    .locals 5

    .line 590
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_is_800v"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getIs800v   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getIs800v"

    .line 595
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 596
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIs800v   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKeepTemperatureAppointTime()Ljava/lang/String;
    .locals 5

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "getKeepTemperatureAppointTime   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getKeepTemperatureAppointTime"

    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeepTemperatureAppointTime   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getLfpTipsFlag()Z
    .locals 5

    .line 540
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_lfp_tips_flag"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getLfpTipsFlag   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getLfpTipsFlag"

    .line 545
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLfpTipsFlag   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.powercenter.PowerCenterManagerServer"

    return-object v0
.end method

.method public getPowerData()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "getPowerData   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getPowerData"

    const/4 v1, 0x0

    .line 653
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPowerData   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3d

    const/16 v2, 0x3a

    .line 655
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 656
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 657
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 658
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 659
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRemainingDistance()F
    .locals 5

    .line 383
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_remaining_distance"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getRemainingDistance   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getRemainingDistance"

    .line 388
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemainingDistance   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSoc()I
    .locals 5

    .line 521
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_soc"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getSoc   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getSoc"

    .line 526
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 527
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSoc   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStartChartSoc()I
    .locals 4

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "getStartChartSoc   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getStartChartSoc"

    const/4 v1, 0x0

    .line 615
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStartChartSoc   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuperCharge()Z
    .locals 5

    .line 395
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "powercenter_super_charge_flag"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "isSuperCharge   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "isSuperCharge"

    .line 400
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSuperCharge   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadChartData()V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "loadChartData   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loadChartData"

    const/4 v1, 0x0

    .line 534
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadChartData   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIpcReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "data"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "onConsumptionAverage_last100_Changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "onRemainingDistanceChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "updateDischargeConsumptionPercentage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "onElectricityModeChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "updateChargeDuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "onRemainingTimeChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "updateObcFaultTip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "onChargeGunStatusChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "chargeDiff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "updateLfpTipsFlag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "onChargeLimitChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "onSuperChargeFlagChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "updateDischargeConsumptionMileage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "onDisChargeLimitChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "updateChargeAddedMileageFloat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "updateACMaxPower"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "onDepolarizeStChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "showDischargeError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "showDialogForLowChargeLimit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "onConsumptionAverageChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "onPowerDataChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "updateDCMaxPower"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "showChargingPileFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "updateChargeGunLockStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "onKeepTempModeChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "updateChargeAddedMileage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "onChargeStatusChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "updateChargeAddedPercentage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "onPowerCenterPageStatusChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "showChargeFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "updateHeatManagementRemainingTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_1f
    const-string v0, "updateIs800v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_20
    const-string v0, "updateDischargeSocView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_0

    :cond_20
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_21
    const-string v0, "onChartPowerDataChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_0

    :cond_21
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_22
    const-string v0, "updatePrepareTipsFromMQTT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_0

    :cond_22
    move v5, v1

    goto :goto_0

    :sswitch_23
    const-string v0, "showHeatManagementTips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_0

    :cond_23
    move v5, v2

    goto :goto_0

    :sswitch_24
    const-string v0, "onSocChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_0

    :cond_24
    move v5, v3

    goto :goto_0

    :sswitch_25
    const-string v0, "updateChargeAppointmentTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_0

    :cond_25
    move v5, v4

    :goto_0
    const-string p1, ","

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_28

    .line 203
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 204
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 205
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onConsumptionAverage_last100_Changed(F)V

    goto :goto_1

    .line 207
    :cond_26
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_consumption_average_last100"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 325
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 326
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 327
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onRemainingDistanceChanged(F)V

    goto :goto_2

    .line 329
    :cond_27
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_remaining_distance"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 96
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 97
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateDischargeConsumptionPercentage(I)V

    goto :goto_3

    .line 227
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 228
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onElectricityModeChanged(I)V

    goto :goto_4

    .line 231
    :cond_28
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_electricity_mode"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 62
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 63
    check-cast v1, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 65
    array-length v6, v5

    if-ne v6, v2, :cond_29

    .line 66
    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v6, v5}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateChargeDuration(II)V

    goto :goto_5

    .line 68
    :cond_29
    invoke-interface {v1, v4, v4}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateChargeDuration(II)V

    goto :goto_5

    .line 340
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 341
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 342
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onRemainingTimeChanged(I)V

    goto :goto_6

    .line 344
    :cond_2a
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_charge_remaining_time"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 133
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 134
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 135
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateObcFaultTip(Z)V

    goto :goto_7

    .line 310
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 311
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 312
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onChargeGunStatusChanged(I)V

    goto :goto_8

    .line 314
    :cond_2b
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_charge_gun_status"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 74
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 75
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 76
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->chargeDiff(F)V

    goto :goto_9

    .line 81
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 83
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateLfpTipsFlag(Z)V

    goto :goto_a

    .line 85
    :cond_2c
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_lfp_tips_flag"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 211
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 212
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onChargeLimitChanged(I)V

    goto :goto_b

    .line 215
    :cond_2d
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_charge_limit"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 125
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 126
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 127
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onSuperChargeFlagChanged(Z)V

    goto :goto_c

    .line 129
    :cond_2e
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_super_charge_flag"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 287
    :pswitch_c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 288
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 289
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateDischargeConsumptionMileage(F)V

    goto :goto_d

    .line 188
    :pswitch_d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 189
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onDisChargeLimitChanged(I)V

    goto :goto_e

    .line 192
    :cond_2f
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_discharge_limit"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 250
    :pswitch_e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 251
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 252
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateChargeAddedMileageFloat(F)V

    goto :goto_f

    .line 348
    :pswitch_f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 349
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 350
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateACMaxPower(I)V

    goto :goto_10

    .line 352
    :cond_30
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_ac_max_power"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 173
    :pswitch_10
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 174
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onDepolarizeStChanged(I)V

    goto :goto_11

    .line 235
    :pswitch_11
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 236
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 237
    invoke-interface {v0, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->showDischargeError(Ljava/lang/String;)V

    goto :goto_12

    .line 239
    :cond_31
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_discharge_error"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 243
    :pswitch_12
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 244
    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 245
    invoke-interface {p2}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->showDialogForLowChargeLimit()V

    goto :goto_13

    .line 219
    :pswitch_13
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 220
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 221
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onConsumptionAverageChanged(F)V

    goto :goto_14

    .line 223
    :cond_32
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_consumption_average"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 152
    :pswitch_14
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 153
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    const/16 v1, 0x3d

    const/16 v2, 0x3a

    .line 154
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 156
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 157
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 160
    :cond_33
    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onPowerDataChanged(Ljava/util/Map;)V

    goto :goto_15

    .line 272
    :pswitch_15
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 273
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateDCMaxPower(I)V

    goto :goto_17

    .line 276
    :cond_34
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_dc_max_power"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 118
    :pswitch_16
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 119
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 120
    invoke-interface {v0, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->showChargingPileFault(Ljava/lang/String;)V

    goto :goto_18

    .line 110
    :pswitch_17
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 112
    invoke-interface {v0, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateChargeGunLockStatus(Ljava/lang/String;)V

    goto :goto_19

    .line 114
    :cond_35
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_charge_gun_lock_status"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 302
    :pswitch_18
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 303
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 304
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onKeepTempModeChanged(Z)V

    goto :goto_1a

    .line 306
    :cond_36
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_battery_keep_temperature_mode"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 280
    :pswitch_19
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 281
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateChargeAddedMileage(I)V

    goto :goto_1b

    .line 180
    :pswitch_1a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 181
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 182
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onChargeStatusChanged(I)V

    goto :goto_1c

    .line 184
    :cond_37
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_charge_status"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 103
    :pswitch_1b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateChargeAddedPercentage(I)V

    goto :goto_1d

    .line 89
    :pswitch_1c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 90
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onPowerCenterPageStatusChanged(I)V

    goto :goto_1e

    .line 264
    :pswitch_1d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 265
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 266
    invoke-interface {v0, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->showChargeFault(Ljava/lang/String;)V

    goto :goto_1f

    .line 268
    :cond_38
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_charge_fault"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 257
    :pswitch_1e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 258
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 259
    invoke-interface {v0, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateHeatManagementRemainingTime(Ljava/lang/String;)V

    goto :goto_20

    .line 294
    :pswitch_1f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 295
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 296
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateIs800v(Z)V

    goto :goto_21

    .line 298
    :cond_39
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_is_800v"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 318
    :pswitch_20
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 319
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 320
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateDischargeSocView(F)V

    goto :goto_22

    .line 196
    :pswitch_21
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 197
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 198
    invoke-interface {v0, p2}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onChartPowerDataChanged(Ljava/lang/String;)V

    goto :goto_23

    .line 50
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 51
    check-cast v1, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 53
    array-length v6, v5

    if-ne v6, v2, :cond_3a

    .line 54
    aget-object v6, v5, v4

    aget-object v5, v5, v3

    invoke-interface {v1, v6, v5}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updatePrepareTipsFromMQTT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_3a
    const-string v5, ""

    .line 56
    invoke-interface {v1, v5, v5}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updatePrepareTipsFromMQTT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 333
    :pswitch_23
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 334
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 335
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->showHeatManagementTips(Z)V

    goto :goto_25

    .line 165
    :pswitch_24
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 166
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->onSocChanged(I)V

    goto :goto_26

    .line 169
    :cond_3b
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "powercenter_soc"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 140
    :pswitch_25
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 141
    check-cast v5, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 143
    array-length v7, v6

    if-ne v7, v1, :cond_3c

    .line 144
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v7, v8, v6}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateChargeAppointmentTime(III)V

    goto :goto_27

    .line 146
    :cond_3c
    invoke-interface {v5, v4, v4, v4}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager$ISignalCallback;->updateChargeAppointmentTime(III)V

    goto :goto_27

    :cond_3d
    :goto_28
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7990cf91 -> :sswitch_25
        -0x76e05994 -> :sswitch_24
        -0x71d371f8 -> :sswitch_23
        -0x70c8a3bc -> :sswitch_22
        -0x6df8bb3c -> :sswitch_21
        -0x5a744f6d -> :sswitch_20
        -0x4944be6f -> :sswitch_1f
        -0x44472439 -> :sswitch_1e
        -0x43094b6f -> :sswitch_1d
        -0x38d5ed08 -> :sswitch_1c
        -0x36289ae3 -> :sswitch_1b
        -0x2292e051 -> :sswitch_1a
        -0x51a4ad9 -> :sswitch_19
        -0x25b8b87 -> :sswitch_18
        -0x24c7b80 -> :sswitch_17
        0x46ac322 -> :sswitch_16
        0x96dc129 -> :sswitch_15
        0x14086564 -> :sswitch_14
        0x23fea133 -> :sswitch_13
        0x25166277 -> :sswitch_12
        0x28b52ec3 -> :sswitch_11
        0x2a80219d -> :sswitch_10
        0x2c916dcc -> :sswitch_f
        0x2ffd9d75 -> :sswitch_e
        0x32c98bdc -> :sswitch_d
        0x35a79e88 -> :sswitch_c
        0x37f964d8 -> :sswitch_b
        0x4aa7cf8c -> :sswitch_a
        0x4da62291 -> :sswitch_9
        0x547f28d9 -> :sswitch_8
        0x54ac5495 -> :sswitch_7
        0x666caba0 -> :sswitch_6
        0x6980b7d0 -> :sswitch_5
        0x6a9d5191 -> :sswitch_4
        0x6b80211f -> :sswitch_3
        0x758cf41c -> :sswitch_2
        0x776fe528 -> :sswitch_1
        0x7fc7a3f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLfpTipsFlag(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLfpTipsFlag   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "setLfpTipsFlag"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLfpTipsFlag   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTrunkPowerOffDelay(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param0",
            "param1"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrunkPowerOffDelay   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "setTrunkPowerOffDelay"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 700
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTrunkPowerOffDelay   result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTrunkPowerSwitch(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrunkPowerSwitch   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "setTrunkPowerSwitch"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrunkPowerSwitch   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCharge()V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "startCharge   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startCharge"

    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCharge   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDischarge()V
    .locals 4

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "startDischarge   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startDischarge"

    const/4 v1, 0x0

    .line 565
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDischarge   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startPowerCenter()V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "startPowerCenter   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startPowerCenter"

    const/4 v1, 0x0

    .line 692
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPowerCenter   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startPreheat()V
    .locals 4

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "startPreheat   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startPreheat"

    const/4 v1, 0x0

    .line 622
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreheat   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopCharge()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "stopCharge   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopCharge"

    const/4 v1, 0x0

    .line 460
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopCharge   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopChargeWithConfirm()V
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "stopChargeWithConfirm   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopChargeWithConfirm"

    const/4 v1, 0x0

    .line 515
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopChargeWithConfirm   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopDischarge()V
    .locals 4

    .line 665
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "stopDischarge   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopDischarge"

    const/4 v1, 0x0

    .line 666
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopDischarge   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopPreheat()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "stopPreheat   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stopPreheat"

    const/4 v1, 0x0

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/powercenter/PowerCenterManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPreheat   result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
