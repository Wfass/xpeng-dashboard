.class public Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;
.source "ChassisViewModel.java"


# static fields
.field protected static final MAX_PRESSURE:F = 348.742f

.field public static final TPMS_DEFAULT_PRESSURE:Ljava/lang/String; = "-.-"

.field private static final UNIT:Ljava/lang/String; = " bar"


# instance fields
.field private final mApbStatusData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsCampingMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsEasyLoadingMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsEngineerData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsHeightMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsLevlingMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsRepairMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsSaveResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsSoftMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsWelcomeMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvhFault:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvhSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCdcMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mEbwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mEsp:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mEspBpfModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEspCstSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mEspFault:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mEspOffRoadStatusData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mHdc:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mHdcFault:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCalibrateStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

.field private final mMaxPressure:F

.field private final mTpmsAbnormalData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsCalibrationStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFlSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFlTempData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFlTempWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFlValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFlWarningState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFlWarningStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFrSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFrTempData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFrTempWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFrValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFrWarningState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsFrWarningStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRlSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRlTempData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRlTempWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRlValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRlWarningState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRlWarningStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRrSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRrTempData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRrTempWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRrValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRrWarningState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsRrWarningStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTpmsSystemFaultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrailerModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTtmMotorMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTtmSwitchData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTtmSysErrData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWheelEps:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;-><init>()V

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEsp:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAvhSw:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAvhFault:Landroidx/lifecycle/MutableLiveData;

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mWheelEps:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mCdcMode:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsCalibrationStatus:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlValue:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrValue:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlValue:Landroidx/lifecycle/MutableLiveData;

    .line 55
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrValue:Landroidx/lifecycle/MutableLiveData;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsSystemFaultData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsAbnormalData:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlTempWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrTempWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlTempWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrTempWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 65
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlTempData:Landroidx/lifecycle/MutableLiveData;

    .line 66
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrTempData:Landroidx/lifecycle/MutableLiveData;

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlTempData:Landroidx/lifecycle/MutableLiveData;

    .line 68
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrTempData:Landroidx/lifecycle/MutableLiveData;

    .line 70
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlWarningState:Landroidx/lifecycle/MutableLiveData;

    .line 71
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrWarningState:Landroidx/lifecycle/MutableLiveData;

    .line 72
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlWarningState:Landroidx/lifecycle/MutableLiveData;

    .line 73
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrWarningState:Landroidx/lifecycle/MutableLiveData;

    .line 75
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlWarningStatus:Landroidx/lifecycle/MutableLiveData;

    .line 76
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrWarningStatus:Landroidx/lifecycle/MutableLiveData;

    .line 77
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlWarningStatus:Landroidx/lifecycle/MutableLiveData;

    .line 78
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrWarningStatus:Landroidx/lifecycle/MutableLiveData;

    .line 80
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    .line 81
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    .line 82
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    .line 83
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    .line 85
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->NotFix:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mLastCalibrateStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    .line 88
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspFault:Landroidx/lifecycle/MutableLiveData;

    .line 89
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mHdc:Landroidx/lifecycle/MutableLiveData;

    .line 90
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mHdcFault:Landroidx/lifecycle/MutableLiveData;

    .line 91
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEbwData:Landroidx/lifecycle/MutableLiveData;

    .line 94
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsHeightMode:Landroidx/lifecycle/MutableLiveData;

    .line 95
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsSoftMode:Landroidx/lifecycle/MutableLiveData;

    .line 96
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    .line 97
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsEasyLoadingMode:Landroidx/lifecycle/MutableLiveData;

    .line 98
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsRepairMode:Landroidx/lifecycle/MutableLiveData;

    .line 99
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsEngineerData:Landroidx/lifecycle/MutableLiveData;

    .line 100
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mApbStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 101
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspOffRoadStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 102
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspCstSwData:Landroidx/lifecycle/MutableLiveData;

    .line 103
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspBpfModeData:Landroidx/lifecycle/MutableLiveData;

    .line 104
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsCampingMode:Landroidx/lifecycle/MutableLiveData;

    .line 105
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsLevlingMode:Landroidx/lifecycle/MutableLiveData;

    .line 106
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmSwitchData:Landroidx/lifecycle/MutableLiveData;

    .line 107
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTrailerModeData:Landroidx/lifecycle/MutableLiveData;

    .line 108
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmMotorMode:Landroidx/lifecycle/MutableLiveData;

    .line 110
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmSysErrData:Landroidx/lifecycle/MutableLiveData;

    .line 112
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsSaveResult:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "getTpmsMaxPressure"

    .line 118
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mMaxPressure:F

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    const-string v0, "isSupportTrailerHook"

    .line 123
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$4vf9JqcypYXKJS6W9ieBTmEdNs4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$4vf9JqcypYXKJS6W9ieBTmEdNs4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "isSupportCdcControl"

    .line 126
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mCdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mCdcCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICdcController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    :cond_1
    return-void
