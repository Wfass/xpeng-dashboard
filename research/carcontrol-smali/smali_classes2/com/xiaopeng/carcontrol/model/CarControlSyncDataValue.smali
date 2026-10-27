.class public Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;
.super Ljava/lang/Object;
.source "CarControlSyncDataValue.java"


# instance fields
.field private mAllDriveSubItem:Ljava/lang/String;

.field private mAntiSick:Z

.field private mAsWelcomeMode:Z

.field private mAtlAutoBrightSw:Z

.field private mAtlBrightCfg:I

.field private mAtlDualColor:Ljava/lang/String;

.field private mAtlDualColorSw:Z

.field private mAtlEffectCfg:Ljava/lang/String;

.field private mAtlRgbDualColor:Ljava/lang/String;

.field private mAtlRgbSingleColor:Ljava/lang/String;

.field private mAtlSingleColor:I

.field private mAtlSw:Z

.field private mAutoCheckSw:Z

.field private mAutoDhc:Z

.field private mAutoDriveMode:Z

.field private mAutoLampHeight:Z

.field private mAutoLightSw:Z

.field private mAvasEffect:I

.field private mAvasSw:Z

.field private mAvasVolume:I

.field private mAvh:Z

.field private mBootEffect:I

.field private mBootEffectBeforeSw:I

.field private mBrakeWarning:Z

.field private mCdcMode:I

.field private mChildLeftLock:Z

.field private mChildLock:I

.field private mChildRightLock:Z

.field private mCmsAutoBrightSw:Z

.field private mCmsBright:I

.field private mCmsHighSpdSw:Z

.field private mCmsLowSpdSw:Z

.field private mCmsObjectRecognizeSw:Z

.field private mCmsPos:Ljava/lang/String;

.field private mCmsReverseSw:Z

.field private mCmsTurnSw:Z

.field private mCmsViewAngle:I

.field private mCmsViewRecoverySw:Z

.field private mCwcSw:Z

.field private mDomeLightBright:I

.field private mDomeLightCfg:I

.field private mDoorBossKey:I

.field private mDoorBossKeySw:Z

.field private mDriveAutoLock:Z

.field private mDriveMode:I

.field private mDrvSeatEsb:Z

.field private mDrvSeatPos1:Ljava/lang/String;

.field private mDrvSeatPos2:Ljava/lang/String;

.field private mDrvSeatPos3:Ljava/lang/String;

.field private mDrvSeatPosIdx:I

.field private mDrvSeatPosNew:Ljava/lang/String;

.field private mEsp:I

.field private mHighSpdCloseWin:Z

.field private mLampHeightLevel:I

.field private mLeftDoorHotKey:Z

.field private mLightMeHomeCfg:I

.field private mLightMeHomeSw:Z

.field private mLluChargeSw:Z

.field private mLluEffectLockingMode:I

.field private mLluLockSw:Z

.field private mLluSw:Z

.field private mLluUnlockSw:Z

.field private mLockCloseWin:Z

.field private mLockResponseNew:I

.field private mMeterDefineMediaSource:Z

.field private mMeterDefineScreenLight:Z

.field private mMeterDefineTemperature:Z

.field private mMeterDefineWindMode:Z

.field private mMeterDefineWindPower:Z

.field private mMicrophoneMute:Z

.field private mMirrorAutoDown:Z

.field private mMirrorAutoFoldSw:Z

.field private mMirrorPos:Ljava/lang/String;

.field private mMirrorReverseMode:I

.field private mNGearProtectSw:Z

.field private mNeedRestore:Z

.field private mNraState:I

.field private mNraSw:Z

.field private mOtherVolume:I

.field private mParkAutoUnlock:Z

.field private mParkLampB:Z

.field private mPollingLock:Z

.field private mPollingUnlock:Z

.field private mPsnSeatPos:Ljava/lang/String;

.field private mPsnWelcomeMode:Z

.field private mRearLogoLightSw:Z

.field private mRearSeatWelcomeMode:Z

.field private mRecycleGrade:I

.field private mRightDoorHotKey:Z

.field private mRsbWarning:Z

.field private mSayHiEffect:I

.field private mSdcBrakeCloseCfg:I

.field private mSensorTrunkSw:Z

.field private mSideReversingWarning:Z

.field private mSinglePedal:Z

.field private mSpeedLimit:Z

.field private mSpeedLimitValue:I

.field private mSteerMode:I

.field private mSteerPos:Ljava/lang/String;

.field private mTrunkFullOpenPos:I

.field private mUnLockResponseNew:I

.field private mUnlockResponse:I

