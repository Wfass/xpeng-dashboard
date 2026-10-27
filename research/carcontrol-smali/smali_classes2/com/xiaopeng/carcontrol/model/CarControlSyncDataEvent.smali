.class public Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;
.super Ljava/lang/Object;
.source "CarControlSyncDataEvent.java"


# instance fields
.field private alc:Z

.field private allDriveSub:Z

.field private antisick:Z

.field private asWelcomeMode:Z

.field private atlAutoBright:Z

.field private atlBright:Z

.field private atlDualColor:Z

.field private atlDualColorSw:Z

.field private atlEffect:Z

.field private atlRgbDualColor:Z

.field private atlRgbSingleColor:Z

.field private atlSingleColor:Z

.field private atlSw:Z

.field private autoDhc:Z

.field private autoDriveMode:Z

.field private autoLampHeight:Z

.field private autoLight:Z

.field private autoParkSound:Z

.field private autoParkSw:Z

.field private avasEffect:Z

.field private avasSw:Z

.field private avasVolume:Z

.field private avh:Z

.field private bootEffect:Z

.field private bootEffectBfSw:Z

.field private brakeWarning:Z

.field private bsd:Z

.field private cdcMode:Z

.field private childLeftLock:Z

.field private childLock:Z

.field private childRightLock:Z

.field private cityNgpSw:Z

.field private domeLight:Z

.field private domeLightBrightness:Z

.field private doorBossKey:Z

.field private doorBossKeySw:Z

.field private dow:Z

.field private driveAutoLock:Z

.field private driveMode:Z

.field private drvSeatEsb:Z

.field private drvSeatPos:Z

.field private empty:Z

.field private espMode:Z

.field private fcw:Z

.field private highSpdCloseWin:Z

.field private hvacAirProtect:Z

.field private hvacAqs:Z

.field private hvacCircle:Z

.field private hvacSelfDry:Z

.field private hvacSmart:Z

.field private islc:Z

.field private keyParkCfg:Z

.field private keyParkSw:Z

.field private lampHeightLevel:Z

.field private lcc:Z

.field private ldw:Z

.field private leftDoorHotKey:Z

.field private lightMeHome:Z

.field private lightMeHomeTime:Z

.field private lluChargeSw:Z

.field private lluEffectLockingMode:Z

.field private lluLockSw:Z

.field private lluSw:Z

.field private lluUnlockSw:Z

.field private lockCloseWin:Z

.field private lockResponseNew:Z

.field private lss:Z

.field private mCmsAutoBrightSw:Z

.field private mCmsBright:Z

.field private mCmsHighSpdSw:Z

.field private mCmsLowSpdSw:Z

.field private mCmsObjectRecognizeSw:Z

.field private mCmsPos:Z

.field private mCmsReverseSw:Z

.field private mCmsTurnSw:Z

.field private mCmsViewAngle:Z

.field private mCmsViewRecoverySw:Z

.field private mCwcSw:Z

.field private mIgOnAutoCheckSw:Z

.field private mRearLogoLightSw:Z

.field private mSdcBrakeCloseType:Z

.field private mSeatAntiFatigueFlag:Z

.field private mSecRowLeftBeltWarningFlag:Z

.field private mSecRowMidBeltWarningFlag:Z

.field private mSecRowRightBeltWarningFlag:Z

.field private mTrdRowLeftBeltWarningFlag:Z

.field private mTrdRowMidBeltWarningFlag:Z

.field private mTrdRowRightBeltWarningFlag:Z

.field private mWiperSensitivity:Z

.field private memParkSw:Z

.field private meterDefineMediaSource:Z

.field private meterDefineScreenLight:Z

.field private meterDefineTemperature:Z

.field private meterDefineWindMode:Z

.field private meterDefineWindPower:Z

.field private meterWarnSound:Z

.field private microphoneMute:Z

.field private mirrorAutoDown:Z

.field private mirrorAutoFold:Z

.field private mirrorPos:Z

.field private mirrorReverse:Z

.field private nGearProtectSw:Z

.field private ngpAutoLcs:Z

.field private ngpFastLane:Z

.field private ngpLcMode:Z

.field private ngpRemindMode:Z

.field private ngpSw:Z

.field private ngpTipWin:Z

.field private ngpTruckOffset:Z

.field private nra:Z

.field private nraSw:Z

.field private otherVolume:Z

.field private parkAutoUnlock:Z

.field private parkLampB:Z

.field private phoneParkCfg:Z

.field private phoneParkSw:Z

.field private pollingLock:Z

.field private pollingUnlock:Z

.field private rcta:Z

.field private rcw:Z

.field private rearSeatWelcomeMode:Z

.field private recycleGrade:Z

.field private remoteCallSw:Z

.field private rightDoorHotKey:Z

.field private rsbWarning:Z

.field private sayHiEffect:Z

.field private sensorTrunkSw:Z

.field private sideReversingWarning:Z

.field private singlePedal:Z

.field private speedLimit:Z

.field private speedLimitValue:Z

