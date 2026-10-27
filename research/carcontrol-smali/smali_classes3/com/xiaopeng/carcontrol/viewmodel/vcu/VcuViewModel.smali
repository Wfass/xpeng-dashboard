.class public Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;
.source "VcuViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VcuViewModel"


# instance fields
.field private final mAsAutoEasyLoadMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoShowModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableMileageData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAwdSetting:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBrakeLightData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarSpd:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mChargeGunStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mCruiseData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDCChargeStatusData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDriveMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mDriveSubConfigData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mElectricityPercent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnergyRecycle:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;",
            ">;"
        }
    .end annotation
.end field

.field private final mEvSysReadyData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mExhibitionMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGearLevel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final mNGearWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mParkDropdownMenuData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerResponseData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuickControlVisibleData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRwsModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnowModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSsaSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrailerSwitchData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mVMCSystemStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mXPedalSwitchData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mXSportDriveMode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mZwalkModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
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
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;-><init>()V

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDriveMode:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mXSportDriveMode:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mEnergyRecycle:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDCChargeStatusData:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mChargeGunStatus:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mGearLevel:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mCarSpd:Landroidx/lifecycle/MutableLiveData;

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mSnowModeData:Landroidx/lifecycle/MutableLiveData;

    .line 51
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mEvSysReadyData:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mNGearWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 55
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mExhibitionMode:Landroidx/lifecycle/MutableLiveData;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mCruiseData:Landroidx/lifecycle/MutableLiveData;

    .line 59
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mElectricityPercent:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mQuickControlVisibleData:Landroidx/lifecycle/MutableLiveData;

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mPowerResponseData:Landroidx/lifecycle/MutableLiveData;

    .line 65
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mXPedalSwitchData:Landroidx/lifecycle/MutableLiveData;

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAvailableMileageData:Landroidx/lifecycle/MutableLiveData;

    .line 69
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mTrailerSwitchData:Landroidx/lifecycle/MutableLiveData;

    .line 71
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mSsaSwData:Landroidx/lifecycle/MutableLiveData;

    .line 73
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mParkDropdownMenuData:Landroidx/lifecycle/MutableLiveData;

    .line 75
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAwdSetting:Landroidx/lifecycle/MutableLiveData;

    .line 77
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAsAutoEasyLoadMode:Landroidx/lifecycle/MutableLiveData;

    .line 79
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mRwsModeData:Landroidx/lifecycle/MutableLiveData;

    .line 81
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mZwalkModeData:Landroidx/lifecycle/MutableLiveData;

    .line 83
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVMCSystemStateData:Landroidx/lifecycle/MutableLiveData;

    .line 85
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAutoShowModeData:Landroidx/lifecycle/MutableLiveData;

    .line 87
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDriveSubConfigData:Landroidx/lifecycle/MutableLiveData;

    .line 488
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mBrakeLightData:Landroidx/lifecycle/MutableLiveData;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method