.field private mWelcomeMode:Z

.field private mWheelKeyProtect:Z

.field private mWheelTouchDirection:I

.field private mWheelTouchHint:Z

.field private mWheelTouchSpeed:I

.field private mWheelXKey:I

.field private mWiperInterval:I

.field private mWiperSensitivity:I

.field private mXPedal:Z

.field private seatAntiFatigueSw:Z

.field private secRowLeftBeltWarning:Z

.field private secRowMiddleBeltWarning:Z

.field private secRowRightBeltWarning:Z

.field private trdRowLeftBeltWarning:Z

.field private trdRowMidBeltWarning:Z

.field private trdRowRightBeltWarning:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDriveMode:I

    .line 19
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoDriveMode:Z

    const/4 v1, 0x1

    .line 20
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRecycleGrade:I

    .line 21
    iput v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSteerMode:I

    .line 22
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvh:Z

    .line 23
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mEsp:I

    .line 24
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mXPedal:Z

    .line 25
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAntiSick:Z

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAsWelcomeMode:Z

    .line 27
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCdcMode:I

    .line 28
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSinglePedal:Z

    .line 31
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchHint:Z

    .line 32
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchDirection:I

    .line 33
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchSpeed:I

    .line 34
    iput v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelXKey:I

    .line 35
    iput v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDoorBossKey:I

    .line 36
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDoorBossKeySw:Z

    .line 37
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelKeyProtect:Z

    .line 38
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNGearProtectSw:Z

    .line 41
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLightMeHomeSw:Z

    .line 42
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLightMeHomeCfg:I

    .line 43
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoLightSw:Z

    .line 44
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDomeLightCfg:I

    .line 45
    sget v2, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->DOME_BRIGHT:I

    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDomeLightBright:I

    .line 46
    sget-boolean v2, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->PARK_LAMP_B:Z

    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mParkLampB:Z

    .line 47
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRearLogoLightSw:Z

    .line 50
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluSw:Z

    .line 51
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluUnlockSw:Z

    .line 52
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluLockSw:Z

    .line 53
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluChargeSw:Z

    const/4 v2, 0x3

    .line 54
    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluEffectLockingMode:I

    .line 57
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlSw:Z

    .line 58
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlAutoBrightSw:Z

    const/16 v3, 0x64

    .line 59
    iput v3, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlBrightCfg:I

    const-string/jumbo v4, "stable_effect"

    .line 60
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlEffectCfg:Ljava/lang/String;

    .line 61
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlDualColorSw:Z

    const/16 v4, 0xe

    .line 62
    iput v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlSingleColor:I

    const/4 v4, 0x0

    .line 63
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlDualColor:Ljava/lang/String;

    const-string/jumbo v5, "{\"0\":749311}"

    .line 64
    iput-object v5, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlRgbSingleColor:Ljava/lang/String;

    .line 65
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlRgbDualColor:Ljava/lang/String;

    .line 68
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mParkAutoUnlock:Z

    .line 69
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDriveAutoLock:Z

    .line 70
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPollingLock:Z

    .line 71
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPollingUnlock:Z

    .line 72
    sget v5, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->UNLOCK_RESPONSE:I

    iput v5, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mUnlockResponse:I

    .line 73
    sget v5, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->UNLOCK_RESPONSE:I

    iput v5, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLockResponseNew:I

    .line 74
    sget v5, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->UNLOCK_RESPONSE:I

    iput v5, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mUnLockResponseNew:I

    .line 75
    sget-boolean v5, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->AUTO_DOOR_HANDLE:Z

    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoDhc:Z

    .line 76
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildLock:I

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildLeftLock:Z

    .line 78
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildRightLock:Z

    .line 79
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLeftDoorHotKey:Z

    .line 80
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRightDoorHotKey:Z

    .line 84
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos1:Ljava/lang/String;

    .line 85
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos2:Ljava/lang/String;

    .line 86
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos3:Ljava/lang/String;

    .line 87
    iput v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPosIdx:I

    .line 88
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPosNew:Ljava/lang/String;

    .line 89
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPsnSeatPos:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWelcomeMode:Z

    .line 92
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPsnWelcomeMode:Z

    .line 93
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRearSeatWelcomeMode:Z

    .line 95
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatEsb:Z

    .line 97
    sget-object v5, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->STEER_POS:Ljava/lang/String;

    iput-object v5, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSteerPos:Ljava/lang/String;

    .line 99
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorPos:Ljava/lang/String;

    .line 100
    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorReverseMode:I

    .line 101
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNeedRestore:Z

    .line 102
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorAutoDown:Z

    .line 103
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorAutoFoldSw:Z

    .line 106
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSensorTrunkSw:Z

    const/4 v5, 0x6

    .line 107
    iput v5, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mTrunkFullOpenPos:I

    .line 110
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mHighSpdCloseWin:Z

    .line 111
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLockCloseWin:Z

    .line 112
    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWiperInterval:I

    .line 113
    sget v2, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->WIPER_Sensitivity:I

    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWiperSensitivity:I

    .line 114
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCwcSw:Z

    .line 115
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMicrophoneMute:Z

    .line 118
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasSw:Z

    .line 119
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasEffect:I

    .line 120
    iput v3, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasVolume:I

    .line 121
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSayHiEffect:I

    .line 122
    iput v3, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mOtherVolume:I

    const/4 v2, 0x2

    .line 123
    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBootEffect:I

    .line 124
    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBootEffectBeforeSw:I

    .line 127
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineTemperature:Z

    .line 128
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineWindPower:Z

    .line 129
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineWindMode:Z

    const-string v3, "isSupportSwitchMedia"

    .line 130
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineMediaSource:Z

    .line 132
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineScreenLight:Z

    .line 133
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSpeedLimit:Z

    const/16 v3, 0x50

    .line 134
    iput v3, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSpeedLimitValue:I

    .line 137
    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNraState:I

    .line 138
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNraSw:Z

    .line 141
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSideReversingWarning:Z

    .line 142
    sget-boolean v2, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->EMERGENCY_BREAK_WARNING:Z

    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBrakeWarning:Z

    .line 144
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRsbWarning:Z

    .line 146
    iput v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLampHeightLevel:I

    .line 147
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoLampHeight:Z

    .line 150
    iput v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSdcBrakeCloseCfg:I

    .line 153
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsReverseSw:Z

    .line 154
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsTurnSw:Z

    .line 155
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsHighSpdSw:Z

    .line 156
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsLowSpdSw:Z

    .line 157
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsAutoBrightSw:Z

    const/16 v2, 0x32

    .line 158
    iput v2, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsBright:I

    .line 159
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsPos:Ljava/lang/String;

    .line 160
    iput v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsViewAngle:I

    .line 161
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsObjectRecognizeSw:Z

    .line 162
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsViewRecoverySw:Z

    .line 163
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoCheckSw:Z

    .line 164
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowLeftBeltWarning:Z

    .line 165
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowMiddleBeltWarning:Z

    .line 166
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowRightBeltWarning:Z

    .line 167
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowLeftBeltWarning:Z

    .line 168
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowMidBeltWarning:Z

    .line 169
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowRightBeltWarning:Z

    .line 170
    iput-object v4, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAllDriveSubItem:Ljava/lang/String;

    .line 171
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->seatAntiFatigueSw:Z

    .line 173
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->getDefaultEnergyRecycleGrade()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRecycleGrade:I

    return-void