.field private steerMode:Z

.field private steerPos:Z

.field private trunkFullOpenPos:Z

.field private unlockResponse:Z

.field private unlockResponseNew:Z

.field private welcomeMode:Z

.field private wheelKeyProtect:Z

.field private wheelTouchDirection:Z

.field private wheelTouchHint:Z

.field private wheelTouchSpeed:Z

.field private wheelXKey:Z

.field private wiperInterval:Z

.field private xpedal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeatAntiFatigueFlag()Z
    .locals 1

    .line 1190
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSeatAntiFatigueFlag:Z

    return v0
.end method

.method public getSecLeftBeltWarningFlag()Z
    .locals 1

    .line 1146
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSecRowLeftBeltWarningFlag:Z

    return v0
.end method

.method public getSecMidBeltWarningFlag()Z
    .locals 1

    .line 1154
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSecRowMidBeltWarningFlag:Z

    return v0
.end method

.method public getSecRightBeltWarningFlag()Z
    .locals 1

    .line 1162
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSecRowRightBeltWarningFlag:Z

    return v0
.end method

.method public getTrdLeftBeltWarningFlag()Z
    .locals 1

    .line 1170
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mTrdRowLeftBeltWarningFlag:Z

    return v0
.end method

.method public getTrdMidBeltWarningFlag()Z
    .locals 1

    .line 1178
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mTrdRowMidBeltWarningFlag:Z

    return v0
.end method

.method public getTrdRightBeltWarningFlag()Z
    .locals 1

    .line 1186
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mTrdRowRightBeltWarningFlag:Z

    return v0
.end method

.method public getmIgOnAutoCheckSw()Z
    .locals 1

    .line 1138
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mIgOnAutoCheckSw:Z

    return v0
.end method

.method public isAlc()Z
    .locals 1

    .line 798
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->alc:Z

    return v0
.end method

.method public isAllDriveSub()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->allDriveSub:Z

    return v0
.end method

.method public isAntisick()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->antisick:Z

    return v0
.end method

.method public isAsWelcomeMode()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->asWelcomeMode:Z

    return v0
.end method

.method public isAtlAutoBright()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlAutoBright:Z

    return v0
.end method

.method public isAtlBright()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlBright:Z

    return v0
.end method

.method public isAtlDualColor()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlDualColor:Z

    return v0
.end method

.method public isAtlDualColorSw()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlDualColorSw:Z

    return v0
.end method

.method public isAtlEffect()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlEffect:Z

    return v0
.end method

.method public isAtlRgbDualColor()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlRgbDualColor:Z

    return v0
.end method

.method public isAtlRgbSingleColor()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlRgbSingleColor:Z

    return v0
.end method

.method public isAtlSingleColor()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlSingleColor:Z

    return v0
.end method

.method public isAtlSw()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlSw:Z

    return v0
.end method

.method public isAutoDhc()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoDhc:Z

    return v0
.end method

.method public isAutoDriveMode()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoDriveMode:Z

    return v0
.end method

.method public isAutoLampHeight()Z
    .locals 1

    .line 1030
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoLampHeight:Z

    return v0
.end method

.method public isAutoLight()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoLight:Z

    return v0
.end method

.method public isAutoParkSound()Z
    .locals 1

    .line 734
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoParkSound:Z

    return v0
.end method

.method public isAutoParkSw()Z
    .locals 1

    .line 718
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoParkSw:Z

    return v0
.end method

.method public isAvasEffect()Z
    .locals 1

    .line 622
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->avasEffect:Z

    return v0
.end method

.method public isAvasSw()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->avasSw:Z

    return v0
.end method

.method public isAvasVolume()Z
    .locals 1

    .line 630
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->avasVolume:Z

    return v0
.end method

.method public isAvh()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->avh:Z

    return v0
.end method

.method public isBootEffect()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->bootEffect:Z

    return v0
.end method

.method public isBootEffectBeforeSw()Z
    .locals 1

    .line 662
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->bootEffectBfSw:Z

    return v0
.end method

.method public isBrakeWarning()Z
    .locals 1

    .line 1006
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->brakeWarning:Z

    return v0
.end method

.method public isBsd()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->bsd:Z

    return v0
.end method

.method public isCdcMode()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->cdcMode:Z

    return v0
.end method

.method public isChildLeftLock()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->childLeftLock:Z

    return v0
.end method

.method public isChildLock()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->childLock:Z

    return v0
.end method

.method public isChildRightLock()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->childRightLock:Z

    return v0
.end method

.method public isCityNgpSw()Z
    .locals 1

    .line 878
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->cityNgpSw:Z

    return v0
.end method

.method public isCmsAutoBrightSw()Z
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsAutoBrightSw:Z

    return v0
.end method

.method public isCmsBright()Z
    .locals 1

    .line 1094
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsBright:Z

    return v0
.end method

.method public isCmsHighSpdSw()Z
    .locals 1

    .line 1070
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsHighSpdSw:Z

    return v0
.end method

