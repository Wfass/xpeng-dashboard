.class public Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;
.super Ljava/lang/Object;
.source "SeatNotifyPGearDropDownMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu$SingleHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

.field private isLogin:Z

.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mContext:Landroid/content/Context;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SeatNotifyPGearDropDownMenu"

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->TAG:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->onInitViewModel()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;
    .locals 1

    .line 57
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doAcAction()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->controlChargePortByXKey(Z)V

    return-void
.end method

.method public doDcAction()V
    .locals 2

    const-string v0, "isChargePortSignalErr"

    .line 64
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->controlChargePortByXKey(Z)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->controlChargePortByXKey(Z)V

    :goto_0
    return-void
.end method

.method public doEasyLoadAction()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->as_easy_loading_open_failed_for_moving:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionRepairMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerModeStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEasyLoadingSwitch(Z)V

    return-void

    .line 77
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->as_easy_loading_open_failed_for_trailer_mode:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 85
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 86
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 87
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->carBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    return-void
.end method

.method protected final setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "liveData",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Landroidx/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method