.end method


# virtual methods
.method public getAllDriveSubItem()Ljava/lang/String;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAllDriveSubItem:Ljava/lang/String;

    return-object v0
.end method

.method public getAntiSickSw()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAntiSick:Z

    return v0
.end method

.method public getAsWelcomeMode()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAsWelcomeMode:Z

    return v0
.end method

.method public getAtlBrightCfg()I
    .locals 1

    .line 441
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlBrightCfg:I

    return v0
.end method

.method public getAtlDualColor()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlDualColor:Ljava/lang/String;

    return-object v0
.end method

.method public getAtlEffectCfg()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlEffectCfg:Ljava/lang/String;

    return-object v0
.end method

.method public getAtlRgbDualColor()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlRgbDualColor:Ljava/lang/String;

    return-object v0
.end method

.method public getAtlRgbSingleColor()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlRgbSingleColor:Ljava/lang/String;

    return-object v0
.end method

.method public getAtlSingleColor()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlSingleColor:I

    return v0
.end method

.method public getAutoCheckSw()Z
    .locals 1

    .line 1055
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoCheckSw:Z

    return v0
.end method

.method public getAvasEffect()I
    .locals 1

    .line 769
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasEffect:I

    return v0
.end method

.method public getAvasVolume()I
    .locals 1

    .line 777
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasVolume:I

    return v0
.end method

.method public getBootEffect()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBootEffect:I

    return v0
.end method

.method public getBootEffectBeforeSw()I
    .locals 1

    .line 809
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBootEffectBeforeSw:I

    return v0
.end method

.method public getCdcMode()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCdcMode:I

    return v0
.end method

.method public getChildLeftLock()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildLeftLock:Z

    return v0