.method public isCmsLowSpdSw()Z
    .locals 1

    .line 1078
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsLowSpdSw:Z

    return v0
.end method

.method public isCmsObjectRecognizeSw()Z
    .locals 1

    .line 1118
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsObjectRecognizeSw:Z

    return v0
.end method

.method public isCmsPos()Z
    .locals 1

    .line 1102
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsPos:Z

    return v0
.end method

.method public isCmsReverseSw()Z
    .locals 1

    .line 1054
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsReverseSw:Z

    return v0
.end method

.method public isCmsTurnSw()Z
    .locals 1

    .line 1062
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsTurnSw:Z

    return v0
.end method

.method public isCmsViewAngle()Z
    .locals 1

    .line 1110
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsViewAngle:Z

    return v0
.end method

.method public isCmsViewRecoverySw()Z
    .locals 1

    .line 1126
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsViewRecoverySw:Z

    return v0
.end method

.method public isCwcSw()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCwcSw:Z

    return v0
.end method

.method public isDataEmpty()Z
    .locals 1

    .line 886
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->empty:Z

    return v0
.end method

.method public isDomeLight()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->domeLight:Z

    return v0
.end method

.method public isDomeLightBright()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->domeLightBrightness:Z

    return v0
.end method

.method public isDoorBossKey()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->doorBossKey:Z

    return v0
.end method

.method public isDow()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->dow:Z

    return v0
.end method

.method public isDriveAutoLock()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->driveAutoLock:Z

    return v0
.end method

.method public isDriveMode()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->driveMode:Z

    return v0
.end method

.method public isDrvSeatEsb()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->drvSeatEsb:Z

    return v0
.end method

.method public isDrvSeatPos()Z
    .locals 1

    .line 894
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->drvSeatPos:Z

    return v0
.end method

.method public isEspMode()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->espMode:Z

    return v0
.end method

.method public isFcw()Z
    .locals 1

    .line 670
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->fcw:Z

    return v0
.end method

.method public isHighSpdCloseWin()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->highSpdCloseWin:Z

    return v0
.end method

.method public isHvacAirProtect()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacAirProtect:Z

    return v0
.end method

.method public isHvacAqs()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacAqs:Z

    return v0
.end method

.method public isHvacCircle()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacCircle:Z

    return v0
.end method

.method public isHvacSelfDry()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacSelfDry:Z

    return v0
.end method

.method public isHvacSmart()Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacSmart:Z

    return v0
.end method

.method public isIslc()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->islc:Z

    return v0
.end method

.method public isKeyParkCfg()Z
    .locals 1

    .line 758
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->keyParkCfg:Z

    return v0
.end method

.method public isKeyParkSw()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->keyParkSw:Z

    return v0
.end method

.method public isLampHeightLevel()Z
    .locals 1

    .line 1022
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lampHeightLevel:Z

    return v0
.end method

.method public isLcc()Z
    .locals 1

    .line 782
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lcc:Z

    return v0
.end method

.method public isLdw()Z
    .locals 1

    .line 694
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ldw:Z

    return v0
.end method

.method public isLeftDoorHotKey()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->leftDoorHotKey:Z

    return v0
.end method

.method public isLightMeHome()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lightMeHome:Z

    return v0
.end method

.method public isLightMeHomeTime()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lightMeHomeTime:Z

    return v0
.end method

.method public isLluChargeSw()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluChargeSw:Z

    return v0
.end method

.method public isLluEffectLockingMode()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluEffectLockingMode:Z

    return v0
.end method

.method public isLluLockSw()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluLockSw:Z

    return v0
.end method

.method public isLluSw()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluSw:Z

    return v0
.end method

.method public isLluUnlockSw()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluUnlockSw:Z

    return v0
.end method

.method public isLockCloseWin()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lockCloseWin:Z

    return v0
.end method

.method public isLockResponseNew()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lockResponseNew:Z

    return v0
.end method

.method public isLss()Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lss:Z

    return v0
.end method

.method public isMemParkSw()Z
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->memParkSw:Z

    return v0
.end method

.method public isMeterDefineMediaSource()Z
    .locals 1

    .line 934
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineMediaSource:Z

    return v0
.end method

.method public isMeterDefineScreenLight()Z
    .locals 1

    .line 942
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineScreenLight:Z

    return v0
.end method

.method public isMeterDefineTemperature()Z
    .locals 1

    .line 910
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineTemperature:Z

    return v0
.end method

.method public isMeterDefineWindMode()Z
    .locals 1

    .line 926
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineWindMode:Z

    return v0
.end method

.method public isMeterDefineWindPower()Z
    .locals 1

    .line 918
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineWindPower:Z

    return v0
.end method

.method public isMeterWarnSound()Z
    .locals 1

    .line 902
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterWarnSound:Z

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->microphoneMute:Z

    return v0
.end method

.method public isMirrorAutoDown()Z
    .locals 1

    .line 966
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mirrorAutoDown:Z

    return v0
.end method

