.class public Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "SteerControlFragment.java"


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field protected mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

.field private mUtteranceId:Ljava/lang/String;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0a00e4

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SteerControlFragment$0EJiZr00JFWjiQTu1hMgWY9sWHo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SteerControlFragment$0EJiZr00JFWjiQTu1hMgWY9sWHo;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private registerLiveData()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SteerControlFragment$WZY1LG_L-qPl2IQkBwAntixjpMQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$SteerControlFragment$WZY1LG_L-qPl2IQkBwAntixjpMQ;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0067

    return v0
.end method

.method protected initViewModels()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 45
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    return-void
.end method

.method public synthetic lambda$initView$0$SteerControlFragment(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$registerLiveData$1$SteerControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "gearLevel"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq p1, v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 31
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 32
    instance-of v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onDestroyView()V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mUtteranceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mUtteranceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mUtteranceId:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->exitSteerScene()V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->cancelAllControlSteer()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->enterSteerScene()V

    .line 75
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    const v1, 0x7f1103c6

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mUtteranceId:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mRootContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->initView(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->registerLiveData()V

    return-void
.end method
