.class public Lcom/xiaopeng/carcontrol/common/config/feature/H93FeatureOption;
.super Lcom/xiaopeng/carcontrol/common/config/feature/E38FeatureOption;
.source "H93FeatureOption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/E38FeatureOption;-><init>()V

    return-void
.end method


# virtual methods
.method public IsSupportGeekMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsSupportXpowerMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAcAutoNature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHvacDataMemoryFromRDCU()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewLssSignal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSeatHeatVentGather()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowDoorKeySpeech()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowReadyDisableCustomXDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSignalRegisterDynamically()Z
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/H93FeatureOption;->isSupportNapa()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupportAsHeightSaveMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCarControlSDK()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportChargePortPGearConstrain()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDomainControllerSeatWelcome()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEnhancedParkFunc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportFactoryRestoreSettings()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportFollowMeHomeWhenRemoteInOn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHvacColdHeatNature()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportHvacPsnSeatRecovery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportHvacShowAuto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLowBeamOffConfirm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNapa()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNewSelfCheckArch()Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/H93FeatureOption;->isSupportSelfCheck()Z

    move-result v0

    return v0
.end method

.method public isSupportPGearNotification()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPopPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPressSignal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPsnSeatManualSave()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPsnSeatVerControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportReadyDisableNotify()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSeatNotify()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSelfCheck()Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/H93FeatureOption;->isSupportNapa()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupportSmartModeCountdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSmartOSFive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTpmsWarning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUnLockRspDataCompliance()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportXSportApp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