.method public isMirrorAutoFold()Z
    .locals 1

    .line 974
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mirrorAutoFold:Z

    return v0
.end method

.method public isMirrorPos()Z
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mirrorPos:Z

    return v0
.end method

.method public isMirrorReverse()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mirrorReverse:Z

    return v0
.end method

.method public isNGearProtectSw()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->nGearProtectSw:Z

    return v0
.end method

.method public isNgpAutoLcs()Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpAutoLcs:Z

    return v0
.end method

.method public isNgpFastLane()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpFastLane:Z

    return v0
.end method

.method public isNgpLcMode()Z
    .locals 1

    .line 862
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpLcMode:Z

    return v0
.end method

.method public isNgpRemindMode()Z
    .locals 1

    .line 870
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpRemindMode:Z

    return v0
.end method

.method public isNgpSw()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpSw:Z

    return v0
.end method

.method public isNgpTipWin()Z
    .locals 1

    .line 846
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpTipWin:Z

    return v0
.end method

.method public isNgpTruckOffset()Z
    .locals 1

    .line 838
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpTruckOffset:Z

    return v0
.end method

.method public isNra()Z
    .locals 1

    .line 806
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->nra:Z

    return v0
.end method

.method public isNraSw()Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->nraSw:Z

    return v0
.end method

.method public isOtherVolume()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->otherVolume:Z

    return v0
.end method

.method public isParkAutoUnlock()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->parkAutoUnlock:Z

    return v0
.end method

.method public isParkLampB()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->parkLampB:Z

    return v0
.end method

.method public isPhoneParkCfg()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->phoneParkCfg:Z

    return v0
.end method

.method public isPhoneParkSw()Z
    .locals 1

    .line 766
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->phoneParkSw:Z

    return v0
.end method

.method public isPollingLock()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->pollingLock:Z

    return v0
.end method

.method public isPollingUnlock()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->pollingUnlock:Z

    return v0
.end method

.method public isRcta()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rcta:Z

    return v0
.end method

.method public isRcw()Z
    .locals 1

    .line 702
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rcw:Z

    return v0
.end method

.method public isRearLogoLightSw()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mRearLogoLightSw:Z

    return v0
.end method

.method public isRearSeatWelcomeMode()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rearSeatWelcomeMode:Z

    return v0
.end method

.method public isRecycleGrade()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->recycleGrade:Z

    return v0
.end method

.method public isRemoteCallSw()Z
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->remoteCallSw:Z

    return v0
.end method

.method public isRightDoorHotKey()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rightDoorHotKey:Z

    return v0
.end method

.method public isRsbWarning()Z
    .locals 1

    .line 502
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rsbWarning:Z

    return v0
.end method

.method public isSayHiEffect()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->sayHiEffect:Z

    return v0
.end method

.method public isSdcBrakeCloseType()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSdcBrakeCloseType:Z

    return v0
.end method

.method public isSensorTrunkSw()Z
    .locals 1

    .line 982
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->sensorTrunkSw:Z

    return v0
.end method

.method public isSideReversingWarning()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->sideReversingWarning:Z

    return v0
.end method

.method public isSinglePedal()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->singlePedal:Z

    return v0
.end method

.method public isSpeedLimit()Z
    .locals 1

    .line 950
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->speedLimit:Z

    return v0
.end method

.method public isSpeedLimitValue()Z
    .locals 1

    .line 958
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->speedLimitValue:Z

    return v0
.end method

.method public isSteerMode()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->steerMode:Z

    return v0
.end method

.method public isSteerPos()Z
    .locals 1

    .line 1038
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->steerPos:Z

    return v0
.end method

.method public isTrunkFullOpenPos()Z
    .locals 1

    .line 990
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->trunkFullOpenPos:Z

    return v0
.end method

.method public isUnLockResponseNew()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->unlockResponseNew:Z

    return v0
.end method

.method public isUnlockResponse()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->unlockResponse:Z

    return v0
.end method

.method public isWelcomeMode()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->welcomeMode:Z

    return v0
.end method

.method public isWheelKeyProtect()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelKeyProtect:Z

    return v0
.end method

.method public isWheelTouchDirection()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelTouchDirection:Z

    return v0
.end method

.method public isWheelTouchHint()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelTouchHint:Z

    return v0
.end method

.method public isWheelTouchSpeed()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelTouchSpeed:Z

    return v0
.end method

.method public isWheelXKey()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelXKey:Z

    return v0
.end method

.method public isWiperInterval()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wiperInterval:Z

    return v0
.end method

.method public isWiperSensitivity()Z
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mWiperSensitivity:Z

    return v0
.end method

.method public isXpedal()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->xpedal:Z

    return v0
.end method

.method public setAlc(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alc"
        }
    .end annotation

    .line 802
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->alc:Z

    return-void
.end method

.method public setAllDriveSub(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allDriveSub"
        }
    .end annotation

    .line 62
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->allDriveSub:Z

    return-void
.end method

