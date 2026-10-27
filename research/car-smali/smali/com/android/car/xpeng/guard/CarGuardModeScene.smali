.class Lcom/android/car/xpeng/guard/CarGuardModeScene;
.super Ljava/lang/Object;
.source "CarGuardModeScene.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;,
        Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;
    }
.end annotation


# static fields
.field private static final ACTIVE_RECORD_HAZARD_LAST_TIME_MS:J = 0x2710L

.field private static final CAR_GUARD_EXIT_DRIVING_DISTANCE_THRESHOLD:I = 0x32

.field private static final CAR_GUARD_SCENE_ACTIVE_TIMEOUT_MS:J = 0x2bf20L

.field private static final RECOG_DISTANCE_THRESHOLD:I = 0x32

.field private static final RECOG_DURATION_SEC_THRESHOLD:I = 0xa

.field private static final REQUIRED_PROPERTIES:[I

.field private static final SCENE_RECOGNITION_AWAY_HOLD_TIME_MS:J = 0xafc8L

.field private static final SETTINGS_CAR_GUARD_MODE_TIMEOUT_CHECK:Ljava/lang/String; = "SETTINGS_CAR_GUARD_MODE_TIMEOUT_CHECK"

.field private static final SETTINGS_CAR_GUARD_MODE_TIMEOUT_CHECK_COUNT:J = 0x360L

.field private static final SETTINGS_RECOG_DISTANCE_THRESHOLD:Ljava/lang/String; = "SETTINGS_RECOG_DISTANCE_THRESHOLD"

.field private static final SETTINGS_RECOG_DURATION_SEC_THRESHOLD:Ljava/lang/String; = "SETTINGS_RECOG_DURATION_SEC_THRESHOLD"

.field private static final SETTINGS_X_AXIS_VIBRATE_THRESHOLD:Ljava/lang/String; = "SETTINGS_X_AXIS_VIBRATE_THRESHOLD"

.field private static final SETTINGS_Y_AXIS_VIBRATE_THRESHOLD:Ljava/lang/String; = "SETTINGS_Y_AXIS_VIBRATE_THRESHOLD"

.field private static final TAG:Ljava/lang/String; = "CarGuardModeScene"

.field private static final VIBRATE_DURATION_SEC_THRESHOLD:I = 0x2d

.field private static final X_AXIS_VIBRATE_THRESHOLD:F = 0.025f

.field private static final Y_AXIS_VIBRATE_THRESHOLD:F = 0.025f


# instance fields
.field protected isDebugIgOffDisable:Z

.field protected isDebugScreenOnActive:Z

.field private mAfterSalesServiceConnection:Landroid/content/ServiceConnection;

.field protected mAvailableDrivingDistanceThreshold:I

.field private mAvmWorkSt:I

.field private mCarAfterSalesManager:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

.field private mCarGuardBlock:Z

.field private mCarGuardModeActive:Z

.field private final mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

.field private mCarGuardModeSens:I

.field private mCltcAvailableDrivingDistanceFloat:F

.field private mContext:Landroid/content/Context;

.field private mControlSceenOnOff:Z

.field private mCurRecogDisVal:I

.field private volatile mCurRecogDisValTime:J

.field private mCurVibrateActiveStatus:Z

.field private volatile mCurVibrateTime:J

.field protected mDebugLevelOffTimeout:J

.field private mDoorlockEvent:I

.field private mEnduranceMileageMode:I

.field private mFirstFaceRecognitionAway:Z

.field private mGearLevel:I

.field private mGuardBtnEnable:I

.field private mGuardCameraSt:I

.field private mGuardLevel:I

.field private mGuardMcuWorkSt:I

.field private mGuardModeFistReboot:Z

.field private mGuardModeLevel:I

.field private mGuardRemoteSw:I

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mIgStatus:I

.field private final mImuDataArray:[[D

.field private final mImuStdDataArray:[[F

.field private mImuXMaxVal:F

.field private mImuXStdMaxVal:F

.field private mImuYMaxVal:F

.field private mImuYStdMaxVal:F

.field private mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

.field private mLocalDriveFlag:I

.field private mNextImuDataIdx:I

.field private mNextImuDataValid:Z

.field private mOTAState:Z

.field private mPowerMode:I

.field private mPowerOffSource:I

.field private final mPropertyService:Lcom/android/car/CarPropertyService;

.field private mRecogActive:Z

.field private mRecogCurrentDisVal:I

.field private mRecogDistanceThreshold:I

.field private mRecogDurationSecThreshold:J

.field private mRecogInvalidValCount:J

.field private mRecogLogDropCount:I

.field private mRecogMaxVal:F

.field private mRepairModeListener:Lcom/xiaopeng/aftersales/manager/RepairModeListener;

.field private mRepairModeStatus:Z

.field private mThresholdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTrunkStatus:I

.field private mTrunkStatusNew:I

.field private mVcuHighVoltageState:I

.field private mVibrateActive:Z

.field private mVibrateDurationSecThreshold:J

.field private mWltpAvailableDrivingDistanceFloat:F

.field private final mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

.field private mXAxisVibrateThreshold:F

.field private mYAxisVibrateThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->REQUIRED_PROPERTIES:[I

    return-void

    :array_0
    .array-data 4
        0x21401205
        0x21401409
        0x21401c64
        0x21403807
        0x21403410
        0x21401044
        0x21401032
        0x21401042
        0x21401033
        0x21411035
        0x21401c0a
        0x21401227
        0x21401de2
        0x2160127b
        0x2160127a
        0x21401257
        0x21401067
        0x21401210
        0x21401d2f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/16 v0, 0xa

    const/4 v1, 0x3

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, D

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    .line 164
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuStdDataArray:[[F

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataIdx:I

    .line 168
    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    .line 170
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisValTime:J

    .line 171
    iput-wide v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateTime:J

    .line 173
    const v1, 0x3ccccccd    # 0.025f

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    .line 174
    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    .line 176
    const-wide/16 v1, 0x2d

    iput-wide v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateDurationSecThreshold:J

    .line 178
    const/16 v1, 0x32

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    .line 180
    const-wide/16 v2, 0xa

    iput-wide v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    .line 182
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    .line 209
    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    .line 211
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeFistReboot:Z

    .line 212
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGearLevel:I

    .line 213
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mLocalDriveFlag:I

    .line 214
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    .line 216
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPowerMode:I

    .line 217
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPowerOffSource:I

    .line 219
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatus:I

    .line 220
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatusNew:I

    .line 222
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDoorlockEvent:I

    .line 231
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogCurrentDisVal:I

    .line 232
    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogLogDropCount:I

    .line 234
    iput-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mFirstFaceRecognitionAway:Z

    .line 236
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mEnduranceMileageMode:I

    .line 237
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWltpAvailableDrivingDistanceFloat:F

    .line 238
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCltcAvailableDrivingDistanceFloat:F

    .line 240
    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvailableDrivingDistanceThreshold:I

    .line 242
    iput-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mOTAState:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRepairModeStatus:Z

    .line 248
    iput-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    .line 250
    iput-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugIgOffDisable:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugScreenOnActive:Z

    .line 252
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    .line 308
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$1;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene$1;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 322
    iput-object p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    .line 323
    iput-object p2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 324
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    .line 325
    new-instance v0, Landroid/car/xpeng/guard/CarGuardModeEvent;

    const-string v1, "init"

    invoke-direct {v0, v1}, Landroid/car/xpeng/guard/CarGuardModeEvent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/xpeng/guard/CarGuardModeScene;Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;
    .param p1, "x1"    # Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActive(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/xpeng/guard/CarGuardModeScene;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;

    .line 57
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->checkCarGuardModeTimeOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/xpeng/guard/CarGuardModeScene;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardModeLightOffDisplayOnOff(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;

    .line 57
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;

    .line 57
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/xpeng/guard/CarGuardModeScene;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;
    .param p1, "x1"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/car/xpeng/guard/CarGuardModeScene;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRepairModeStatus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/car/xpeng/guard/CarGuardModeScene;Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;
    .param p1, "x1"    # Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;
    .param p2, "x2"    # Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/xiaopeng/aftersales/manager/RepairModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;

    .line 57
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRepairModeListener:Lcom/xiaopeng/aftersales/manager/RepairModeListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/xiaopeng/aftersales/manager/AfterSalesManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;

    .line 57
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarAfterSalesManager:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    return-object v0
.end method

.method private checkCarGuardModeTimeOut()V
    .locals 11

    .line 1261
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SETTINGS_CAR_GUARD_MODE_TIMEOUT_CHECK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1263
    .local v0, "count":I
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1265
    iget-wide v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    const-wide/32 v5, 0x493e0

    div-long/2addr v3, v5

    .line 1266
    .local v3, "timeoutCount":J
    const-string v7, "CarGuardModeScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkCarGuardModeTimeOut: mDebugLevelOffTimeout:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " timeoutCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    int-to-long v7, v0

    cmp-long v7, v7, v3

    if-ltz v7, :cond_0

    .line 1269
    invoke-virtual {p0, v2, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->setCarGuardModeLevel(II)I

    goto :goto_0

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    const/16 v7, 0x7533

    invoke-virtual {v1, v7}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v1, v7}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->removeMessages(I)V

    .line 1274
    :cond_1
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v1, v7, v5, v6}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1275
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "SETTINGS_CAR_GUARD_MODE_TIMEOUT_CHECK"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 1276
    .local v1, "settingsRes":Z
    if-nez v1, :cond_2

    .line 1277
    const-string v5, "CarGuardModeScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCarGuardModeTimeOut: cannot save count. mDebugLevelOffTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " timeoutCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " settingsRes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    .end local v1    # "settingsRes":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private checkCarGuardWorkReady()Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-nez v0, :cond_0

    .line 613
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->OTHER:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 615
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGearLevel:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 616
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->GEAR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 619
    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDoorlockEvent:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 620
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DOOR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 624
    :cond_2
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardBtnEnable:I

    if-nez v0, :cond_3

    .line 625
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DISTANCE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 629
    :cond_3
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatus:I

    if-eqz v0, :cond_4

    .line 630
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->TRUNK:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 632
    :cond_4
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatusNew:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatusNew:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    .line 634
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->TRUNK:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 638
    :cond_5
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mLocalDriveFlag:I

    if-eqz v0, :cond_6

    .line 639
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->AP:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 642
    :cond_6
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugIgOffDisable:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_8

    .line 643
    :cond_7
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    if-ne v0, v1, :cond_8

    .line 644
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->IG:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 649
    :cond_8
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardCameraSt:I

    if-nez v0, :cond_9

    .line 650
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->SWITCH:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 653
    :cond_9
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mOTAState:Z

    if-eqz v0, :cond_a

    .line 655
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->OTA:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 658
    :cond_a
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvmWorkSt:I

    if-nez v0, :cond_b

    .line 660
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->AVM:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 663
    :cond_b
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRepairModeStatus:Z

    if-eqz v0, :cond_c

    .line 664
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCarGuardWorkReady: mRepairModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRepairModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->REPAIR_MODE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0

    .line 667
    :cond_c
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->VALIAD:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    return-object v0
.end method

.method private checkRecognitionMs(JJ)J
    .locals 6
    .param p1, "runtime"    # J
    .param p3, "curMs"    # J

    .line 884
    sub-long v0, p1, p3

    iget-wide v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private checkVibrateMs(JJ)J
    .locals 6
    .param p1, "runtime"    # J
    .param p3, "curMs"    # J

    .line 888
    sub-long v0, p1, p3

    iget-wide v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateDurationSecThreshold:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private collectedGuardModeStatistics(Z)V
    .locals 4
    .param p1, "active"    # Z

    .line 968
    if-eqz p1, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/car/utils/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "start_type"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v2}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAlarmLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "xAxisVibrateThreshold"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "yAxisVibrateThreshold"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "recogThreshold"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "recogDurationSecThreshold"

    iget-wide v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "distance"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogMaxVal:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x_max"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuXMaxVal:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "y_max"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuYMaxVal:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x_std_max"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuXStdMaxVal:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "y_std_max"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuYStdMaxVal:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/car/utils/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "end_type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    :goto_0
    return-void
.end method

.method private collectedOldGuardModeStatistics([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "data"    # [Ljava/lang/Integer;

    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 989
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 990
    .local v0, "statistics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "value"

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string v1, "start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/car/utils/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string v1, "x_max"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string v1, "y_max"

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    invoke-interface {v1, v2, v0}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onOtherStatistics(ILjava/util/Map;)V

    .line 995
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collectedOldGuardModeStatistics mGuardMcuWorkSt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardMcuWorkSt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " statistics:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .end local v0    # "statistics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 997
    :cond_0
    const-string v0, "CarGuardModeScene"

    const-string v1, "no client attach, cannot dispatch event and control screen onoff."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    goto :goto_1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collectedOldGuardModeStatistics: e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private dispatchVibrateOrRecogActiveTimeOut(Ljava/lang/String;)V
    .locals 5
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 1063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAction()Landroid/car/xpeng/Scene$Action;

    move-result-object v0

    sget-object v1, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    if-ne v0, v1, :cond_0

    .line 1065
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchVibrateOrRecogActiveTimeOut() Vibrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRecogActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "curScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    iput-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    .line 1067
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    sget-object v2, Landroid/car/xpeng/Scene$Action;->EXIT:Landroid/car/xpeng/Scene$Action;

    invoke-virtual {v1, v2}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAction(Landroid/car/xpeng/Scene$Action;)Landroid/car/xpeng/Scene;

    .line 1068
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v1

    const-string v2, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/car/utils/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getStatistics()Ljava/util/Map;

    move-result-object v1

    const-string v2, "end_type"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchCarGuardModeEvent(Z)V

    .line 1073
    :cond_0
    return-void
.end method

.method private getCurrentAvailableDrivingDistance()F
    .locals 2

    .line 1076
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mEnduranceMileageMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1077
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCltcAvailableDrivingDistanceFloat:F

    return v0

    .line 1079
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWltpAvailableDrivingDistanceFloat:F

    return v0
.end method

.method private getThresholdBySensitivity(ILjava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p1, "sens"    # I
    .param p2, "thresholdMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1374
    .local v0, "settingsThresholdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 1378
    :cond_0
    const/16 v1, 0xa

    const/16 v2, 0x32

    const-wide v3, 0x3f9999999999999aL    # 0.025

    packed-switch p1, :pswitch_data_0

    .line 1398
    const-string v5, "recogDistance"

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v7, "recogDistance"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    const-string v2, "recogDurationSec"

    iget-object v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v6, "recogDurationSec"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    const-string v1, "xAxisVibrate"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v5, "xAxisVibrate"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    const-string v1, "yAxisVibrate"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v5, "yAxisVibrate"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1392
    :pswitch_0
    const-string v1, "recogDistance"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v3, "recogDistance_high"

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    const-string v1, "recogDurationSec"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v3, "recogDurationSec_high"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    const-string v1, "xAxisVibrate"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v3, "xAxisVibrate_high"

    const-wide v4, 0x3f8eb851eb851eb8L    # 0.015

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    const-string v1, "yAxisVibrate"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v3, "yAxisVibrate_high"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    goto/16 :goto_0

    .line 1386
    :pswitch_1
    const-string v5, "recogDistance"

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v7, "recogDistance"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    const-string v2, "recogDurationSec"

    iget-object v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v6, "recogDurationSec"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    const-string v1, "xAxisVibrate"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v5, "xAxisVibrate"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    const-string v1, "yAxisVibrate"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v5, "yAxisVibrate"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    goto :goto_0

    .line 1380
    :pswitch_2
    const-string v1, "recogDistance"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v3, "recogDistance_low"

    const/16 v4, 0x50

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-string v1, "recogDurationSec"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v3, "recogDurationSec_low"

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    const-string v1, "xAxisVibrate"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v3, "xAxisVibrate_low"

    const-wide v4, 0x3fa999999999999aL    # 0.05

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string v1, "yAxisVibrate"

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    const-string v3, "yAxisVibrate_low"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    nop

    .line 1404
    :goto_0
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThresholdBySensitivity: sens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "thresholdMap from remote"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " settingsThresholdMap local:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    return-object v0

    .line 1375
    :cond_1
    :goto_1
    const-string v1, "CarGuardModeScene"

    const-string v2, "getThresholdBySensitivity: thresholdMap is empty."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAvailableDrivingDistanceChanged()V
    .locals 5

    .line 1216
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->getCurrentAvailableDrivingDistance()F

    move-result v0

    .line 1217
    .local v0, "distance":F
    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvailableDrivingDistanceThreshold:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const v2, 0x21401044

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v1, :cond_1

    .line 1219
    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardBtnEnable:I

    if-ne v1, v3, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1222
    :cond_0
    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    if-eqz v1, :cond_2

    .line 1223
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAvailableDrivingDistanceChanged: low distance exit mode. distance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " distanceThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvailableDrivingDistanceThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mGuardCameraSt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardCameraSt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/4 v1, 0x2

    invoke-virtual {p0, v4, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->setCarGuardModeLevel(II)I

    goto :goto_0

    .line 1230
    :cond_1
    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardBtnEnable:I

    if-nez v1, :cond_2

    .line 1231
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1234
    :cond_2
    :goto_0
    return-void
.end method

.method private handleCarGuardActive(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;)V
    .locals 12
    .param p1, "type"    # Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    .line 687
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->checkCarGuardWorkReady()Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    move-result-object v0

    .line 688
    .local v0, "checkType":Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;
    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->VALIAD:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 690
    .local v1, "ready":Z
    :goto_0
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCarGuardActive: active:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " checkType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-boolean v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeActive:Z

    if-ne v1, v4, :cond_1

    .line 692
    return-void

    .line 694
    :cond_1
    iput-boolean v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeActive:Z

    .line 695
    iget-boolean v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeActive:Z

    const v5, 0x21404e01

    const v6, 0x21613613

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 697
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataIdx:I

    .line 698
    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataValid:Z

    .line 699
    move v4, v3

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v8, v8, v3

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 700
    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v8, v8, v3

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v4

    .line 701
    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v8, v8, v2

    aput-wide v9, v8, v4

    .line 702
    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    const/4 v11, 0x2

    aget-object v8, v8, v11

    aput-wide v9, v8, v4

    .line 703
    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuStdDataArray:[[F

    aget-object v8, v8, v3

    aput v7, v8, v4

    .line 704
    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuStdDataArray:[[F

    aget-object v8, v8, v2

    aput v7, v8, v4

    .line 705
    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuStdDataArray:[[F

    aget-object v8, v8, v11

    aput v7, v8, v4

    .line 699
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 709
    .end local v4    # "i":I
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisValTime:J

    .line 711
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    .line 712
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateTime:J

    .line 713
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogCurrentDisVal:I

    .line 714
    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    .line 715
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v4}, Landroid/car/xpeng/guard/CarGuardModeEvent;->reset()V

    .line 717
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v4, v6, v8, v7}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 718
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 719
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->sendCarGuardModeTimeOutDelay()V

    goto :goto_2

    .line 723
    :cond_3
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v6, v8}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 724
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v5, v6}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 725
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v4}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAction()Landroid/car/xpeng/Scene$Action;

    move-result-object v4

    sget-object v5, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    if-ne v4, v5, :cond_4

    .line 726
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCarGuardActive() Vibrate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mRecogActive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " curScene:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    .line 728
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v4}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAlarmLevel()I

    move-result v4

    invoke-virtual {p0, v4, v7}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchVibrateOrRecogActive(IF)V

    .line 730
    :cond_4
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->removeCarGuardModeTimeOutDelay()V

    .line 733
    :goto_2
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v4, :cond_5

    .line 734
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    iget-boolean v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeActive:Z

    invoke-virtual {p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->ordinal()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeActiveChanged(ZI)V

    .line 736
    :cond_5
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCarGuardActive: ActiveChanged mListener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIgStatus:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mGuardCameraSt:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardCameraSt:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ready:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCurRecogDisValTime:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisValTime:J

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mCarGuardBlock:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardBlock:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method private handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V
    .locals 4
    .param p1, "type"    # Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;
    .param p2, "delay"    # Z

    .line 672
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 673
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x7531

    iput v1, v0, Landroid/os/Message;->what:I

    .line 674
    invoke-virtual {p1}, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->ordinal()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 675
    if-eqz p2, :cond_1

    .line 676
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->removeMessages(I)V

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 683
    :goto_0
    return-void
.end method

.method private handleCarGuardModeLightOffDisplayOnOff(Z)V
    .locals 4
    .param p1, "onOff"    # Z

    .line 1340
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCarGuardModeLightOffDisplayOnOff: onOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const v0, 0x21401df0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1343
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1344
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v0

    .line 1345
    .local v0, "cpms":Landroid/car/hardware/power/CarPowerManager;
    if-eqz v0, :cond_1

    .line 1346
    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    if-eq v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugScreenOnActive:Z

    if-eqz v1, :cond_0

    .line 1347
    const-string v1, "xp_mt_ivi"

    invoke-virtual {v0, v1}, Landroid/car/hardware/power/CarPowerManager;->setXpScreenForceOn(Ljava/lang/String;)V

    .line 1348
    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mControlSceenOnOff:Z

    goto :goto_0

    .line 1350
    :cond_0
    const-string v1, "CarGuardModeScene"

    const-string v2, "cannot get CPMS!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    .end local v0    # "cpms":Landroid/car/hardware/power/CarPowerManager;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1355
    :cond_2
    iput-boolean v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    .line 1356
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v2, v0, v1, v1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1357
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mControlSceenOnOff:Z

    if-eqz v0, :cond_5

    .line 1358
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-nez v0, :cond_3

    .line 1359
    const-string v0, "CarGuardModeScene"

    const-string v2, "no client attach, but need to recover screen onoff."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_3
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v0

    .line 1362
    .restart local v0    # "cpms":Landroid/car/hardware/power/CarPowerManager;
    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugScreenOnActive:Z

    if-eqz v2, :cond_4

    .line 1364
    const-string v2, "xp_mt_ivi"

    invoke-virtual {v0, v2}, Landroid/car/hardware/power/CarPowerManager;->adviseXpScreenOff(Ljava/lang/String;)V

    .line 1365
    iput-boolean v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mControlSceenOnOff:Z

    .line 1367
    .end local v0    # "cpms":Landroid/car/hardware/power/CarPowerManager;
    :cond_4
    goto :goto_1

    .line 1368
    :cond_5
    const-string v0, "CarGuardModeScene"

    const-string v1, "cannot get CPMS!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :goto_1
    return-void
.end method

.method private declared-synchronized handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePropertyEvent: signal lost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    .line 446
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 447
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 448
    .local v1, "propId":I
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 449
    .local v2, "timestamp":J
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    goto/16 :goto_2

    .line 479
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :sswitch_0
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Float;

    .line 481
    .local v4, "data":[Ljava/lang/Float;
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->processImuData([Ljava/lang/Float;)V

    .line 483
    .end local v4    # "data":[Ljava/lang/Float;
    goto/16 :goto_2

    .line 564
    :sswitch_1
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWltpAvailableDrivingDistanceFloat:F

    .line 565
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleAvailableDrivingDistanceChanged()V

    .line 566
    goto/16 :goto_2

    .line 560
    :sswitch_2
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCltcAvailableDrivingDistanceFloat:F

    .line 561
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleAvailableDrivingDistanceChanged()V

    .line 562
    goto/16 :goto_2

    .line 474
    :sswitch_3
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    .line 475
    .local v4, "data":[Ljava/lang/Integer;
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->collectedOldGuardModeStatistics([Ljava/lang/Integer;)V

    .line 477
    .end local v4    # "data":[Ljava/lang/Integer;
    goto/16 :goto_2

    .line 485
    :sswitch_4
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 486
    .local v4, "dis":I
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->processRecogDistance(I)V

    .line 488
    .end local v4    # "dis":I
    goto/16 :goto_2

    .line 586
    :sswitch_5
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvmWorkSt:I

    .line 587
    const-string v4, "CarGuardModeScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePropertyEvent: mAvmWorkSt:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvmWorkSt:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-object v4, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->AVM:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    iget v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvmWorkSt:I

    if-ne v7, v6, :cond_1

    move v5, v6

    nop

    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 589
    goto/16 :goto_2

    .line 547
    :sswitch_6
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 548
    .local v4, "lockSt":I
    const-string v7, "CarGuardModeScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePropertyEvent BCM_DOOR_LOCK_EVENT: lockSt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-ne v4, v6, :cond_2

    .line 551
    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDoorlockEvent:I

    .line 552
    sget-object v5, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DOOR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-direct {p0, v5, v6}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    goto/16 :goto_2

    .line 553
    :cond_2
    const/4 v6, 0x2

    if-ne v4, v6, :cond_c

    .line 555
    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDoorlockEvent:I

    .line 556
    sget-object v6, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DOOR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-direct {p0, v6, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    goto/16 :goto_2

    .line 530
    .end local v4    # "lockSt":I
    :sswitch_7
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPowerOffSource:I

    .line 532
    goto/16 :goto_2

    .line 591
    :sswitch_8
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatusNew:I

    .line 592
    const-string v4, "CarGuardModeScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePropertyEvent BCM_TRUNK_OPENNER_ST: mTrunkStatusNew:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatusNew:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatusNew:I

    if-eq v4, v6, :cond_4

    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatusNew:I

    const/16 v7, 0xa

    if-eq v4, v7, :cond_4

    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatusNew:I

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v5, v6

    :goto_1
    move v4, v5

    .line 597
    .local v4, "delay":Z
    sget-object v5, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->TRUNK:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-direct {p0, v5, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    .end local v4    # "delay":Z
    goto/16 :goto_2

    .line 513
    .restart local v0    # "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .restart local v1    # "propId":I
    .restart local v2    # "timestamp":J
    :sswitch_9
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 514
    .local v4, "mode":I
    const-string v5, "CarGuardModeScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePropertyEvent BCM_POWERMODE: mPowerMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPowerMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPowerMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v4, :cond_5

    .line 516
    monitor-exit p0

    return-void

    .line 518
    :cond_5
    :try_start_2
    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPowerMode:I

    .line 519
    iget-boolean v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeFistReboot:Z

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPowerMode:I

    .line 528
    .end local v4    # "mode":I
    :cond_6
    goto/16 :goto_2

    .line 535
    :sswitch_a
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatus:I

    .line 536
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePropertyEvent BCM_TRUNKAJAR: mTrunkStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mTrunkStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    goto/16 :goto_2

    .line 496
    :sswitch_b
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    .line 497
    const-string v7, "CarGuardModeScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePropertyEvent MCU_IG_DATA: mIgStatus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " FirstReboot:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeFistReboot:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mOTAState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mOTAState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-boolean v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mOTAState:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_7

    .line 500
    monitor-exit p0

    return-void

    .line 502
    :cond_7
    :try_start_3
    iget-boolean v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeFistReboot:Z

    if-nez v7, :cond_8

    iget v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    if-ne v7, v6, :cond_8

    .line 504
    invoke-virtual {p0, v5, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->setCarGuardModeLevel(II)I

    .line 507
    :cond_8
    iput-boolean v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeFistReboot:Z

    .line 509
    sget-object v4, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->IG:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    iget v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    if-eq v7, v6, :cond_9

    move v5, v6

    nop

    :cond_9
    invoke-direct {p0, v4, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 511
    goto/16 :goto_2

    .line 568
    :sswitch_c
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mEnduranceMileageMode:I

    .line 569
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePropertyEvent: mEnduranceMileageMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mEnduranceMileageMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    goto/16 :goto_2

    .line 540
    :sswitch_d
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mLocalDriveFlag:I

    .line 541
    const-string v4, "CarGuardModeScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePropertyEvent VCU_DRIMODE_FB: mLocalDriveFlag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mLocalDriveFlag:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v4, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->AP:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    iget v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mLocalDriveFlag:I

    if-nez v7, :cond_a

    move v5, v6

    nop

    :cond_a
    invoke-direct {p0, v4, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 545
    goto/16 :goto_2

    .line 578
    :sswitch_e
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVcuHighVoltageState:I

    .line 579
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePropertyEvent: mVcuHighVoltageState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVcuHighVoltageState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVcuHighVoltageState:I

    goto/16 :goto_2

    .line 490
    :sswitch_f
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGearLevel:I

    .line 491
    const-string v7, "CarGuardModeScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePropertyEvent VCU_CURRENT_GEARLEV: mGearLevel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGearLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-object v7, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->GEAR:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGearLevel:I

    if-ne v8, v4, :cond_b

    move v5, v6

    nop

    :cond_b
    invoke-direct {p0, v7, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 494
    goto/16 :goto_2

    .line 572
    :sswitch_10
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardRemoteSw:I

    .line 573
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePropertyEvent: mGuardRemoteSw:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardRemoteSw:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardRemoteSw:I

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->setCarGuardModeLevel(II)I

    .line 576
    goto/16 :goto_2

    .line 452
    :sswitch_11
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardBtnEnable:I

    .line 453
    const-string v4, "CarGuardModeScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePropertyEvent: mGuardBtnEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardBtnEnable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v4, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->DISTANCE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-direct {p0, v4, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 455
    goto/16 :goto_2

    .line 463
    :sswitch_12
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardCameraSt:I

    .line 464
    const-string v4, "CarGuardModeScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePropertyEvent: mGuardCameraSt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardCameraSt:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v4, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->SWITCH:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-direct {p0, v4, v5}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 466
    goto :goto_2

    .line 469
    :sswitch_13
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePropertyEvent: mGuardMcuWorkSt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardMcuWorkSt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardMcuWorkSt:I

    .line 471
    goto :goto_2

    .line 458
    :sswitch_14
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardLevel:I

    .line 459
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePropertyEvent: mGuardLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "mCarGuardModeSens:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    nop

    .line 602
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v1    # "propId":I
    .end local v2    # "timestamp":J
    :cond_c
    :goto_2
    goto :goto_3

    .line 440
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 600
    .restart local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePropertyEvent: e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit p0

    return-void

    .line 440
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :goto_4
    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/guard/CarGuardModeScene;
    throw p1

    :sswitch_data_0
    .sparse-switch
        0x21401032 -> :sswitch_14
        0x21401033 -> :sswitch_13
        0x21401042 -> :sswitch_12
        0x21401044 -> :sswitch_11
        0x21401067 -> :sswitch_10
        0x21401205 -> :sswitch_f
        0x21401210 -> :sswitch_e
        0x21401227 -> :sswitch_d
        0x21401257 -> :sswitch_c
        0x21401409 -> :sswitch_b
        0x21401c0a -> :sswitch_a
        0x21401c64 -> :sswitch_9
        0x21401d2f -> :sswitch_8
        0x21401dc9 -> :sswitch_7
        0x21401de2 -> :sswitch_6
        0x21403410 -> :sswitch_5
        0x21404e01 -> :sswitch_4
        0x21411035 -> :sswitch_3
        0x2160127a -> :sswitch_2
        0x2160127b -> :sswitch_1
        0x21613613 -> :sswitch_0
    .end sparse-switch
.end method

.method private isSupportCarGuardMode()Z
    .locals 6

    .line 370
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "cduType":Ljava/lang/String;
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v1

    .line 372
    .local v1, "isExport":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 373
    const-string v3, "CarGuardModeScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init export cartype cannot support CarGuardModeService cduType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v2

    .line 376
    :cond_0
    invoke-static {}, Landroid/car/XpCarFeatures;->hasAVMFeature()I

    move-result v3

    if-nez v3, :cond_1

    .line 377
    const-string v3, "CarGuardModeScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init unsupportAvm cannot support CarGuardModeService cduType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return v2

    .line 380
    :cond_1
    const-string v3, "Q1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Q2"

    .line 381
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Q3"

    .line 382
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Q5"

    .line 383
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Q6"

    .line 384
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Q3A"

    .line 385
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 389
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 386
    :cond_3
    :goto_0
    const-string v3, "CarGuardModeScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init carType cannot support CarGuardModeService cduType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v2
.end method

.method public static synthetic lambda$dispatchCarGuardModeEvent$0(Lcom/android/car/xpeng/guard/CarGuardModeScene;Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 1028
    invoke-virtual {p1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchVibrateOrRecogActiveTimeOut(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setCarGuardModeLevel$1(Lcom/android/car/xpeng/guard/CarGuardModeScene;I)V
    .locals 2
    .param p1, "reason"    # I

    .line 1108
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    invoke-interface {v0, v1, p1}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeLevelChanged(II)V

    .line 1112
    :cond_0
    return-void
.end method

.method private linkAndSubToAfterSales()V
    .locals 2

    .line 1300
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$2;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene$2;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRepairModeListener:Lcom/xiaopeng/aftersales/manager/RepairModeListener;

    .line 1315
    new-instance v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$3;

    invoke-direct {v0, p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene$3;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;)V

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAfterSalesServiceConnection:Landroid/content/ServiceConnection;

    .line 1333
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarAfterSalesManager:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAfterSalesServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->createAfterSalesManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarAfterSalesManager:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    .line 1335
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarAfterSalesManager:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {v0}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->connect()V

    .line 1337
    :cond_0
    return-void
.end method

.method private processImuData([Ljava/lang/Float;)V
    .locals 13
    .param p1, "data"    # [Ljava/lang/Float;

    .line 741
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardBlock:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeActive:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 744
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataIdx:I

    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 745
    iput v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataIdx:I

    .line 747
    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataValid:Z

    .line 749
    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataIdx:I

    .line 750
    .local v0, "idx":I
    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataIdx:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataIdx:I

    .line 751
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v1, v1, v2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, v1, v0

    .line 752
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v1, v1, v3

    const/4 v4, 0x2

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v1, v0

    .line 755
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuStdDataArray:[[F

    aget-object v1, v1, v2

    iget-object v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/android/car/xpeng/guard/CalSTA;->POP_STD_dev([D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v1, v0

    move v1, v5

    .line 756
    .local v1, "stdX":F
    iget-object v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuStdDataArray:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/android/car/xpeng/guard/CalSTA;->POP_STD_dev([D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v0

    move v5, v6

    .line 758
    .local v5, "stdY":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 759
    .local v6, "runtime":J
    iget-boolean v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mNextImuDataValid:Z

    if-nez v8, :cond_2

    .line 761
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processImuData() data not valid. runtime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void

    .line 764
    :cond_2
    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    cmpl-float v8, v1, v8

    if-gtz v8, :cond_4

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    goto :goto_0

    .line 782
    :cond_3
    iget-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    if-eqz v3, :cond_7

    .line 783
    iget-wide v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateTime:J

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->checkVibrateMs(JJ)J

    move-result-wide v8

    .line 784
    .local v8, "cost":J
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_7

    .line 786
    iput-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    .line 787
    iput-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    .line 788
    iput-wide v10, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateTime:J

    .line 789
    long-to-float v2, v8

    invoke-virtual {p0, v4, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchVibrateOrRecogActive(IF)V

    .line 790
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuXMaxVal:F

    .line 791
    iput v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuYMaxVal:F

    .line 792
    iput v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuXStdMaxVal:F

    .line 793
    iput v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuYStdMaxVal:F

    .end local v8    # "cost":J
    goto/16 :goto_2

    .line 766
    :cond_4
    :goto_0
    move v8, v2

    .local v8, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v9, v9, v2

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 767
    iget v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuXMaxVal:F

    float-to-double v9, v9

    iget-object v11, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v11, v11, v2

    aget-wide v11, v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuXMaxVal:F

    .line 768
    iget v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuYMaxVal:F

    float-to-double v9, v9

    iget-object v11, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    aget-object v11, v11, v3

    aget-wide v11, v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuYMaxVal:F

    .line 769
    iget v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuXStdMaxVal:F

    iget-object v10, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuStdDataArray:[[F

    aget-object v10, v10, v2

    aget v10, v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuXStdMaxVal:F

    .line 770
    iget v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuYStdMaxVal:F

    iget-object v10, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuStdDataArray:[[F

    aget-object v10, v10, v3

    aget v10, v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuYStdMaxVal:F

    .line 766
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 772
    .end local v8    # "i":I
    :cond_5
    iput-wide v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateTime:J

    .line 773
    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    .line 774
    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    if-eqz v2, :cond_7

    .line 776
    :cond_6
    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    .line 777
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processImuData() runtime:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "mCurVibrateActiveStatus "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " stdX:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " stdY:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " mImuDataArray:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mImuDataArray:[[D

    invoke-static {v8}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchVibrateOrRecogActive(IF)V

    .line 797
    :cond_7
    :goto_2
    return-void

    .line 742
    .end local v0    # "idx":I
    .end local v1    # "stdX":F
    .end local v5    # "stdY":F
    .end local v6    # "runtime":J
    :cond_8
    :goto_3
    return-void
.end method

.method private processRecogDistance(I)V
    .locals 10
    .param p1, "dis"    # I

    .line 807
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardBlock:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeActive:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 811
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogCurrentDisVal:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    .line 812
    iput p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogCurrentDisVal:I

    .line 813
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRecogDistance: SCENE_IMAGE_RECOGNITION_DIST dis:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " drop:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogLogDropCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " invalid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogInvalidValCount:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iput v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogLogDropCount:I

    goto :goto_0

    .line 816
    :cond_1
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogLogDropCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogLogDropCount:I

    .line 818
    :goto_0
    if-ltz p1, :cond_b

    const v0, 0xffff

    if-le p1, v0, :cond_2

    goto/16 :goto_3

    .line 822
    :cond_2
    const-wide/16 v0, 0x0

    if-nez p1, :cond_4

    .line 823
    iget-wide v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogInvalidValCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogInvalidValCount:J

    .line 824
    iget-wide v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogInvalidValCount:J

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 825
    return-void

    .line 828
    :cond_3
    const p1, 0xffff

    goto :goto_1

    .line 831
    :cond_4
    iput-wide v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogInvalidValCount:J

    .line 834
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 835
    .local v4, "runtime":J
    iget-boolean v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    const/16 v7, 0x7535

    if-nez v6, :cond_7

    .line 837
    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    if-gt v2, v6, :cond_6

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    if-gt p1, v2, :cond_6

    .line 839
    iget-wide v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisValTime:J

    invoke-direct {p0, v4, v5, v8, v9}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->checkRecognitionMs(JJ)J

    move-result-wide v8

    .line 840
    .local v8, "cost":J
    cmp-long v0, v8, v0

    if-lez v0, :cond_5

    .line 842
    iput-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    .line 843
    int-to-float v0, p1

    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogMaxVal:F

    .line 844
    long-to-float v0, v8

    invoke-virtual {p0, v3, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchVibrateOrRecogActive(IF)V

    .line 845
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardModeLightOffDisplayOnOff(Z)V

    .line 846
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v0, v7}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 847
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v0, v7}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->removeMessages(I)V

    .line 850
    .end local v8    # "cost":J
    :cond_5
    goto :goto_2

    .line 852
    :cond_6
    iput p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    .line 853
    iput-wide v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisValTime:J

    goto :goto_2

    .line 857
    :cond_7
    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    iget v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    if-le v3, v6, :cond_a

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    if-le p1, v3, :cond_a

    .line 859
    iget-wide v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisValTime:J

    invoke-direct {p0, v4, v5, v8, v9}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->checkRecognitionMs(JJ)J

    move-result-wide v8

    .line 860
    .restart local v8    # "cost":J
    cmp-long v0, v8, v0

    if-lez v0, :cond_9

    .line 862
    iput-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogMaxVal:F

    .line 865
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardModeLightOffDisplayOnOff(Z)V

    .line 866
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v0, v7}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 867
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v0, v7}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->removeMessages(I)V

    .line 869
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 870
    .local v0, "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 871
    long-to-int v1, v8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 872
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 873
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRecogDistance() detect recognition far away, runtime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " send delay message mRecogActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .end local v0    # "msg":Landroid/os/Message;
    .end local v8    # "cost":J
    :cond_9
    goto :goto_2

    .line 877
    :cond_a
    iput p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    .line 878
    iput-wide v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisValTime:J

    .line 881
    :goto_2
    return-void

    .line 820
    .end local v4    # "runtime":J
    :cond_b
    :goto_3
    return-void

    .line 808
    :cond_c
    :goto_4
    return-void
.end method

.method private removeCarGuardModeTimeOutDelay()V
    .locals 5

    .line 1249
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SETTINGS_CAR_GUARD_MODE_TIMEOUT_CHECK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1251
    .local v0, "settingsRes":Z
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    const/16 v2, 0x7532

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->removeMessages(I)V

    .line 1255
    :cond_0
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    const/16 v2, 0x7533

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->removeMessages(I)V

    .line 1257
    :cond_1
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCarGuardModeTimeOutDelay: mDebugLevelOffTimeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " settingsRes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void
.end method

.method private saveImageDisVal(I)V
    .locals 4
    .param p1, "dis"    # I

    .line 893
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    if-gt p1, v0, :cond_0

    .line 894
    return-void

    .line 896
    :cond_0
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    if-le p1, v0, :cond_1

    .line 897
    return-void

    .line 899
    :cond_1
    iput p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisVal:I

    .line 900
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurRecogDisValTime:J

    .line 901
    return-void
.end method

.method private sendCarGuardModeTimeOutDelay()V
    .locals 5

    .line 1238
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SETTINGS_CAR_GUARD_MODE_TIMEOUT_CHECK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1241
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    iget-wide v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    const/16 v4, 0x7532

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1244
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    const/16 v2, 0x7533

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1245
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCarGuardModeTimeOutDelay: mDebugLevelOffTimeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mDebugLevelOffTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " distanceThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mAvailableDrivingDistanceThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return-void
.end method

.method private sendVibrateDelayMessage()V
    .locals 4

    .line 1409
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1410
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x7534

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1411
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1412
    return-void
.end method

.method private declared-synchronized subscribeToProperties()V
    .locals 7

    monitor-enter p0

    .line 433
    :try_start_0
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 434
    .local v3, "propertyId":I
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v3    # "propertyId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_0
    monitor-exit p0

    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/xpeng/guard/CarGuardModeScene;
    throw v0
.end method


# virtual methods
.method public dispatchCarGuardModeEvent(Z)V
    .locals 6
    .param p1, "delay"    # Z

    .line 1006
    new-instance v0, Landroid/car/xpeng/guard/CarGuardModeEvent;

    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-direct {v0, v1}, Landroid/car/xpeng/guard/CarGuardModeEvent;-><init>(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    .line 1007
    .local v0, "event":Landroid/car/xpeng/guard/CarGuardModeEvent;
    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAction()Landroid/car/xpeng/Scene$Action;

    move-result-object v1

    sget-object v2, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    const v3, 0x21401df0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    .line 1008
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v1, :cond_2

    .line 1009
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    invoke-interface {v1, v0}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    .line 1010
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchCarGuardModeEvent enter: event:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1012
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v1

    .line 1013
    .local v1, "cpms":Landroid/car/hardware/power/CarPowerManager;
    if-eqz v1, :cond_0

    .line 1014
    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    if-eq v3, v2, :cond_1

    iget-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugScreenOnActive:Z

    if-eqz v3, :cond_1

    .line 1015
    const-string v3, "xp_mt_ivi"

    invoke-virtual {v1, v3}, Landroid/car/hardware/power/CarPowerManager;->setXpScreenForceOn(Ljava/lang/String;)V

    .line 1016
    iput-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mControlSceenOnOff:Z

    .line 1017
    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAlarmLevel()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1018
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->sendVibrateDelayMessage()V

    goto :goto_0

    .line 1022
    :cond_0
    const-string v2, "CarGuardModeScene"

    const-string v3, "cannot get CPMS!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v1    # "cpms":Landroid/car/hardware/power/CarPowerManager;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1025
    :cond_2
    const-string v1, "CarGuardModeScene"

    const-string v2, "no client attach, cannot dispatch event and control screen onoff."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :goto_1
    if-eqz p1, :cond_7

    .line 1028
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    new-instance v2, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$E1HuAiKJgxhBI6dG24G-R0K1QoU;

    invoke-direct {v2, p0, v0}, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$E1HuAiKJgxhBI6dG24G-R0K1QoU;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1031
    :cond_3
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v1, :cond_4

    .line 1032
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    invoke-interface {v1, v0}, Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;->onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    .line 1033
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchCarGuardModeEvent exit: event:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1035
    :cond_4
    const-string v1, "CarGuardModeScene"

    const-string v2, "no client attach, cannot dispatch event."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :goto_2
    iput-boolean v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    .line 1038
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v1, v3, v4, v4}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1039
    iget-boolean v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mControlSceenOnOff:Z

    if-eqz v1, :cond_7

    .line 1040
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-nez v1, :cond_5

    .line 1041
    const-string v1, "CarGuardModeScene"

    const-string v2, "no client attach, but need to recover screen onoff."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_5
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v1

    .line 1044
    .restart local v1    # "cpms":Landroid/car/hardware/power/CarPowerManager;
    if-eqz v1, :cond_6

    .line 1045
    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugScreenOnActive:Z

    if-eqz v2, :cond_7

    .line 1046
    const-string v2, "xp_mt_ivi"

    invoke-virtual {v1, v2}, Landroid/car/hardware/power/CarPowerManager;->adviseXpScreenOff(Ljava/lang/String;)V

    .line 1047
    iput-boolean v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mControlSceenOnOff:Z

    goto :goto_3

    .line 1050
    :cond_6
    const-string v2, "CarGuardModeScene"

    const-string v3, "cannot get CPMS!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    .end local v1    # "cpms":Landroid/car/hardware/power/CarPowerManager;
    :cond_7
    :goto_3
    return-void
.end method

.method public dispatchVibrateOrRecogActive(IF)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "val"    # F

    .line 905
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchVibrateOrRecogActive() VibrateActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRecogActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " val:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mCurVibrateActiveStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " light off msg? :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    .line 906
    const/16 v3, 0x7534

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->hasMessages(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " curScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mVibrateActive:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogActive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAlarmLevel()I

    move-result v0

    .line 949
    .local v0, "lev":I
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v2}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAction()Landroid/car/xpeng/Scene$Action;

    move-result-object v2

    sget-object v3, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    if-ne v2, v3, :cond_1

    .line 950
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAlarmLevel(I)Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 951
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    sget-object v3, Landroid/car/xpeng/Scene$Action;->EXIT:Landroid/car/xpeng/Scene$Action;

    invoke-virtual {v2, v3}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAction(Landroid/car/xpeng/Scene$Action;)Landroid/car/xpeng/Scene;

    .line 952
    invoke-direct {p0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->collectedGuardModeStatistics(Z)V

    .line 953
    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchCarGuardModeEvent(Z)V

    goto/16 :goto_1

    .line 956
    :cond_1
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAlarmLevel(I)Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 957
    const-string v1, "CarGuardModeScene"

    const-string v2, "cannot step int this logic!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lev":I
    goto/16 :goto_1

    .line 910
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAction()Landroid/car/xpeng/Scene$Action;

    move-result-object v0

    sget-object v2, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    const/4 v4, 0x1

    if-eq v0, v2, :cond_3

    .line 912
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setSceneId(Ljava/lang/String;)Landroid/car/xpeng/Scene;

    .line 913
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0, p1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAlarmLevel(I)Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 914
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    sget-object v1, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    invoke-virtual {v0, v1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAction(Landroid/car/xpeng/Scene$Action;)Landroid/car/xpeng/Scene;

    .line 915
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setTimeStamp(J)Landroid/car/xpeng/Scene;

    .line 916
    invoke-direct {p0, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->collectedGuardModeStatistics(Z)V

    .line 917
    invoke-virtual {p0, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->dispatchCarGuardModeEvent(Z)V

    goto :goto_1

    .line 920
    :cond_3
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v0}, Landroid/car/xpeng/guard/CarGuardModeEvent;->getAlarmLevel()I

    move-result v0

    .line 921
    .restart local v0    # "lev":I
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/car/xpeng/guard/CarGuardModeEvent;->setAlarmLevel(I)Landroid/car/xpeng/guard/CarGuardModeEvent;

    .line 922
    iget-boolean v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    if-eqz v2, :cond_6

    .line 923
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 924
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    invoke-virtual {v2, v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->removeMessages(I)V

    .line 926
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->sendVibrateDelayMessage()V

    .line 928
    iput-boolean v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    .line 929
    return-void

    .line 932
    :cond_4
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v3, 0x21401df0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 933
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v2

    .line 934
    .local v2, "cpms":Landroid/car/hardware/power/CarPowerManager;
    if-eqz v2, :cond_6

    .line 935
    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mIgStatus:I

    if-eq v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isDebugScreenOnActive:Z

    if-eqz v3, :cond_5

    .line 936
    const-string v3, "xp_mt_ivi"

    invoke-virtual {v2, v3}, Landroid/car/hardware/power/CarPowerManager;->setXpScreenForceOn(Ljava/lang/String;)V

    .line 937
    iput-boolean v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mControlSceenOnOff:Z

    .line 939
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->sendVibrateDelayMessage()V

    .line 942
    :cond_5
    iput-boolean v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCurVibrateActiveStatus:Z

    .line 945
    .end local v0    # "lev":I
    .end local v2    # "cpms":Landroid/car/hardware/power/CarPowerManager;
    :cond_6
    nop

    .line 960
    :goto_1
    return-void
.end method

.method public getCarGuardModeLevel()I
    .locals 3

    .line 1117
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarGuardModeLevel: mGuardCameraSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardCameraSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardCameraSt:I

    return v0
.end method

.method public getCarGuardModeSensitivity()I
    .locals 3

    .line 1148
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarGuardModeSensitivity: sens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    return v0
.end method

.method public getCurrentCarGuardModeEvent()Landroid/car/xpeng/guard/CarGuardModeEvent;
    .locals 3

    .line 1122
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentCarGuardModeEvent: mCarGuardModeEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeEvent:Landroid/car/xpeng/guard/CarGuardModeEvent;

    return-object v0
.end method

.method public handleOTAStateChanged(II)V
    .locals 3
    .param p1, "prevState"    # I
    .param p2, "state"    # I

    .line 1287
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOTAStateChanged: prevState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 1290
    iput-boolean v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mOTAState:Z

    .line 1291
    sget-object v1, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->OTA:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-direct {p0, v1, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    goto :goto_0

    .line 1292
    :cond_0
    if-ne p2, v1, :cond_1

    .line 1294
    iput-boolean v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mOTAState:Z

    .line 1295
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->OTA:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-direct {p0, v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 1297
    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 5

    .line 329
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isSupportCarGuardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SETTINGS_RECOG_DISTANCE_THRESHOLD"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    .line 333
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SETTINGS_RECOG_DURATION_SEC_THRESHOLD"

    const-wide/16 v2, 0xa

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    .line 334
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SETTINGS_X_AXIS_VIBRATE_THRESHOLD"

    const v2, 0x3ccccccd    # 0.025f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    .line 335
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SETTINGS_Y_AXIS_VIBRATE_THRESHOLD"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    .line 336
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.car.VALUE_USER_SET_CAR_GUARD_MODE_SENSITIVITY"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    .line 339
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401044

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init() TBOX_SOLDIER_ENABLE fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401df0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 347
    :try_start_1
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401257

    invoke-virtual {v1, v2, v0}, Lcom/android/car/CarPropertyService;->getIntProperty(II)I

    move-result v1

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mEnduranceMileageMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    goto :goto_1

    .line 348
    :catch_1
    move-exception v1

    .line 349
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init() getVcuMileageMode fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x2160127b

    invoke-virtual {v1, v2, v0}, Lcom/android/car/CarPropertyService;->getFloatProperty(II)F

    move-result v1

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWltpAvailableDrivingDistanceFloat:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 355
    goto :goto_2

    .line 353
    :catch_2
    move-exception v1

    .line 354
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init() getVcuMileageMode fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x2160127a

    invoke-virtual {v1, v2, v0}, Lcom/android/car/CarPropertyService;->getFloatProperty(II)F

    move-result v1

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCltcAvailableDrivingDistanceFloat:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 360
    goto :goto_3

    .line 358
    :catch_3
    move-exception v1

    .line 359
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init() getVcuMileageMode fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->subscribeToProperties()V

    .line 362
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.car.VALUE_USER_SWITCH_CAR_GUARD_MODE_LEVEL"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 363
    .local v0, "level":I
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " threshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "sens"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->setCarGuardModeLevel(II)I

    .line 366
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->linkAndSubToAfterSales()V

    .line 367
    return-void
.end method

.method public injectCarSceneCalibrationData(Ljava/lang/String;)V
    .locals 11
    .param p1, "json"    # Ljava/lang/String;

    .line 1161
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectCarSceneCalibrationData: json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    return-void

    .line 1170
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1172
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1174
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1175
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string v4, "CarGuardModeScene"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "injectCarSceneCalibrationData, from remote: key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 1178
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1179
    .local v2, "settingsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->getThresholdBySensitivity(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 1180
    const-string v3, "recogDistance"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1181
    .local v3, "recogDistance":I
    const-string v4, "recogDurationSec"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1182
    .local v4, "recogDurationSec":I
    const-string v5, "xAxisVibrate"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 1183
    .local v5, "xAxisVibrate":D
    const-string v7, "yAxisVibrate"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "settingsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-wide v0, v7

    .line 1187
    .local v0, "yAxisVibrate":D
    nop

    .line 1186
    nop

    .line 1188
    const/16 v2, 0x1e

    if-ge v3, v2, :cond_2

    .line 1189
    const-string v2, "CarGuardModeScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "injectCarSceneCalibrationData invalid data. [30,5,0.01d,0.01d] recogDistance:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1191
    :cond_2
    iput v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    .line 1193
    :goto_1
    const/4 v2, 0x5

    if-ge v4, v2, :cond_3

    .line 1194
    const-string v2, "CarGuardModeScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "injectCarSceneCalibrationData invalid data. [30,5,0.01d,0.01d] recogDurationSec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1196
    :cond_3
    int-to-long v7, v4

    iput-wide v7, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    .line 1198
    :goto_2
    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v5, v7

    if-gez v2, :cond_4

    .line 1199
    const-string v2, "CarGuardModeScene"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "injectCarSceneCalibrationData invalid data. [30,5,0.01d,0.01d] xAxisVibrate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1201
    :cond_4
    double-to-float v2, v5

    iput v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    .line 1203
    :goto_3
    cmpg-double v2, v0, v7

    if-gez v2, :cond_5

    .line 1204
    const-string v2, "CarGuardModeScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "injectCarSceneCalibrationData invalid data. [30,5,0.01d,0.01d] yAxisVibrate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1206
    :cond_5
    double-to-float v2, v0

    iput v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    .line 1208
    :goto_4
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "SETTINGS_RECOG_DISTANCE_THRESHOLD"

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1209
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "SETTINGS_RECOG_DURATION_SEC_THRESHOLD"

    iget-wide v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    invoke-static {v2, v7, v8, v9}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1210
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "SETTINGS_X_AXIS_VIBRATE_THRESHOLD"

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1211
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "SETTINGS_Y_AXIS_VIBRATE_THRESHOLD"

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1212
    const-string v2, "CarGuardModeScene"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "injectCarSceneCalibrationData threshold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void

    .line 1184
    .end local v0    # "yAxisVibrate":D
    .end local v3    # "recogDistance":I
    .end local v4    # "recogDurationSec":I
    .end local v5    # "xAxisVibrate":D
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectCarSceneCalibrationData: error format data. e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return-void
.end method

.method public registerCarGuardModeListener(Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    .line 393
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCarGuardModeListener: Local mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-nez v0, :cond_0

    .line 400
    iput-object p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    .line 410
    :cond_0
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->INIT:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 411
    return-void
.end method

.method public release()V
    .locals 6

    .line 422
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 423
    .local v3, "property":I
    iget-object v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v5, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 422
    .end local v3    # "property":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    .line 426
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarAfterSalesManager:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarAfterSalesManager:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    invoke-virtual {v1}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->disconnect()V

    .line 428
    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarAfterSalesManager:Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    .line 430
    :cond_1
    return-void
.end method

.method public setCarGuardModeLevel(II)I
    .locals 6
    .param p1, "level"    # I
    .param p2, "reason"    # I

    .line 1084
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->isSupportCarGuardMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1085
    return v1

    .line 1087
    :cond_0
    invoke-direct {p0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->getCurrentAvailableDrivingDistance()F

    move-result v0

    .line 1088
    .local v0, "distance":F
    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    if-lez p1, :cond_2

    .line 1089
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCarGuardModeLevel fail lev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " distance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/16 v2, 0xc

    if-ne p2, v2, :cond_1

    .line 1092
    const/4 p1, 0x0

    goto :goto_0

    .line 1094
    :cond_1
    return v1

    .line 1097
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    .line 1098
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCarGuardModeLevel: mGuardModeLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " distance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCarGuardmodeSens "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android.car.VALUE_USER_SWITCH_CAR_GUARD_MODE_LEVEL"

    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1102
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v3, 0x21401032

    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1104
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v3, 0x21401042

    iget v4, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    if-nez v4, :cond_3

    move v1, v5

    nop

    :cond_3
    invoke-virtual {v2, v3, v5, v1}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1106
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401067

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1107
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mWorkHandler:Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;

    new-instance v2, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$4otT1n3N-vPFHtkJlTPmifhzWnk;

    invoke-direct {v2, p0, p2}, Lcom/android/car/xpeng/guard/-$$Lambda$CarGuardModeScene$4otT1n3N-vPFHtkJlTPmifhzWnk;-><init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;I)V

    invoke-virtual {v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1113
    return v5
.end method

.method public setCarGuardModeSensitivity(I)I
    .locals 5
    .param p1, "sens"    # I

    .line 1127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1128
    .local v0, "settingsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardModeLevel:I

    if-gtz v1, :cond_0

    .line 1129
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCarGuardModeSensitivity error: switch off:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mGuardLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v1, -0x1

    return v1

    .line 1132
    :cond_0
    iput p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    .line 1134
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.car.VALUE_USER_SET_CAR_GUARD_MODE_SENSITIVITY"

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1136
    iget v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mThresholdMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->getThresholdBySensitivity(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1137
    const-string v1, "recogDistance"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    .line 1138
    const-string v1, "recogDurationSec"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    .line 1139
    const-string v1, "xAxisVibrate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    .line 1140
    const-string v1, "yAxisVibrate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    .line 1141
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCarGuardModeSensitivity: mCarGuardModeSens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRecogDistanceThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDistanceThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRecogDurationSecThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mRecogDurationSecThreshold:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mXAxisVibrateThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mXAxisVibrateThreshold:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mYAxisVibrateThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mYAxisVibrateThreshold:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21401032

    iget v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mCarGuardModeSens:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/car/CarPropertyService;->setIntProperty(III)V

    .line 1144
    return v4
.end method

.method public unregisterCarGuardModeListener()V
    .locals 3

    .line 414
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCarGuardModeListener: Local mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene;->mListener:Landroid/car/xpeng/guard/CarGuardModeManager$CarCarGuardModeListener;

    .line 417
    sget-object v0, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->INIT:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->handleCarGuardActiveDelay(Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 419
    :cond_0
    return-void
.end method
