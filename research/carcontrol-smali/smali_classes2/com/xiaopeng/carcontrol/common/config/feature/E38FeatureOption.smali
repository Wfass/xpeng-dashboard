.class public Lcom/xiaopeng/carcontrol/common/config/feature/E38FeatureOption;
.super Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;
.source "E38FeatureOption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;-><init>()V

    return-void
.end method


# virtual methods
.method public IsSupportGeekMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public IsSupportXpowerMode()Z
    .locals 1

    .line 219
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->getInstance()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->isSupportXSport()Z

    move-result v0

    return v0
.end method

.method public final getDefaultMirrorReversePos()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 257
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x22
        0x2a
        0x1b
        0x1c
    .end array-data
.end method

.method public getSayHiPreviewInactiveTime()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public isAcAutoNature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEcuDoSeatLayFlat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHvacDataMemoryFromRDCU()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMeditationIndependent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewLssSignal()Z
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

.method public isShowXkeyNraView()Z
    .locals 1

    .line 228
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->getInstance()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->isSupportNra()Z

    move-result v0

    return v0
.end method

.method public isSignalRegisterDynamically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAirBed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAsHeightSaveMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCallAvatar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCarControlSDK()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCarStatusBIUpload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCduWelcomeOff()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportChargePortOnOffConstraint()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDomainControllerSeatWelcome()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDriveAutoLock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDriveInSettingsPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDualScreen()Z
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

.method public isSupportHvacVentControl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportInflateTwice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLeftCarImgChange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLightMeHomeInSettings()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLluSyncShow()Z
    .locals 1

    .line 80
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->getInstance()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->isSupportLlu()Z

    move-result v0

    return v0
.end method

.method public isSupportMeditationPlus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMirrorMemoryInSettings()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMultipleUserDefineDriveMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportNapa()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNeedReceiveGreet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNewPsnSaveHabbitPos()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNewSelfCheckArch()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/E38FeatureOption;->isSupportSelfCheck()Z

    move-result v0

    return v0
.end method

.method public isSupportNotifyNormalCheckResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPopPanel()Z
    .locals 1

    const/4 v0, 0x1

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

.method public isSupportPsnSeatPosCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPsnSeatVerControl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPsnThreeSavedPos()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRsbWarningReset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSeatFlatFrontOccupied()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSeatSectionalRecovery()Z
    .locals 1

    .line 180
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->getInstance()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->isSupportVipSeat()Z

    move-result v0

    return v0
.end method

.method public isSupportSelfCheck()Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/E38FeatureOption;->isSupportNapa()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupportSingleMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSmartModeCountdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportStandardDriveMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportVui()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportWiperSenCfgShow()Z
    .locals 1

    const-string v0, "persist.sys.xiaopeng.Package3"

    .line 85
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupportXSportApp()Z
    .locals 1

    .line 210
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->getInstance()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->isSupportXSport()Z

    move-result v0

    return v0
.end method

.method public isSupportXSportRacerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldIgnoreDrvOccupied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