.method public setAntisick(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "antisick"
        }
    .end annotation

    .line 142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->antisick:Z

    return-void
.end method

.method public setAsWelcomeMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asWelcomeMode"
        }
    .end annotation

    .line 110
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->asWelcomeMode:Z

    return-void
.end method

.method public setAtlAutoBright(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlAutoBright"
        }
    .end annotation

    .line 314
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlAutoBright:Z

    return-void
.end method

.method public setAtlBright(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlBright"
        }
    .end annotation

    .line 322
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlBright:Z

    return-void
.end method

.method public setAtlDualColor(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlDualColor"
        }
    .end annotation

    .line 354
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlDualColor:Z

    return-void
.end method

.method public setAtlDualColorSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlDualColorSw"
        }
    .end annotation

    .line 338
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlDualColorSw:Z

    return-void
.end method

.method public setAtlEffect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlEffect"
        }
    .end annotation

    .line 330
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlEffect:Z

    return-void
.end method

.method public setAtlRgbDualColor(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlRgbDualColor"
        }
    .end annotation

    .line 370
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlRgbDualColor:Z

    return-void
.end method

.method public setAtlRgbSingleColor(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlRgbSingleColor"
        }
    .end annotation

    .line 362
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlRgbSingleColor:Z

    return-void
.end method

.method public setAtlSingleColor(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlSingleColor"
        }
    .end annotation

    .line 346
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlSingleColor:Z

    return-void
.end method

.method public setAtlSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlSw"
        }
    .end annotation

    .line 306
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->atlSw:Z

    return-void
.end method

.method public setAutoDhc(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoDhc"
        }
    .end annotation

    .line 434
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoDhc:Z

    return-void
.end method

.method public setAutoDriveMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoDriveMode"
        }
    .end annotation

    .line 70
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoDriveMode:Z

    return-void
.end method

.method public setAutoLampHeight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoLampHeight"
        }
    .end annotation

    .line 1034
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoLampHeight:Z

    return-void
.end method

.method public setAutoLight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoLight"
        }
    .end annotation

    .line 226
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoLight:Z

    return-void
.end method

.method public setAutoParkSound(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoParkSound"
        }
    .end annotation

    .line 738
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoParkSound:Z

    return-void
.end method

.method public setAutoParkSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoParkSw"
        }
    .end annotation

    .line 722
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->autoParkSw:Z

    return-void
.end method

.method public setAvasEffect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avasEffect"
        }
    .end annotation

    .line 626
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->avasEffect:Z

    return-void
.end method

.method public setAvasSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avasSw"
        }
    .end annotation

    .line 618
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->avasSw:Z

    return-void
.end method

.method public setAvasVolume(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avasVolume"
        }
    .end annotation

    .line 634
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->avasVolume:Z

    return-void
.end method

.method public setAvh(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avh"
        }
    .end annotation

    .line 102
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->avh:Z

    return-void
.end method

.method public setBootEffect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bootEffect"
        }
    .end annotation

    .line 658
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->bootEffect:Z

    return-void
.end method

.method public setBootEffectBeforeSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bootEffectBfSw"
        }
    .end annotation

    .line 666
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->bootEffectBfSw:Z

    return-void
.end method

.method public setBrakeWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brakeWarning"
        }
    .end annotation

    .line 1010
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->brakeWarning:Z

    return-void
.end method

.method public setBsd(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bsd"
        }
    .end annotation

    .line 682
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->bsd:Z

    return-void
.end method

.method public setCdcMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdcMode"
        }
    .end annotation

    .line 94
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->cdcMode:Z

    return-void
.end method

.method public setChildLeftLock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childLeftLock"
        }
    .end annotation

    .line 450
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->childLeftLock:Z

    return-void
.end method

.method public setChildLock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childLock"
        }
    .end annotation

    .line 442
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->childLock:Z

    return-void
.end method

.method public setChildRightLock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childRightLock"
        }
    .end annotation

    .line 458
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->childRightLock:Z

    return-void
.end method

.method public setCityNgpSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cityNgpSw"
        }
    .end annotation

    .line 882
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->cityNgpSw:Z

    return-void
.end method

.method public setCmsAutoBrightSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCmsAutoBrightSw"
        }
    .end annotation

    .line 1090
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsAutoBrightSw:Z

    return-void
.end method

.method public setCmsBright(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCmsBright"
        }
    .end annotation

    .line 1098
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsBright:Z

    return-void
.end method

.method public setCmsHighSpdSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCmsHighSpdSw"
        }
    .end annotation

    .line 1074
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsHighSpdSw:Z

    return-void
.end method

.method public setCmsLowSpdSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCmsLowSpdSw"
        }
    .end annotation

    .line 1082
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsLowSpdSw:Z

    return-void
.end method

.method public setCmsObjectRecognizeSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectRecognize"
        }
    .end annotation

    .line 1122
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsObjectRecognizeSw:Z

    return-void
.end method

.method public setCmsPos(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCmsPos"
        }
    .end annotation

    .line 1106
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsPos:Z

    return-void