.end method

.method public getChildLock()I
    .locals 1

    .line 561
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildLock:I

    return v0
.end method

.method public getChildRightLock()Z
    .locals 1

    .line 577
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildRightLock:Z

    return v0
.end method

.method public getCmsAutoBrightSw()Z
    .locals 1

    .line 1003
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsAutoBrightSw:Z

    return v0
.end method

.method public getCmsBright()I
    .locals 1

    .line 1011
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsBright:I

    return v0
.end method

.method public getCmsHighSpdSw()Z
    .locals 1

    .line 987
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsHighSpdSw:Z

    return v0
.end method

.method public getCmsLowSpdSw()Z
    .locals 1

    .line 995
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsLowSpdSw:Z

    return v0
.end method

.method public getCmsObjectRecognizeSw()Z
    .locals 1

    .line 1035
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsObjectRecognizeSw:Z

    return v0
.end method

.method public getCmsPos()Ljava/lang/String;
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsPos:Ljava/lang/String;

    return-object v0
.end method

.method public getCmsReverseSw()Z
    .locals 1

    .line 971
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsReverseSw:Z

    return v0
.end method

.method public getCmsTurnSw()Z
    .locals 1

    .line 979
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsTurnSw:Z

    return v0
.end method

.method public getCmsViewAngle()I
    .locals 1

    .line 1031
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsViewAngle:I

    return v0
.end method

.method public getCmsViewRecoverySw()Z
    .locals 1

    .line 1043
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsViewRecoverySw:Z

    return v0
.end method

.method public getDomeLightBright()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDomeLightBright:I

    return v0
.end method

.method public getDomeLightCfg()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDomeLightCfg:I

    return v0
.end method

.method public getDoorBossKey()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDoorBossKey:I

    return v0
.end method

.method public getDoorBossKeySw()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDoorBossKeySw:Z

    return v0
.end method

.method public getDriveMode()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDriveMode:I

    return v0
.end method

.method public getDrvSeatPos1()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos1:Ljava/lang/String;

    return-object v0
.end method

.method public getDrvSeatPos2()Ljava/lang/String;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos2:Ljava/lang/String;

    return-object v0
.end method

.method public getDrvSeatPos3()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos3:Ljava/lang/String;

    return-object v0
.end method

.method public getDrvSeatPosIdx()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPosIdx:I

    return v0
.end method

.method public getDrvSeatPosNew()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPosNew:Ljava/lang/String;

    return-object v0
.end method

.method public getEsp()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mEsp:I

    return v0
.end method

.method public getLampHeightLevel()I
    .locals 1

    .line 947
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLampHeightLevel:I

    return v0
.end method

.method public getLeftDoorHotKey()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLeftDoorHotKey:Z

    return v0
.end method

.method public getLightMeHomeCfg()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLightMeHomeCfg:I

    return v0
.end method

.method public getLluEffectLockingMode()I
    .locals 1

    .line 417
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluEffectLockingMode:I

    return v0
.end method

.method public getLockResponseNew()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLockResponseNew:I

    return v0
.end method

.method public getMirrorAutoDown()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorAutoDown:Z

    return v0
.end method

.method public getMirrorAutoFoldEnable()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorAutoFoldSw:Z

    return v0
.end method

.method public getMirrorPos()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorPos:Ljava/lang/String;

    return-object v0
.end method

.method public getMirrorReverseMode()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorReverseMode:I

    return v0
.end method

.method public getNGearProtectSw()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNGearProtectSw:Z

    return v0
.end method

.method public getNraState()I
    .locals 1

    .line 882
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNraState:I

    return v0
.end method

.method public getOtherVolume()I
    .locals 1

    .line 793
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mOtherVolume:I

    return v0
.end method

.method public getParkLampB()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mParkLampB:Z

    return v0
.end method

.method public getPsnSeatPos()Ljava/lang/String;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPsnSeatPos:Ljava/lang/String;

    return-object v0
.end method

.method public getRearLogoLightSw()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRearLogoLightSw:Z

    return v0
.end method

.method public getRecycleGrade()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRecycleGrade:I

    return v0
.end method

.method public getRightDoorHotKey()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRightDoorHotKey:Z

    return v0
.end method

.method public getSayHiEffect()I
    .locals 1

    .line 785
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSayHiEffect:I

    return v0
.end method

.method public getSdcBrakeCloseCfg()I
    .locals 1

    .line 963
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSdcBrakeCloseCfg:I

    return v0
.end method

.method public getSeatAntiFatigueSw()Z
    .locals 1

    .line 1115
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->seatAntiFatigueSw:Z

    return v0
