.class public Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;
.source "CarBodyViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarBodyViewModel"


# instance fields
.field private final mArsWorkModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoPowerOffData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumnTravelAdjData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcChargeErrorData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcChargingStData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcFRSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcFrChargeErrorData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcFrChargingStData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcRLSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcRRSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcRlChargeErrorData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcRlChargingStData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcRrChargeErrorData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcRrChargingStData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCwcSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDriveAutoLock:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironmentModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInductionLockEnable:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeaveAutoLock:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftChargePortState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftChildLock:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeftDoorHotKey:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockResponseNew:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mNearAutoUnlock:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mParkingAutoUnlock:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneRemindData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRearWiperRepairMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightChargePortState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightChildLock:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightDoorHotKey:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStealthData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStopNfcData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnLockResponseNew:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnlockResponse:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWiperInterval:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;",
            ">;"
        }
    .end annotation
.end field

.field private final mWiperRepairMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWiperSensitivity:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperSensitivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;-><init>()V

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mDriveAutoLock:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mParkingAutoUnlock:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mNearAutoUnlock:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeaveAutoLock:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mInductionLockEnable:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mUnlockResponse:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLockResponseNew:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mUnLockResponseNew:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mChildMode:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftChildLock:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightChildLock:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftDoorHotKey:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightDoorHotKey:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperInterval:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperRepairMode:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRearWiperRepairMode:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftChargePortState:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightChargePortState:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mStealthData:Landroidx/lifecycle/MutableLiveData;

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mStopNfcData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperSensitivity:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcSwData:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFRSwData:Landroidx/lifecycle/MutableLiveData;

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRLSwData:Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRRSwData:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mAutoPowerOffData:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mArsWorkModeData:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mEnvironmentModeData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcChargingStData:Landroidx/lifecycle/MutableLiveData;

    .line 59
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFrChargingStData:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRlChargingStData:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRrChargingStData:Landroidx/lifecycle/MutableLiveData;

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    .line 64
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFrChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    .line 65
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRlChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    .line 66
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRrChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    .line 68
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mColumnTravelAdjData:Landroidx/lifecycle/MutableLiveData;

    .line 71
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mPhoneRemindData:Landroidx/lifecycle/MutableLiveData;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mBcmCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mTboxCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 81
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$6xWlSYWUO-NWLxxNxJOpPgpyk1E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$6xWlSYWUO-NWLxxNxJOpPgpyk1E;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 82
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$6xWlSYWUO-NWLxxNxJOpPgpyk1E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$6xWlSYWUO-NWLxxNxJOpPgpyk1E;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;)V

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chargePort",
            "unlock"
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->toBcmPortValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setChargePortUnlock(IZ)V

    return-void
.end method

.method public getArsWorkModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mArsWorkModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAutoPowerOffConfig()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->getAutoPowerOffConfig()Z

    move-result v0

    return v0
.end method

.method public getAutoPowerOffData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mAutoPowerOffData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "port"
        }
    .end annotation

    .line 260
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->toBcmPortValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getChargePortUnlock(I)I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 262
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    return-object p1
.end method

.method public getChildMode()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mChildMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getColumnTravelAdjData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mColumnTravelAdjData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcChargeErrorData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcChargingStData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcChargingStData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcFRSwData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFRSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcFrChargeErrorData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFrChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcFrChargingStData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFrChargingStData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcRLSwData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRLSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcRRSwData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRRSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcRlChargeErrorData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRlChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcRlChargingStData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRlChargingStData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcRrChargeErrorData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRrChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcRrChargingStData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRrChargingStData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCwcSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDriveAutoLockData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mDriveAutoLock:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEnvironmentModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mEnvironmentModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getInductionLockData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mInductionLockEnable:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeaveAutoLockData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeaveAutoLock:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftChargePortStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftChargePortState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftChildLockData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftChildLock:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLeftDoorHotKey()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftDoorHotKey:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLockResponseNewData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLockResponseNew:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLockResponseNewMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLockResponseNew()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNearAutoUnlockData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mNearAutoUnlock:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getParkingAutoUnlockData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mParkingAutoUnlock:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPhoneRemindData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mPhoneRemindData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRearWiperRepairModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRearWiperRepairMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightChargePortStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightChargePortState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightChildLockData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightChildLock:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRightDoorHotKey()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightDoorHotKey:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getStopNfcSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mStopNfcData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUnLockResponseNewData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mUnLockResponseNew:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUnLockResponseNewMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getUnLockResponseNew()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockResponseData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mUnlockResponse:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUnlockResponseMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getUnlockResponse()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    move-result-object v0

    return-object v0