.end method

.method public setCmsReverseSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCmsReverseSw"
        }
    .end annotation

    .line 1058
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsReverseSw:Z

    return-void
.end method

.method public setCmsTurnSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCmsTurnSw"
        }
    .end annotation

    .line 1066
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsTurnSw:Z

    return-void
.end method

.method public setCmsViewAngle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCmsViewAngle"
        }
    .end annotation

    .line 1114
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsViewAngle:Z

    return-void
.end method

.method public setCmsViewRecoverySw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewRecovery"
        }
    .end annotation

    .line 1130
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCmsViewRecoverySw:Z

    return-void
.end method

.method public setCwcSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cwcSw"
        }
    .end annotation

    .line 566
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mCwcSw:Z

    return-void
.end method

.method public setDataEmpty(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 890
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->empty:Z

    return-void
.end method

.method public setDomeLight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domeLight"
        }
    .end annotation

    .line 234
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->domeLight:Z

    return-void
.end method

.method public setDomeLightBright(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domeLightBrightness"
        }
    .end annotation

    .line 242
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->domeLightBrightness:Z

    return-void
.end method

.method public setDoorBossKey(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorBossKey"
        }
    .end annotation

    .line 182
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->doorBossKey:Z

    return-void
.end method

.method public setDoorBossKeySw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorBossKeySw"
        }
    .end annotation

    .line 186
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->doorBossKeySw:Z

    return-void
.end method

.method public setDow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dow"
        }
    .end annotation

    .line 690
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->dow:Z

    return-void
.end method

.method public setDriveAutoLock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveAutoLock"
        }
    .end annotation

    .line 378
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->driveAutoLock:Z

    return-void
.end method

.method public setDriveMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 54
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->driveMode:Z

    return-void
.end method

.method public setDrvSeatEsb(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drvSeatEsb"
        }
    .end annotation

    .line 498
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->drvSeatEsb:Z

    return-void
.end method

.method public setDrvSeatPos(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatPos"
        }
    .end annotation

    .line 898
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->drvSeatPos:Z

    return-void
.end method

.method public setEspMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "espMode"
        }
    .end annotation

    .line 126
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->espMode:Z

    return-void
.end method

.method public setFcw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fcw"
        }
    .end annotation

    .line 674
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->fcw:Z

    return-void
.end method

.method public setHighSpdCloseWin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highSpdCloseWin"
        }
    .end annotation

    .line 530
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->highSpdCloseWin:Z

    return-void
.end method

.method public setHvacAirProtect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hvacAirProtect"
        }
    .end annotation

    .line 594
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacAirProtect:Z

    return-void
.end method

.method public setHvacAqs(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hvacAqs"
        }
    .end annotation

    .line 586
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacAqs:Z

    return-void
.end method

.method public setHvacCircle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hvacCircle"
        }
    .end annotation

    .line 578
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacCircle:Z

    return-void
.end method

.method public setHvacSelfDry(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hvacSelfDry"
        }
    .end annotation

    .line 602
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacSelfDry:Z

    return-void
.end method

.method public setHvacSmart(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hvacSmart"
        }
    .end annotation

    .line 610
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->hvacSmart:Z

    return-void
.end method

.method public setIslc(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "islc"
        }
    .end annotation

    .line 794
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->islc:Z

    return-void
.end method

.method public setKeyParkCfg(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyParkCfg"
        }
    .end annotation

    .line 762
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->keyParkCfg:Z

    return-void
.end method

.method public setKeyParkSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyParkSw"
        }
    .end annotation

    .line 754
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->keyParkSw:Z

    return-void
.end method

.method public setLampHeightLevel(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lampHeightLevel"
        }
    .end annotation

    .line 1026
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lampHeightLevel:Z

    return-void
.end method

.method public setLcc(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lcc"
        }
    .end annotation

    .line 786
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lcc:Z

    return-void
.end method

.method public setLdw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ldw"
        }
    .end annotation

    .line 698
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ldw:Z

    return-void
.end method

.method public setLeftDoorHotKey(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftDoorHotKey"
        }
    .end annotation

    .line 466
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->leftDoorHotKey:Z

    return-void
.end method

.method public setLightMeHome(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightMeHome"
        }
    .end annotation

    .line 210
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lightMeHome:Z

    return-void
.end method

.method public setLightMeHomeTime(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightMeHomeTime"
        }
    .end annotation

    .line 218
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lightMeHomeTime:Z

    return-void
.end method

.method public setLluChargeSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluChargeSw"
        }
    .end annotation

    .line 290
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluChargeSw:Z

    return-void
.end method

.method public setLluEffectLockingMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluEffectLockingMode"
        }
    .end annotation

    .line 298
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluEffectLockingMode:Z

    return-void
.end method

.method public setLluLockSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluLockSw"
        }
    .end annotation

    .line 282
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluLockSw:Z

    return-void
.end method

.method public setLluSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluSw"
        }
    .end annotation

    .line 266
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluSw:Z

    return-void