.end method

.method public getSecLeftSeatBeltWarning()Z
    .locals 1

    .line 1063
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowLeftBeltWarning:Z

    return v0
.end method

.method public getSecMiddleSeatBeltWarning()Z
    .locals 1

    .line 1071
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowMiddleBeltWarning:Z

    return v0
.end method

.method public getSecRightSeatBeltWarning()Z
    .locals 1

    .line 1079
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowRightBeltWarning:Z

    return v0
.end method

.method public getSensorTrunkSw()Z
    .locals 1

    .line 721
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSensorTrunkSw:Z

    return v0
.end method

.method public getSinglePedal()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSinglePedal:Z

    return v0
.end method

.method public getSpeedLimitValue()I
    .locals 1

    .line 865
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSpeedLimitValue:I

    return v0
.end method

.method public getSteerMode()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSteerMode:I

    return v0
.end method

.method public getSteerPos()Ljava/lang/String;
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSteerPos:Ljava/lang/String;

    return-object v0
.end method

.method public getTrdLeftSeatBeltWarning()Z
    .locals 1

    .line 1087
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowLeftBeltWarning:Z

    return v0
.end method

.method public getTrdMidSeatBeltWarning()Z
    .locals 1

    .line 1096
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowMidBeltWarning:Z

    return v0
.end method

.method public getTrdRightSeatBeltWarning()Z
    .locals 1

    .line 1104
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowRightBeltWarning:Z

    return v0
.end method

.method public getTrunkFullOpenPos()I
    .locals 1

    .line 729
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mTrunkFullOpenPos:I

    return v0
.end method

.method public getUnLockResponseNew()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mUnLockResponseNew:I

    return v0
.end method

.method public getUnlockResponse()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mUnlockResponse:I

    return v0
.end method

.method public getWheelKeyProtect()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelKeyProtect:Z

    return v0
.end method

.method public getWheelTouchDirection()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchDirection:I

    return v0
.end method

.method public getWheelTouchSpeed()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchSpeed:I

    return v0
.end method

.method public getWheelXKey()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelXKey:I

    return v0
.end method

.method public getWiperInterval()I
    .locals 1

    .line 753
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWiperInterval:I

    return v0
.end method

.method public getWiperSensitivity()I
    .locals 1

    .line 914
    iget v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWiperSensitivity:I

    return v0
.end method

.method public getXpedalSw()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mXPedal:Z

    return v0
.end method

.method public isAtlAutoBrightSw()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlAutoBrightSw:Z

    return v0
.end method

.method public isAtlDualColorSw()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlDualColorSw:Z

    return v0
.end method

.method public isAtlSw()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlSw:Z

    return v0
.end method

.method public isAutoDhc()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoDhc:Z

    return v0
.end method

.method public isAutoDriveMode()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoDriveMode:Z

    return v0
.end method

.method public isAutoLampHeight()Z
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoLampHeight:Z

    return v0
.end method

.method public isAutoLightSw()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoLightSw:Z

    return v0
.end method

.method public isAvasSw()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasSw:Z

    return v0
.end method

.method public isAvh()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvh:Z

    return v0
.end method

.method public isBrakeWarning()Z
    .locals 1

    .line 898
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBrakeWarning:Z

    return v0
.end method

.method public isCwcSwEnabled()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCwcSw:Z

    return v0
.end method

.method public isDriveAutoLock()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDriveAutoLock:Z

    return v0
.end method

.method public isDrvSeatEsb()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatEsb:Z

    return v0
.end method

.method public isHighSpdCloseWin()Z
    .locals 1

    .line 737
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mHighSpdCloseWin:Z

    return v0
.end method

.method public isLightMeHomeSw()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLightMeHomeSw:Z

    return v0
.end method

.method public isLluChargeSw()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluChargeSw:Z

    return v0
.end method

.method public isLluLockSw()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluLockSw:Z

    return v0
.end method

.method public isLluSw()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluSw:Z

    return v0
.end method

.method public isLluUnlockSw()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluUnlockSw:Z

    return v0
.end method

.method public isLockCloseWin()Z
    .locals 1

    .line 745
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLockCloseWin:Z

    return v0
.end method

.method public isMeterDefineMediaSource()Z
    .locals 1

    .line 841
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineMediaSource:Z

    return v0
.end method

.method public isMeterDefineScreenLight()Z
    .locals 1

    .line 849
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineScreenLight:Z

    return v0
.end method

.method public isMeterDefineTemperature()Z
    .locals 1

    .line 817
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineTemperature:Z

    return v0