.end method

.method public getWiperIntervalData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperInterval:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWiperIntervalValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperInterval:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    if-eqz v0, :cond_0

    return-object v0

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperSensitivity()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->fromSensitivityBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getWiperRepairModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperRepairMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWiperSensitivityData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperSensitivity;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperSensitivity:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWiperSensitivityValue()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperSensitivity;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getWiperSensitivity()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperSensitivity;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperSensitivity;

    move-result-object v0

    return-object v0
.end method

.method protected handleArsWorkModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mArsWorkModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleAutoPowerOffConfigChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mAutoPowerOffData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleChargePortChanged(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "state"
        }
    .end annotation

    .line 447
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyBaseViewModel;->handleChargePortChanged(ZI)V

    .line 448
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftChargePortState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightChargePortState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Charge Port State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleChildLockChanged(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftLocked",
            "rightLocked"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftChildLock:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 377
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightChildLock:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleChildModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mChildMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCiuRainWiperIntervalChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wiper"
        }
    .end annotation

    .line 417
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->fromCiuState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperInterval:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Ciu Rain WiperMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleColumnTravelAdjStatusChange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mColumnTravelAdjData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcChargeErrorStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcChargeStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcChargingStData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcFRChargeErrorStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFrChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcFRChargeStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFrChargingStData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcFRSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcFRSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcRLChargeErrorStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRlChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcRLChargeStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRlChargingStData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcRLSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRLSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcRRChargeErrorStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRrChargeErrorData:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcRRChargeStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRrChargingStData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcRRSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcRRSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCwcSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mCwcSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDriveLockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mDriveAutoLock:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleEnvironmentModeChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mEnvironmentModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleInductionLock(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mInductionLockEnable:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeaveAutoLock(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeaveAutoLock:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftChildLockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftChildLock:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLeftHotKeyChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLeftDoorHotKey:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLockTypeNewChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mLockResponseNew:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleNearAutoUnlock(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mNearAutoUnlock:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleNfcStopSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mStopNfcData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleParkUnlockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mParkingAutoUnlock:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handlePhoneRemindSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mPhoneRemindData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRearWiperRepairModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRearWiperRepairMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightChildLockChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightChildLock:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleRightHotKeyChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locked"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mRightDoorHotKey:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleStealModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mStealthData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUnLockTypeNewChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mUnLockResponseNew:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUnlockTypeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mUnlockResponse:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleWiperIntervalModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wiper"
        }
    .end annotation

    .line 407
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperInterval:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 411
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error WiperIntervalMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleWiperRepairModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperRepairMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleWiperSensitivityChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 427
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->fromSensitivityBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mWiperInterval:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Wiper Sensitivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setAutoPowerOffConfig(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->mTboxController:Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ITboxController;->setAutoPowerOffConfig(Z)V

    return-void
.end method

.method public setLockResponseNewMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->toBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setLockResponseNew(I)V

    :cond_0
    return-void
.end method

.method public setUnLockResponseNewMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->toBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnLockResponseNew(I)V

    :cond_0
    return-void
.end method

.method public setUnlockResponseMode(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->toBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setUnlockResponse(I)V

    :cond_0
    return-void
.end method

.method public setWiperInterval(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->toSensitivityBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperSensitivity(I)V

    :cond_0
    return-void
.end method

.method public setWiperSensitivity(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperSensitivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperSensitivity;->toBcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setWiperSensitivity(I)V

    goto :goto_0

    .line 216
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->TAG:Ljava/lang/String;

    const-string v0, "setWiperSensitivity with null"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