.end method

.method public setLluUnlockSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluUnlockSw"
        }
    .end annotation

    .line 274
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lluUnlockSw:Z

    return-void
.end method

.method public setLockCloseWin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lockCloseWin"
        }
    .end annotation

    .line 538
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lockCloseWin:Z

    return-void
.end method

.method public setLockResponseNew(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lockResponseNew"
        }
    .end annotation

    .line 418
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lockResponseNew:Z

    return-void
.end method

.method public setLss(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lss"
        }
    .end annotation

    .line 1018
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->lss:Z

    return-void
.end method

.method public setMemParkSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memParkSw"
        }
    .end annotation

    .line 730
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->memParkSw:Z

    return-void
.end method

.method public setMeterDefineMediaSource(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meterDefineMediaSource"
        }
    .end annotation

    .line 938
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineMediaSource:Z

    return-void
.end method

.method public setMeterDefineScreenLight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meterDefineScreenLight"
        }
    .end annotation

    .line 946
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineScreenLight:Z

    return-void
.end method

.method public setMeterDefineTemperature(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meterDefineTemperature"
        }
    .end annotation

    .line 914
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineTemperature:Z

    return-void
.end method

.method public setMeterDefineWindMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meterDefineWindMode"
        }
    .end annotation

    .line 930
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineWindMode:Z

    return-void
.end method

.method public setMeterDefineWindPower(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meterDefineWindPower"
        }
    .end annotation

    .line 922
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterDefineWindPower:Z

    return-void
.end method

.method public setMeterWarnSound(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meterWarnSound"
        }
    .end annotation

    .line 906
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->meterWarnSound:Z

    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "microphoneMute"
        }
    .end annotation

    .line 554
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->microphoneMute:Z

    return-void
.end method

.method public setMirrorAutoDown(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 970
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mirrorAutoDown:Z

    return-void
.end method

.method public setMirrorAutoFold(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 978
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mirrorAutoFold:Z

    return-void
.end method

.method public setMirrorPos(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorPos"
        }
    .end annotation

    .line 514
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mirrorPos:Z

    return-void
.end method

.method public setMirrorReverse(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorReverse"
        }
    .end annotation

    .line 522
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mirrorReverse:Z

    return-void
.end method

.method public setNGearProtectSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nGearProtectSw"
        }
    .end annotation

    .line 202
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->nGearProtectSw:Z

    return-void
.end method

.method public setNgpAutoLcs(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngpAutoLcs"
        }
    .end annotation

    .line 858
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpAutoLcs:Z

    return-void
.end method

.method public setNgpFastLane(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngpFastLane"
        }
    .end annotation

    .line 834
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpFastLane:Z

    return-void
.end method

.method public setNgpLcMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngpLcMode"
        }
    .end annotation

    .line 866
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpLcMode:Z

    return-void
.end method

.method public setNgpRemindMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngpRemindMode"
        }
    .end annotation

    .line 874
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpRemindMode:Z

    return-void
.end method

.method public setNgpSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngpSw"
        }
    .end annotation

    .line 826
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpSw:Z

    return-void
.end method

.method public setNgpTipWin(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngpTipWin"
        }
    .end annotation

    .line 850
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpTipWin:Z

    return-void
.end method

.method public setNgpTruckOffset(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngpTruckOffset"
        }
    .end annotation

    .line 842
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->ngpTruckOffset:Z

    return-void
.end method

.method public setNra(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nra"
        }
    .end annotation

    .line 810
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->nra:Z

    return-void
.end method

.method public setNraSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nraSw"
        }
    .end annotation

    .line 818
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->nraSw:Z

    return-void
.end method

.method public setOtherVolume(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherVolume"
        }
    .end annotation

    .line 650
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->otherVolume:Z

    return-void
.end method

.method public setParkAutoUnlock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parkAutoUnlock"
        }
    .end annotation

    .line 386
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->parkAutoUnlock:Z

    return-void
.end method

.method public setParkLampB(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parkLampB"
        }
    .end annotation

    .line 250
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->parkLampB:Z

    return-void
.end method

.method public setPhoneParkCfg(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phoneParkCfg"
        }
    .end annotation

    .line 778
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->phoneParkCfg:Z

    return-void
.end method

.method public setPhoneParkSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phoneParkSw"
        }
    .end annotation

    .line 770
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->phoneParkSw:Z

    return-void
.end method

.method public setPollingLock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pollingLock"
        }
    .end annotation

    .line 394
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->pollingLock:Z

    return-void
.end method

.method public setPollingUnlock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pollingUnlock"
        }
    .end annotation

    .line 402
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->pollingUnlock:Z

    return-void
.end method

.method public setRcta(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rcta"
        }
    .end annotation

    .line 714
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rcta:Z

    return-void
.end method

.method public setRcw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rcw"
        }
    .end annotation

    .line 706
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rcw:Z

    return-void
.end method

.method public setRearLogoLightSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rearLogoLightSw"
        }
    .end annotation

    .line 258
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mRearLogoLightSw:Z

    return-void