.end method

.method private postAsCampingMode(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "campingMode",
            "levelResult"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1019
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsCampingMode:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p1, p2, :cond_1

    .line 1022
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsCampingMode:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p1, p2, :cond_2

    .line 1024
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsCampingMode:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1026
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsCampingMode:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private toAsDriveMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcuDriveMode"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :cond_4
    :goto_0
    return v0
.end method

.method private toAsHeightLevel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcuDriveMode"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method private updateTyrePressure(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mLastCalibrateStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    if-eqz v0, :cond_1

    const-string v0, "isSupportManualTpmsCalibrate"

    .line 963
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mLastCalibrateStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->Fixing:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->Fixing:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    if-ne p1, v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlValue:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "-.-"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 966
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 967
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrValue:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mLastCalibrateStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->Fixing:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->Fixing:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    if-eq p1, v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlValue:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressure(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 970
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrValue:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressure(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlValue:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressure(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 972
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrValue:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressure(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 975
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mLastCalibrateStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    return-void
.end method


# virtual methods
.method public calibrateTyrePressure()V
    .locals 3

    .line 148
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->Fixing:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsCalibrationStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 149
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->calibrateTyrePressure()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ChassisViewModel"

    const-string v2, "Tyre is under calibrating, can not recalibrate"

    .line 151
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected changeEspForEpsChanged(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epsMode"
        }
    .end annotation

    return-void
.end method

.method public controlEpb()V
    .locals 5

    .line 1001
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 1002
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 1003
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getBreakPedalStatus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getApbSystemStatus()I

    move-result v0

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current apb status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChassisViewModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v4, v1

    .line 1014
    :cond_2
    invoke-virtual {p0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEpbSystemStatus(Z)V

    :cond_3
    :goto_0
    return-void

    .line 1004
    :cond_4
    :goto_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->epb_op_failed_tips:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method protected formatPressureFormat(F)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tyrePressure"
        }
    .end annotation

    .line 980
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mMaxPressure:F

    cmpl-float v0, p1, v0

    const-string v1, "-.-"

    if-lez v0, :cond_0

    return-object v1

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    .line 990
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 991
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    .line 992
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 993
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    float-to-double v1, p1

    .line 994
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public geTtmMotorModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmMotorMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getApbStatusData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mApbStatusData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsCampingModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;",
            ">;"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsCampingMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsCampingStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsCampingModeSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;

    return-object v0

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsAutoLevelingResult()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 793
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;

    return-object v0

    .line 791
    :cond_2
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/chassis/AsCampingStatus;

    return-object v0
.end method

.method public getAsEasyLoadingMode()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsEasyLoadingMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsEngineerData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;",
            ">;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsEngineerData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsEngineerMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;
    .locals 3

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEngineeringModeStatus()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 688
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ChassisViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAsHeightMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;
    .locals 3

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionHeightMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 666
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ChassisViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAsHeightModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;",
            ">;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsHeightMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsLevlingModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsLevlingMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsRepairModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsRepairMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsSaveResultData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsSaveResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsSoftMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;
    .locals 3

    .line 778
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionSoftMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ChassisViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAsSoftModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsSoftMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAsWelcomeMode()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvhFaultData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAvhFault:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvhSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAvhSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCdcModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mCdcMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEbwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEbwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEspBpfModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspBpfModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEspBpfModeValue()Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;
    .locals 3

    .line 802
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspBpfMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->fromBpfState(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 804
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ChassisViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEspCstSwData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspCstSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEspFaultData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspFault:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEspModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEsp:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEspOffRoadStatusData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspOffRoadStatusData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHdcData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mHdc:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getHdcFaultData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mHdcFault:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSteeringEps(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultMode"
        }
    .end annotation

    .line 638
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getSteeringEps()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->fromEpsState(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 640
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ChassisViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method public getSteeringEpsData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mWheelEps:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTpmsAbnormalData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsAbnormalData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTpmsCalibrationStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;
    .locals 3

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsCalibrateState()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->fromTpmsState(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ChassisViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTpmsCalibrationStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;",
            ">;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsCalibrationStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTpmsSensorWarningData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 954
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 952
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 950
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 948
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getTpmsSystemFaultData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsSystemFaultData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTpmsTempData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 885
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrTempData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 883
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlTempData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 881
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrTempData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 879
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlTempData:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getTpmsTempWarningData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 865
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrTempWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 863
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlTempWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 861
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrTempWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 859
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlTempWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getTpmsWarningData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 905
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrWarningState:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 903
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlWarningState:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 901
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrWarningState:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 899
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlWarningState:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getTpmsWarningState()[I
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->getTpmsWarningState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTpmsWarningStates()[Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;
    .locals 4

    .line 931
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->getTpmsWarningState()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 933
    array-length v1, v0

    new-array v1, v1, [Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    const/4 v2, 0x0

    .line 934
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 935
    aget v3, v0, v2

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->fromTpms(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getTpmsWarningStatusData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 920
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrWarningStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 918
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlWarningStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 916
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrWarningStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 914
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlWarningStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;
    .locals 3

    .line 488
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmSwitchStatusForUI()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->fromBcCmd(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ChassisViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrailerModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTrailerModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTtmSwitchData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmSwitchData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTtmSysErrData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmSysErrData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTyrePressure(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-string v0, "isSupportManualTpmsCalibrate"

    .line 133
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsCalibrationStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->Fixing:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    const-string v0, "ChassisViewModel"

    const-string v1, "Tp is under calibration, return default pressure: --"

    .line 134
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "-.-"

    return-object p1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->getTyrePressure(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->formatPressureFormat(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTyrePressureData(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 831
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrValue:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 829
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlValue:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 827
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrValue:Landroidx/lifecycle/MutableLiveData;

    return-object p1

    .line 825
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlValue:Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getTyrePressureFloat(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITpmsController;->getTyrePressure(I)F

    move-result p1

    return p1
.end method

.method protected handleApbSystemStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mApbStatusData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleAsCampingModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsAutoLevelingResult()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->postAsCampingMode(ZI)V

    return-void
.end method

.method protected handleAsEasyLoadingModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsEasyLoadingMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleAsEngineerModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 280
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsEngineerData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error As EngineerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ChassisViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleAsHeightModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 245
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsHeightMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error As HeightMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ChassisViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleAsLevlingModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsCampingModeSwitch()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->postAsCampingMode(ZI)V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsLevlingMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleAsRepairModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsRepairMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleAsSoftModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 255
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsSoftMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error As Soft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ChassisViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleAsWelcomeModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsWelcomeMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleAvhFaultChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAvhFault:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleAvhSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAvhSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleCdcModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdc"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mCdcMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleEbwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEbwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleEspFaultChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspFault:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleEspSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEsp:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method handleHdcChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const-string v0, "isSupportHdc"

    .line 177
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mHdc:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 179
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ChassisViewModel"

    const-string v0, "HDC changed to false, re-send false to HDC"

    .line 180
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setHdc(Z)V

    :cond_0
    return-void
.end method

.method public handleSteeringEpsChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eps"
        }
    .end annotation

    .line 218
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->fromEpsState(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ChassisViewModel"

    if-eqz p1, :cond_1

    .line 220
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In XSport Mode "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", and do not need to post EPS Value"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mWheelEps:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "handle error eps state"

    .line 229
    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleTrailerModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTrailerModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 327
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "trailer_mode_sw"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method protected handleTtmHookMotorStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmMotorMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleTtmSwitchStatusChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 306
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    .line 307
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->fromBcCmd(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    const-string v1, "ChassisViewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 309
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmSwitchData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTtmSwitchStatusChanged status= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Close:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne p1, v0, :cond_1

    .line 313
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTrailerModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error TtmSwitch Status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleTtmSysErrStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isErr"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTtmSysErrData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onApbSystemStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mApbStatusData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onEspBpfModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 208
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->fromBpfState(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspBpfModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Esp Bpf Mode Data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ChassisViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onEspCstSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspCstSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onEspOffRoadStatusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mEspOffRoadStatusData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onHdcFaultChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFault"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mHdcFault:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTpmsAbnormalWarningStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "abnormal"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsAbnormalData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTpmsCalibrationStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 413
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->fromTpmsState(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsCalibrationStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 416
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->updateTyrePressure(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;)V

    goto :goto_0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Tpms CalibrationState Changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ChassisViewModel"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onTpmsPressureChanged(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "pressure"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrValue:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 392
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlValue:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 389
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrValue:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 386
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlValue:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    if-eqz p1, :cond_5

    const-string v0, "isSupportManualTpmsCalibrate"

    .line 402
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTpmsCalibrationStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;->Fixing:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsCalibrationStatus;

    if-ne v0, v1, :cond_4

    const-string p2, "ChassisViewModel"

    const-string v0, "Tp is under calibration, return default pressure:--"

    .line 403
    invoke-static {p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "-.-"

    .line 404
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 406
    :cond_4
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->formatPressureFormat(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onTpmsSensorWarningStateChanged([Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 469
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrSensorWarningStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x3

    aget-boolean p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTpmsSystemFaultStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fault"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsSystemFaultData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTpmsTempChanged([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 444
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlTempData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrTempData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlTempData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrTempData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x3

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTpmsTempWarningStateChanged([Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 434
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlTempWarningData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrTempWarningData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlTempWarningData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrTempWarningData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x3

    aget-boolean p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTpmsWarningStateChanged([I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "states"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 454
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlWarningState:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->fromTpms(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrWarningState:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->fromTpms(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlWarningState:Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x2

    aget v4, p1, v3

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->fromTpms(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrWarningState:Landroidx/lifecycle/MutableLiveData;

    const/4 v4, 0x3

    aget v5, p1, v4

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->fromTpms(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFlWarningStatus:Landroidx/lifecycle/MutableLiveData;

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsFrWarningStatus:Landroidx/lifecycle/MutableLiveData;

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRlWarningStatus:Landroidx/lifecycle/MutableLiveData;

    aget v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mTpmsRrWarningStatus:Landroidx/lifecycle/MutableLiveData;

    aget p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public resumeAsHeight()V
    .locals 9

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v0

    .line 695
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getCustomerModeFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAirSuspensionHeightSp()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->toAsHeightLevel(I)I

    move-result v2

    :goto_0
    const-string v3, "isSupportXpu"

    .line 699
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 700
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsTargetMinHeightRequest()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 704
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsTargetMaxHeightRequest()I

    move-result v3

    if-nez v3, :cond_2

    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_2

    :cond_2
    move v5, v4

    move v4, v3

    .line 709
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeAsHeight targetHeight: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Current DriveMode: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ChassisViewModel"

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-lt v2, v4, :cond_5

    if-gt v2, v5, :cond_5

    if-eqz v1, :cond_4

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAirSuspensionHeightSp()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAirSuspensionHeight(I)V

    goto :goto_3

    .line 714
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->toAsDriveMode(I)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAsDrivingMode(I)V

    goto :goto_3

    :cond_5
    const-string v0, "Invalid AS Target Height Lvl Set"

    .line 717
    invoke-static {v6, v0, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    return-void
.end method

.method public setAsEngineerMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->toBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEngineeringModeStatus(I)V

    :cond_0
    return-void
.end method

.method public setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAsHeightMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "height",
            "storeEnable"
        }
    .end annotation

    .line 654
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->toBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAirSuspensionHeightMode(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAsSoftMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "softMode"
        }
    .end annotation

    .line 770
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->toBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAirSuspensionSoftMode(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEspBpfModeValue(Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 797
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->toBpfCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEspBpfMode(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setSteeringEps(Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 633
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->toEpsCmd()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setSteeringEps(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateAsSaveResult(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->mAsSaveResult:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