.end method

.method public isMeterDefineWindMode()Z
    .locals 1

    .line 833
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineWindMode:Z

    return v0
.end method

.method public isMeterDefineWindPower()Z
    .locals 1

    .line 825
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineWindPower:Z

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .line 930
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMicrophoneMute:Z

    return v0
.end method

.method public isNeedRestore()Z
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNeedRestore:Z

    return v0
.end method

.method public isNraSw()Z
    .locals 1

    .line 878
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNraSw:Z

    return v0
.end method

.method public isParkAutoUnlock()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mParkAutoUnlock:Z

    return v0
.end method

.method public isPollingLock()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPollingLock:Z

    return v0
.end method

.method public isPollingUnlock()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPollingUnlock:Z

    return v0
.end method

.method public isPsnWelcomeMode()Z
    .locals 1

    .line 657
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPsnWelcomeMode:Z

    return v0
.end method

.method public isRearSeatWelcomeMode()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRearSeatWelcomeMode:Z

    return v0
.end method

.method public isRsbWarning()Z
    .locals 1

    .line 906
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRsbWarning:Z

    return v0
.end method

.method public isSideReversingWarning()Z
    .locals 1

    .line 890
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSideReversingWarning:Z

    return v0
.end method

.method public isSpeedLimit()Z
    .locals 1

    .line 857
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSpeedLimit:Z

    return v0
.end method

.method public isWelcomeMode()Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWelcomeMode:Z

    return v0
.end method

.method public isWheelTouchHint()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchHint:Z

    return v0
.end method

.method public setAllDriveSubItem(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveSubItem"
        }
    .end annotation

    .line 1108
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAllDriveSubItem:Ljava/lang/String;

    return-void
.end method

.method public setAntiSickSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 253
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAntiSick:Z

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

    .line 229
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAsWelcomeMode:Z

    return-void
.end method

.method public setAtlAutoBrightSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlAutoBrightSw"
        }
    .end annotation

    .line 437
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlAutoBrightSw:Z

    return-void
.end method

.method public setAtlBrightCfg(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlBrightCfg"
        }
    .end annotation

    .line 445
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlBrightCfg:I

    return-void
.end method

.method public setAtlDualColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlDualColor"
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlDualColor:Ljava/lang/String;

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

    .line 461
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlDualColorSw:Z

    return-void
.end method

.method public setAtlEffectCfg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlEffectCfg"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlEffectCfg:Ljava/lang/String;

    return-void
.end method

.method public setAtlRgbDualColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlRgbDualColor"
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlRgbDualColor:Ljava/lang/String;

    return-void
.end method

.method public setAtlRgbSingleColor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlRgbSingleColor"
        }
    .end annotation

    .line 485
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlRgbSingleColor:Ljava/lang/String;

    return-void
.end method

.method public setAtlSingleColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlSingleColor"
        }
    .end annotation

    .line 469
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlSingleColor:I

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

    .line 429
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAtlSw:Z

    return-void
.end method

.method public setAutoCheckSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1051
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoCheckSw:Z

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

    .line 557
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoDhc:Z

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

    .line 189
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoDriveMode:Z

    return-void
.end method

.method public setAutoLampHeight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 959
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoLampHeight:Z

    return-void
.end method

.method public setAutoLightSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoLightSw"
        }
    .end annotation

    .line 349
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAutoLightSw:Z

    return-void
.end method

.method public setAvasEffect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avasEffect"
        }
    .end annotation

    .line 773
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasEffect:I

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

    .line 765
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasSw:Z

    return-void
.end method

.method public setAvasVolume(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avasVolume"
        }
    .end annotation

    .line 781
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvasVolume:I

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

    .line 221
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mAvh:Z

    return-void
.end method

.method public setBootEffect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bootEffect"
        }
    .end annotation

    .line 805
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBootEffect:I

    return-void
.end method

.method public setBootEffectBeforeSw(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bootEffectBeforeSw"
        }
    .end annotation

    .line 813
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBootEffectBeforeSw:I

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

    .line 902
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mBrakeWarning:Z

    return-void
.end method

.method public setCdcMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdcMode"
        }
    .end annotation

    .line 213
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCdcMode:I

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

    .line 573
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildLeftLock:Z

    return-void
.end method