.end method

.method public setRearSeatWelcomeMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rearSeatWelcomeMode"
        }
    .end annotation

    .line 490
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rearSeatWelcomeMode:Z

    return-void
.end method

.method public setRecycleGrade(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recycleGrade"
        }
    .end annotation

    .line 78
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->recycleGrade:Z

    return-void
.end method

.method public setRemoteCallSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteCallSw"
        }
    .end annotation

    .line 746
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->remoteCallSw:Z

    return-void
.end method

.method public setRightDoorHotKey(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightDoorHotKey"
        }
    .end annotation

    .line 474
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rightDoorHotKey:Z

    return-void
.end method

.method public setRsbWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rsbWarning"
        }
    .end annotation

    .line 506
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->rsbWarning:Z

    return-void
.end method

.method public setSayHiEffect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sayHiEffect"
        }
    .end annotation

    .line 642
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->sayHiEffect:Z

    return-void
.end method

.method public setSdcBrakeCloseType(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdcBrakeCloseType"
        }
    .end annotation

    .line 1050
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSdcBrakeCloseType:Z

    return-void
.end method

.method public setSeatAntiFatigueFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1194
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSeatAntiFatigueFlag:Z

    return-void
.end method

.method public setSecLeftBeltWarningFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1142
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSecRowLeftBeltWarningFlag:Z

    return-void
.end method

.method public setSecMidBeltWarningFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1150
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSecRowMidBeltWarningFlag:Z

    return-void
.end method

.method public setSecRightBeltWarningFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1158
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mSecRowRightBeltWarningFlag:Z

    return-void
.end method

.method public setSensorTrunkSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensorTrunkSw"
        }
    .end annotation

    .line 986
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->sensorTrunkSw:Z

    return-void
.end method

.method public setSideReversingWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sideReversingWarning"
        }
    .end annotation

    .line 1002
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->sideReversingWarning:Z

    return-void
.end method

.method public setSinglePedal(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singlePedal"
        }
    .end annotation

    .line 118
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->singlePedal:Z

    return-void
.end method

.method public setSpeedLimit(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speedLimit"
        }
    .end annotation

    .line 954
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->speedLimit:Z

    return-void
.end method

.method public setSpeedLimitValue(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speedLimitValue"
        }
    .end annotation

    .line 962
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->speedLimitValue:Z

    return-void
.end method

.method public setSteerMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "steerMode"
        }
    .end annotation

    .line 86
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->steerMode:Z

    return-void
.end method

.method public setSteerPos(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "steerPos"
        }
    .end annotation

    .line 1042
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->steerPos:Z

    return-void
.end method

.method public setTrdLeftBeltWarningFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1166
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mTrdRowLeftBeltWarningFlag:Z

    return-void
.end method

.method public setTrdMidBeltWarningFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1174
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mTrdRowMidBeltWarningFlag:Z

    return-void
.end method

.method public setTrdRightBeltWarningFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1182
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mTrdRowRightBeltWarningFlag:Z

    return-void
.end method

.method public setTrunkFullOpenPos(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trunkFullOpenPos"
        }
    .end annotation

    .line 994
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->trunkFullOpenPos:Z

    return-void
.end method

.method public setUnLockResponseNew(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unlockResponseNew"
        }
    .end annotation

    .line 426
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->unlockResponseNew:Z

    return-void
.end method

.method public setUnlockResponse(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unlockResponse"
        }
    .end annotation

    .line 410
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->unlockResponse:Z

    return-void
.end method

.method public setWelcomeMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "welcomeMode"
        }
    .end annotation

    .line 482
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->welcomeMode:Z

    return-void
.end method

.method public setWheelKeyProtect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelKeyProtect"
        }
    .end annotation

    .line 194
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelKeyProtect:Z

    return-void
.end method

.method public setWheelTouchDirection(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelTouchDirection"
        }
    .end annotation

    .line 158
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelTouchDirection:Z

    return-void
.end method

.method public setWheelTouchHint(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelTouchHint"
        }
    .end annotation

    .line 150
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelTouchHint:Z

    return-void
.end method

.method public setWheelTouchSpeed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelTouchSpeed"
        }
    .end annotation

    .line 166
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelTouchSpeed:Z

    return-void
.end method

.method public setWheelXKey(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelXKey"
        }
    .end annotation

    .line 174
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wheelXKey:Z

    return-void
.end method

.method public setWiperInterval(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wiperInterval"
        }
    .end annotation

    .line 546
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->wiperInterval:Z

    return-void
.end method

.method public setWiperSensitivity(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wiperSensitivity"
        }
    .end annotation

    .line 558
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mWiperSensitivity:Z

    return-void
.end method

.method public setXpedal(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xpedal"
        }
    .end annotation

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->xpedal:Z

    return-void
.end method

.method public setmIgOnAutoCheckSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1134
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataEvent;->mIgOnAutoCheckSw:Z

    return-void
.end method