# virtual methods
.method public getAsAutoEasyLoadMode()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAsAutoEasyLoadMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAutoShowModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAutoShowModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAvailableMileageData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAvailableMileageData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAwdSettingData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAwdSetting:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getBrakeLightData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mBrakeLightData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCarSpeedData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mCarSpd:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getChargeGunStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mChargeGunStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCruiseData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mCruiseData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDCChargeStatusData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDCChargeStatusData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDriveModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDriveMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDriveModeValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
    .locals 3

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->fromVcuDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 312
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDriveModeValueByUser()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;
    .locals 3

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeByUser()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->fromVcuDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 321
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDriveSubConfigData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDriveSubConfigData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getElectricityPercentData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mElectricityPercent:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getEnergyRecycle()Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;
    .locals 3

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getEnergyRecycleGrade()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->fromVcuRecycleState(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 359
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnergyRecycleByUser()Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;
    .locals 3

    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getEnergyRecycleGradeByUser()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->fromVcuRecycleState(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 368
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnergyRecycleData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mEnergyRecycle:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getExhibitionModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mExhibitionMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getFirsTimeXSport(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFirsTimeXSport, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 333
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "com.xiaopeng.xsport.XSportService"

    .line 334
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "isFirstEnterXSportDriveMode"

    .line 335
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 336
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "driveMode"

    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 339
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 340
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirsTimeXSport, result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move v2, p1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 342
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    const-string v0, "getFirsTimeXSport() error."

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    :goto_2
    return p1
.end method

.method public getFirstEnterXpowerFlag()Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getFirstEnterXpowerFlag()Z

    move-result v0

    return v0
.end method

.method public getGearLevelData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mGearLevel:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->fromVcuGearLevel(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    return-object v0
.end method

.method public getNGearWarningSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mNGearWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getParkDropdownMenuData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mParkDropdownMenuData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getParkDropdownMenuEnable()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getParkDropdownMenuEnable()Z

    move-result v0

    return v0
.end method

.method public getPowerResponse()Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;
    .locals 3

    .line 383
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getPowerResponseMode()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->fromVcuState(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 385
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPowerResponseData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;",
            ">;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mPowerResponseData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getQuickControlVisibleData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mQuickControlVisibleData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRwsModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mRwsModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSnowModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mSnowModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSsaSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mSsaSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTrailerSwitchData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mTrailerSwitchData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVMCSystemData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVMCSystemStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXPedalSwitchData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mXPedalSwitchData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXSportDriveModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mXSportDriveMode:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getZwalkModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mZwalkModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected handleBrakeLightChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mBrakeLightData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCarSpeedChanged(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mCarSpd:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleCruiseChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActive"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mCruiseData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleEvSysReady(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ready"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mEvSysReadyData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleExhibitionModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mExhibitionMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleGearChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gear"
        }
    .end annotation

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mGearLevel:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->fromVcuGearLevel(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleNGearWarningSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mNGearWarningData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handlePowerResponseModeChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->fromVcuState(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mPowerResponseData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Error Power Response Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected handleQuickControlVisible(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isQuickControlVisible"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mQuickControlVisibleData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleShowModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string p1, "isSupportWelcomeMode"

    .line 549
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 550
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->setSeatWelcomeMode(Z)V

    :cond_0
    const-string p1, "isSupportPsnWelcomeMode"

    .line 552
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 553
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mMmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setPsnSeatWelcomeMode(Z)V

    :cond_1
    const-string p1, "isSupportSeatRhythm"

    .line 555
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 556
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mMmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mMmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->getRhythmMode()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmMode(I)V

    .line 557
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 558
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 559
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mMmsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;->setRhythmEnable(Ljava/util/Set;Z)V

    :cond_2
    return-void
.end method

.method protected handleSnowModeChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportXSportRacerMode"

    .line 185
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 186
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 187
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "handleSnowModeChange in Racer Mode, Return"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mSnowModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSsaSwChange(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mSsaSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleTrailerModeSwitchChange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mTrailerSwitchData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleXPedalModeSwitchChange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mXPedalSwitchData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public isAutoEasyLoadingMode()Z
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getAutoEasyLoadMode()Z

    move-result v0

    return v0
.end method

.method public isChargeGunLinked()Z
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getChargeGunStatus()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 407
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getChargeGunStatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInDcCharge()Z
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getChargeGunStatus()I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getChargeStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParkingMode()Z
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getPureDriveModeStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic lambda$setParkDropdownMenuEnable$0$VcuViewModel(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "enable"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mParkDropdownMenuData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected mockPostDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    return-void
.end method

.method protected mockPostEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "energyRecycleGrade"
        }
    .end annotation

    return-void
.end method

.method public onAutoEasyLoadModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAsAutoEasyLoadMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAutoShowModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAutoShowModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAvailableMileageChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mileage"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAvailableMileageData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAwdSettingChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mAwdSetting:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Error AwdSetting Changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onChargeGunStatusChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mChargeGunStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;->fromVcuStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onChargeStatusChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getChargeGunStatus()I

    move-result v0

    .line 158
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChargeStatusChanged: gunStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", chargeStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDCChargeStatusData:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onDriveModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->fromVcuDriveMode(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDriveMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Error Drive Mode Changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onDriveSubConfigChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mDriveSubConfigData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onElecPercentChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mElectricityPercent:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onModesDrivingXSport(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetMode"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->toVcuCmd()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->onModesDrivingXSport(I)I

    move-result p1

    return p1
.end method

.method public onPGearMenuRemindState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mParkDropdownMenuData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onRecycleGradeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mEnergyRecycle:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->fromVcuRecycleState(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onRwsModeChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRwsModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mRwsModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onVMCSystemStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVMCSystemStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setVMCRwsSwitch(Z)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVMCSystemStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onZwalkModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mZwalkModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected postEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "energyRecycleGrade"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mEnergyRecycle:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoEasyLoadMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setAutoEasyLoadMode(Z)V

    return-void
.end method

.method public setEnergyRecycleGrade(Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grade"
        }
    .end annotation

    .line 378
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->toVcuRecycleCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setEnergyRecycleGrade(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setParkDropdownMenuEnable(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "fromNapa"
        }
    .end annotation

    .line 421
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setParkDropdownMenuEnable(Z)V

    const-string p2, "isSupportNapa"

    .line 422
    invoke-static {p2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 423
    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuViewModel$jb6VZhsP7SuFV4dIFlZ63Js0Ces;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuViewModel$jb6VZhsP7SuFV4dIFlZ63Js0Ces;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;Z)V

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setPowerResponse(Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->toVcuCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setPowerResponseMode(I)V

    return-void
.end method
