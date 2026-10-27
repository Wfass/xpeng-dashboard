.class public abstract Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;
.super Ljava/lang/Object;
.source "BaseFeatureOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption$SingletonHolder;
    }
.end annotation


# static fields
.field static final PROPERTY_LLU_SYNC_SHOW:Ljava/lang/String; = "persist.sys.xiaopeng.llu.SYNC"

.field static final PROPERTY_UNITY_DELAY_TIME:Ljava/lang/String; = "persist.sys.xiaopeng.carcontrol.unity.DELAY_TIME"

.field public static final TAG:Ljava/lang/String; = "BaseFeatureOption"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;
    .locals 1

    .line 13
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;->createFeatureOption()Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;

    move-result-object v0

    return-object v0
.end method

.method private static createFeatureOption()Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;
    .locals 1

    .line 47
    new-instance v0, Lcom/xiaopeng/carcontrol/common/config/feature/H93FeatureOption;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/common/config/feature/H93FeatureOption;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption$SingletonHolder;->access$100()Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public IsSupportGeekMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsSupportXpowerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlcSpeed()I
    .locals 1

    .line 344
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->isEURegion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    return v0
.end method

.method public getDefaultMirrorReversePos()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 670
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x52
        0x1b
        0x1e
        0xf
    .end array-data
.end method

.method public getSayHiPreviewInactiveTime()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public getSeatTiltMovingSafePos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUnityDelayTime()J
    .locals 2

    const-string v0, "persist.sys.xiaopeng.carcontrol.unity.DELAY_TIME"

    const/16 v1, 0x190

    .line 107
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getWindowLoadingTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWindowVentingTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAcAutoNature()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBroadcastWhenCancelMuteOrUnmute()Z
    .locals 1

    .line 337
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->isEURegion()Z

    move-result v0

    return v0
.end method

.method public isDelaySaveMirrorPos()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDrvRightVentOnTop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEcuDoSeatLayFlat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isForceCloseAlcWhenIgOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isForceTurnOnElkWhenIgOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHvacDataMemoryFromRDCU()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIhbDependOnXPilot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMeditationIndependent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMileageEuFormat()Z
    .locals 1

    .line 715
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->isEURegion()Z

    move-result v0

    return v0
.end method

.method public isNewFcwSignal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewLssSignal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOldAiAssistant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSeatHeatVentGather()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowDoorKeySpeech()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowMainControlBtnStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowReadyDisableCustomXDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowSeatRealPosition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowXkeyNraView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSignalRegisterDynamically()Z
.end method

.method public isSupportAirBed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAllWindowState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAsHeightSaveMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAsWelcomeWithSeat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAutoSeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAvasNewMemKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAvasOff()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSupportCallAvatar()Z
.end method

.method public isSupportCarControlSDK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCarImgWithCarType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCarLife()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportCarStatusBIUpload()Z
.end method

.method public isSupportCduWelcomeOff()Z
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;->isSupportDomainControllerSeatWelcome()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupportCenteringHvacSurfaceView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportChangeableDialogTitleSize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportChargePortOnOffConstraint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportChargePortPGearConstrain()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDomainControllerSeatWelcome()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportDriveAutoLock()Z
.end method

.method public abstract isSupportDriveInSettingsPage()Z
.end method

.method public isSupportDriveModeList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDsmRegulation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDualScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportECall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEcoDriveMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEnhancedParkFunc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEspFeedback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFactoryRestoreSettings()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFollowMeHomeWhenRemoteInOn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportForceOpenDsm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFullscreenPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportGeoFence()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportGuiPageOpen()Z
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

.method public isSupportHvacVentControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportIhbInSettings()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportInflateTwice()Z
.end method

.method public isSupportIntellDriveSysSelfCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportInterTransportMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportIpcModule()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportIslaMemoryFunc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportLeftCarImgChange()Z
.end method

.method public isSupportLidarSafeExam()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportLightMeHomeInSettings()Z
.end method

.method public isSupportLluAllOn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLluSayHi()Z
    .locals 1

    .line 723
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->getInstance()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->isSupportLlu()Z

    move-result v0

    return v0
.end method

.method public abstract isSupportLluSyncShow()Z
.end method

.method public isSupportLluVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLogoPlate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLongItemXPilotTab()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLowBeamOffConfirm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLowPowerProtect()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;->isSupportEcoDriveMode()Z

    move-result v0

    return v0
.end method

.method public isSupportMeditationPlus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMirrorAutoFoldOff()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMirrorFoldUnfoldFuzzySpeech()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSupportMirrorMemoryInSettings()Z
.end method

.method public isSupportMultipleUserDefineDriveMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportNapa()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportNeedReceiveGreet()Z
.end method

.method public isSupportNewHabitArch()Z
    .locals 1

    .line 835
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;->isSupportSmartOSFive()Z

    move-result v0

    return v0
.end method

.method public isSupportNewPsnSaveHabbitPos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportNewSelfCheckArch()Z
.end method

.method public isSupportNotifyNormalCheckResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportOpenAlcWhenNotInPGear()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPGearDropDownMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPGearNotification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPopPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPressSignal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPrivacyCollection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPsnSeatManualSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPsnSeatPosCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPsnSeatVerControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPsnThreeSavedPos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportReadyDisableNotify()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportRearSeatFlat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRelatedSwitch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRemainingMileageInSleepMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRsbWarningReset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSdcBrakeDoorFunc()Z
    .locals 1

    .line 607
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->getInstance()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->isSupportSdc()Z

    move-result v0

    return v0
.end method

.method public isSupportSdcNarrowSpaceTips()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSeatFlatFrontOccupied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSeatNotify()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSeatSectionalRecovery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSelfCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportShowAdaptiveDriveMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportShowAvasSwitch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportShowCustomDialogStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportShowDriveModeInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportShowSelfCheckCard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportShowUserBook()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSingleMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSmartModeCountdown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSmartOSFive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSpaceCapsuleGuideSetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportStandardDriveMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportThemeBootEffect()Z
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/feature/BaseFeatureOption;->isSupportNapa()Z

    move-result v0

    return v0
.end method

.method public isSupportThousandSeparator()Z
    .locals 1

    .line 711
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/CarStatusUtils;->isEURegion()Z

    move-result v0

    return v0
.end method

.method public isSupportTiltPosSavedReversed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportTpmsWarning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUnLockRspDataCompliance()Z
    .locals 1

    .line 839
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->getInstance()Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;->isSupportLockUnLockRspSep()Z

    move-result v0

    return v0
.end method

.method public isSupportUnLockRspDataTransfer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUnlockResponseSettings()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportVui()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportVuiOpenCarControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportWelcomeSwitchOff()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportWiperSenCfgShow()Z
.end method

.method public isSupportXSportApp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportXSportRacerMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needCheckValidMirrorPos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckRearSeatOccupied()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldForceTurnOnAvhForXpedal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract shouldIgnoreDrvOccupied()Z
.end method

.method public shouldRecoverMirror()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showXPilotStAsTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
