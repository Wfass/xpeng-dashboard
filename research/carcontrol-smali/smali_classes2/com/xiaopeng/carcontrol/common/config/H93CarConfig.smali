.class public Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;
.super Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;
.source "H93CarConfig.java"


# static fields
.field public static final PROPERTY_BODY_COLOR_BLACK:I = 0x14

.field public static final PROPERTY_BODY_COLOR_GRAY:I = 0x15

.field public static final PROPERTY_BODY_COLOR_GREEN:I = 0x16

.field public static final PROPERTY_BODY_COLOR_GREEN2:I = 0x18

.field private static final PROPERTY_BODY_COLOR_INVALID:I = 0x0

.field public static final PROPERTY_BODY_COLOR_PINK:I = 0x17

.field public static final PROPERTY_BODY_COLOR_SILVER:I = 0xe

.field public static final PROPERTY_BODY_COLOR_WHITE:I = 0xc

.field public static final PROPERTY_BODY_COLOR_YELLOW:I = 0x19

.field private static final TAG:Ljava/lang/String; = "CarConfigHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/config/CarBaseConfig;-><init>()V

    return-void
.end method

.method public static getCarBodyColor()I
    .locals 3

    const-string v0, "persist.sys.xiaopeng.bodyColor"

    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car body color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarConfigHelper"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCduMirrorReverseMode()I
    .locals 1

    const-string v0, "persist.sys.xiaopeng.MIRROR"

    .line 209
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getCfcCode()I
    .locals 3

    .line 47
    sget-object v0, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->sCfcCode:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "persist.sys.xiaopeng.cfcVehicleLevel"

    .line 49
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->sCfcCode:Ljava/lang/Integer;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCfcCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->sCfcCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarConfigHelper"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->sCfcCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDomeLightBrightLevelHigh()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getHvacVersion()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getMSMSeatDefaultPos()[I
    .locals 1

    .line 264
    sget-object v0, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->MSM_SEAT_DEFAULT_POS_H93:[I

    return-object v0
.end method

.method public getMeditationSeatPos()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public getMirrorDefaultPos()[I
    .locals 1

    .line 269
    sget-object v0, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->MIRROR_DEFAULT_POS_H93:[I

    return-object v0
.end method

.method public getSecRowMSMSeatDefaultPos()[I
    .locals 1

    .line 274
    sget-object v0, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->MSM_SEAT_SECOND_DEFAULT_POS:[I

    return-object v0
.end method

.method public getWindowVentPos()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 632
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x59
        0x59
        0x50
        0x50
    .end array-data
.end method

.method public isFollowVehicleLostConfigUseNew()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNewIcmArch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewMsmArch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewScuArch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelfDevelopedHvac()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSingleChargePort()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSopStage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAbsFault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportActiveSafety()Z
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportAdjMirrorByCdu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAlc()Z
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportAtlAllModeDualColor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAutoCloseWin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAutoPark()Z
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportAutoParkForXKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAutoPilot()Z
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportAutoWindowLock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAuxiliaryFunc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAvasLoudSpeaker()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportBcmCtrlSeatBelt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportBootSoundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBrakeLight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBsd()Z
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportCNgp()Z
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportLidar()Z

    move-result v0

    return v0
.end method

.method public isSupportCarCallAdvanced()Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportChildLock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCloseAutoDirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCrossBarriers()Z
    .locals 1

    .line 795
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportLidar()Z

    move-result v0

    return v0
.end method

.method public isSupportCtrlBonnet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportCtrlChargePort()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDaytimeRunningLight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDhc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDigitalKeyTip()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDomeLight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDomeLightIndependentCtrl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDomeLightThirdRow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDoorKeySetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDow()Z
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportDriveEnergyReset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDriveModeNewArch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDrl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDrvSeatStop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportDsmCamera()Z
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportDsmTiredDistraction()Z
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportDsmCamera()Z

    move-result v0

    return v0
.end method

.method public isSupportEbw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportElcTrunk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportElk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEnergyRecycleMediumLevel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEnhancedBsd()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportEpbSetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEpbWarning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEsbForLdw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEspBpf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEspCst()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportEspMudMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEspSportMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportHdc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportIBoosterSignal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportInductionLock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportIsla()Z
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportIslc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportIslcInActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportKeyPark()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportKeyParkAdvanced()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportLampHeight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLcc()Z
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportLightMeHomeNew()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLightMeHomeTime()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportLka()Z
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportLluDance()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLockUnLockRspSep()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMainWiperInterval()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportManualTpmsCalibrate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMcuKeyOpenFailed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportMemPark()Z
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportMeterSetting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMirrorDown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMrrGeoFence()Z
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportNeutralGearProtect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportNewAvasUnlockResponse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNewChildLock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNewDhc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNewParkLampFmB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNewUnlockResponseArch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportNewWiperSpdSt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportNgp()Z
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportNormalDriveMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPM25Out()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportParkingLightIndependent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPollingLightWelcomeMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPollingLock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPollingOpenCfg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportPsnSeatStop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRaeb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportRapidHeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRcta()Z
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportRcw()Z
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportRearLogoLight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRearSeatCtrl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportRearWiper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSTWVR()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSaberLightFeedBack()Z
    .locals 1

    .line 680
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportLlu()Z

    move-result v0

    return v0
.end method

.method public isSupportSeatSmartControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportShowAutoPark()Z
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportShowDriveAutoLock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportShowEbw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSimpleSas()Z
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportSlideDoor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSrs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSsa()Z
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportSunShade()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportSwitchMedia()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTboxPowerSw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTiltPosReversed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTopCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportTrafficLight()Z
    .locals 1

    .line 800
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportLidar()Z

    move-result v0

    return v0
.end method

.method public isSupportTrailerMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTrunkSetPosition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportTurnActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportUnity3D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportUserPortfolioPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportVcuExhibitionMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportVipSeat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportWheelKeyProtect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportWheelSetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportWindowLock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportWindowStates()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportWiperFault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportWiperInterval()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportWiperRepair()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportWiperSenCfg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportXPedal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportXPilot()Z
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isSupportXPilotTtsCfg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportXSayHi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportXSport()Z
    .locals 2

    const-string v0, "key_napa_xsport"

    const/4 v1, 0x1

    .line 705
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->hasSettingsFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSupportXUnlockTrunk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportXpuDomainCtrl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportXpuNedc()Z
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/common/config/H93CarConfig;->isSupportXpu()Z

    move-result v0

    return v0
.end method

.method public isWiperAdjustByHardKey()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWiperSensitiveNegative()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matchSeatSetPos(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    return p1
.end method