.method public setChildLock(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 565
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildLock:I

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

    .line 581
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mChildRightLock:Z

    return-void
.end method

.method public setCmsAutoBrightSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1007
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsAutoBrightSw:Z

    return-void
.end method

.method public setCmsBright(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 1015
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsBright:I

    return-void
.end method

.method public setCmsHighSpdSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 991
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsHighSpdSw:Z

    return-void
.end method

.method public setCmsLowSpdSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 999
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsLowSpdSw:Z

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

    .line 1039
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsObjectRecognizeSw:Z

    return-void
.end method

.method public setCmsPos(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsPos:Ljava/lang/String;

    return-void
.end method

.method public setCmsReverseSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 975
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsReverseSw:Z

    return-void
.end method

.method public setCmsTurnSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 983
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsTurnSw:Z

    return-void
.end method

.method public setCmsViewAngle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAngle"
        }
    .end annotation

    .line 1027
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsViewAngle:I

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

    .line 1047
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCmsViewRecoverySw:Z

    return-void
.end method

.method public setCwcSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 926
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mCwcSw:Z

    return-void
.end method

.method public setDomeLightBright(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 365
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDomeLightBright:I

    return-void
.end method

.method public setDomeLightCfg(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domeLightCfg"
        }
    .end annotation

    .line 357
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDomeLightCfg:I

    return-void
.end method

.method public setDoorBossKey(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorBossKey"
        }
    .end annotation

    .line 301
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDoorBossKey:I

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

    .line 309
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDoorBossKeySw:Z

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

    .line 509
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDriveAutoLock:Z

    return-void
.end method

.method public setDriveMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 181
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDriveMode:I

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

    .line 677
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatEsb:Z

    return-void
.end method

.method public setDrvSeatPos1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drvSeatPos1"
        }
    .end annotation

    .line 605
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos1:Ljava/lang/String;

    return-void
.end method

.method public setDrvSeatPos2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drvSeatPos2"
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos2:Ljava/lang/String;

    return-void
.end method

.method public setDrvSeatPos3(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drvSeatPos3"
        }
    .end annotation

    .line 621
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPos3:Ljava/lang/String;

    return-void
.end method

.method public setDrvSeatPosIdx(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drvSeatPosIdx"
        }
    .end annotation

    .line 629
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPosIdx:I

    return-void
.end method

.method public setDrvSeatPosNew(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drvSeatPosNew"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mDrvSeatPosNew:Ljava/lang/String;

    return-void
.end method

.method public setEsp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "esp"
        }
    .end annotation

    .line 237
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mEsp:I

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

    .line 741
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mHighSpdCloseWin:Z

    return-void
.end method

.method public setLampHeightLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 951
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLampHeightLevel:I

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

    .line 589
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLeftDoorHotKey:Z

    return-void
.end method

.method public setLightMeHomeCfg(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightMeHomeCfg"
        }
    .end annotation

    .line 341
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLightMeHomeCfg:I

    return-void
.end method

.method public setLightMeHomeSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightMeHomeSw"
        }
    .end annotation

    .line 333
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLightMeHomeSw:Z

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

    .line 421
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluChargeSw:Z

    return-void
.end method

.method public setLluEffectLockingMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectMode"
        }
    .end annotation

    .line 413
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluEffectLockingMode:I

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

    .line 405
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluLockSw:Z

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

    .line 389
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluSw:Z

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

    .line 397
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLluUnlockSw:Z

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

    .line 749
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLockCloseWin:Z

    return-void
.end method

.method public setLockResponseNew(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lockResponseNew"
        }
    .end annotation

    .line 541
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mLockResponseNew:I

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

    .line 845
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineMediaSource:Z

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

    .line 853
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineScreenLight:Z

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

    .line 821
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineTemperature:Z

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

    .line 837
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineWindMode:Z

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

    .line 829
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMeterDefineWindPower:Z

    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 934
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMicrophoneMute:Z

    return-void
.end method

.method public setMirrorAutoDown(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorAutoDown"
        }
    .end annotation

    .line 709
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorAutoDown:Z

    return-void
.end method

.method public setMirrorAutoFoldEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 701
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorAutoFoldSw:Z

    return-void
.end method

.method public setMirrorPos(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorPos"
        }
    .end annotation

    .line 685
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorPos:Ljava/lang/String;

    return-void
.end method

.method public setMirrorReverseMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorReverseMode"
        }
    .end annotation

    .line 693
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mMirrorReverseMode:I

    return-void
.end method

.method public setNGearProtectSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ngearProtectSw"
        }
    .end annotation

    .line 325
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNGearProtectSw:Z

    return-void
.end method

.method public setNeedRestore(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needRestore"
        }
    .end annotation

    .line 717
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNeedRestore:Z

    return-void
.end method

.method public setNraState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 886
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNraState:I

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

    .line 874
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mNraSw:Z

    return-void
.end method

.method public setOtherVolume(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherVolume"
        }
    .end annotation

    .line 797
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mOtherVolume:I

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

    .line 501
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mParkAutoUnlock:Z

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

    .line 373
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mParkLampB:Z

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

    .line 517
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPollingLock:Z

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

    .line 525
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPollingUnlock:Z

    return-void
.end method

.method public setPsnSeatPos(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psnSeatPos"
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPsnSeatPos:Ljava/lang/String;

    return-void
.end method

.method public setPsnWelcomeMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "welcomeMode"
        }
    .end annotation

    .line 661
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mPsnWelcomeMode:Z

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

    .line 381
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRearLogoLightSw:Z

    return-void
.end method

.method public setRearSeatWelcomeMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "welcomeMode"
        }
    .end annotation

    .line 669
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRearSeatWelcomeMode:Z

    return-void
.end method

.method public setRecycleGrade(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recycleGrade"
        }
    .end annotation

    .line 197
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRecycleGrade:I

    return-void
.end method

.method public setRightDoorHotKey(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftDoorHotKey"
        }
    .end annotation

    .line 597
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRightDoorHotKey:Z

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

    .line 910
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mRsbWarning:Z

    return-void
.end method

.method public setSayHiEffect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sayHiEffect"
        }
    .end annotation

    .line 789
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSayHiEffect:I

    return-void
.end method

.method public setSdcBrakeCloseCfg(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 967
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSdcBrakeCloseCfg:I

    return-void
.end method

.method public setSeatAntiFatigueSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatAntiFatigueSw"
        }
    .end annotation

    .line 1119
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->seatAntiFatigueSw:Z

    return-void
.end method

.method public setSecLeftSeatBeltWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1059
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowLeftBeltWarning:Z

    return-void
.end method

.method public setSecMiddleSeatBeltWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1067
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowMiddleBeltWarning:Z

    return-void
.end method

.method public setSecRightSeatBeltWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1075
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->secRowRightBeltWarning:Z

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

    .line 725
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSensorTrunkSw:Z

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

    .line 894
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSideReversingWarning:Z

    return-void
.end method

.method public setSinglePedal(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSinglePedal"
        }
    .end annotation

    .line 261
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSinglePedal:Z

    return-void
.end method

.method public setSpeedLimit(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spdLimit"
        }
    .end annotation

    .line 861
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSpeedLimit:Z

    return-void
.end method

.method public setSpeedLimitValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spdLimitValue"
        }
    .end annotation

    .line 869
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSpeedLimitValue:I

    return-void
.end method

.method public setSteerMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "steerMode"
        }
    .end annotation

    .line 205
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSteerMode:I

    return-void
.end method

.method public setSteerPos(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 939
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mSteerPos:Ljava/lang/String;

    return-void
.end method

.method public setTrdLeftSeatBeltWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1083
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowLeftBeltWarning:Z

    return-void
.end method

.method public setTrdMidSeatBeltWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1092
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowMidBeltWarning:Z

    return-void
.end method

.method public setTrdRightSeatBeltWarning(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1100
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->trdRowRightBeltWarning:Z

    return-void
.end method

.method public setTrunkFullOpenPos(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trunkFullOpenPos"
        }
    .end annotation

    .line 733
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mTrunkFullOpenPos:I

    return-void
.end method

.method public setUnLockResponseNew(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unLockResponseNew"
        }
    .end annotation

    .line 549
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mUnLockResponseNew:I

    return-void
.end method

.method public setUnlockResponse(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unlockResponse"
        }
    .end annotation

    .line 533
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mUnlockResponse:I

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

    .line 653
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWelcomeMode:Z

    return-void
.end method

.method public setWheelKeyProtect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 317
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelKeyProtect:Z

    return-void
.end method

.method public setWheelTouchDirection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelTouchDirection"
        }
    .end annotation

    .line 277
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchDirection:I

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

    .line 269
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchHint:Z

    return-void
.end method

.method public setWheelTouchSpeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelTouchSpeed"
        }
    .end annotation

    .line 285
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelTouchSpeed:I

    return-void
.end method

.method public setWheelXKey(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelXKey"
        }
    .end annotation

    .line 293
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWheelXKey:I

    return-void
.end method

.method public setWiperInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wiperInterval"
        }
    .end annotation

    .line 757
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWiperInterval:I

    return-void
.end method

.method public setWiperSensitivity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 918
    iput p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mWiperSensitivity:I

    return-void
.end method

.method public setXpedalSw(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 245
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/model/CarControlSyncDataValue;->mXPedal:Z

    return-void
.end method
