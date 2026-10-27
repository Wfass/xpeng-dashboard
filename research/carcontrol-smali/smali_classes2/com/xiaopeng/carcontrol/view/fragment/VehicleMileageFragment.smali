.class public Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "VehicleMileageFragment.java"


# instance fields
.field private mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field protected mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private formatMileageText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawMileage"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f1100e5

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->getStringById(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0a0372

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListSingle;

    const v1, 0x7f0a0388

    .line 50
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_0

    .line 52
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getTotalMileageData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$uNnKjeOy-ZekBsMFmow5Pd-t-v8;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$uNnKjeOy-ZekBsMFmow5Pd-t-v8;-><init>(Lcom/xiaopeng/xui/widget/XTextView;)V

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 57
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageTotal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0a0232

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListSingle;

    .line 61
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_1

    .line 63
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageDataSinceCharge()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$KjZN-pupW3EOOXqZcyFSytyvqOQ;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$KjZN-pupW3EOOXqZcyFSytyvqOQ;-><init>(Lcom/xiaopeng/xui/widget/XTextView;)V

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 68
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageSinceLastCharge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0a0233

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListSingle;

    .line 72
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_2

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageDataSinceStart()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$MkutrUltCUTqVZB-B836CjsLgNo;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$MkutrUltCUTqVZB-B836CjsLgNo;-><init>(Lcom/xiaopeng/xui/widget/XTextView;)V

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 79
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageSinceStartUp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f0a0230

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListSingle;

    .line 83
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v2, :cond_3

    .line 85
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageAData()Landroidx/lifecycle/LiveData;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$MCqBGfXsuFrSUb3r_fyaKbjk2TU;

    invoke-direct {v4, v2}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$MCqBGfXsuFrSUb3r_fyaKbjk2TU;-><init>(Lcom/xiaopeng/xui/widget/XTextView;)V

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 90
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v2, 0x7f0a02ae

    .line 92
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f1100e0

    .line 94
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->getStringById(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 95
    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$KJ_1vk-4NfSms6YLR3lf4d-GOb4;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$KJ_1vk-4NfSms6YLR3lf4d-GOb4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0231

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XListSingle;

    .line 101
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_4

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageBData()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$GbeTUfm5KBMk_b7vk-cnjOX9Ylk;

    invoke-direct {v3, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$GbeTUfm5KBMk_b7vk-cnjOX9Ylk;-><init>(Lcom/xiaopeng/xui/widget/XTextView;)V

    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_4
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f1100e1

    .line 111
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->getStringById(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$CtqM9YO9IoUwAxhDxtnfON0uIf0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VehicleMileageFragment$CtqM9YO9IoUwAxhDxtnfON0uIf0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$initView$0(Lcom/xiaopeng/xui/widget/XTextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mTotalMileTv",
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initView$1(Lcom/xiaopeng/xui/widget/XTextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mChargeMileTv",
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initView$2(Lcom/xiaopeng/xui/widget/XTextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mStartMileTv",
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initView$3(Lcom/xiaopeng/xui/widget/XTextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mMileageATv",
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$initView$5(Lcom/xiaopeng/xui/widget/XTextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mileageBTv",
            "mileage"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0050

    return v0
.end method

.method protected initViewModels()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    return-void
.end method

.method public synthetic lambda$initView$4$VehicleMileageFragment(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->resetMeterMileageA()V

    return-void
.end method

.method public synthetic lambda$initView$6$VehicleMileageFragment(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mMeterVm:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->resetMeterMileageB()V

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

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 26
    instance-of v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onResume()V

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

    .line 43
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;->initView(Landroid/view/View;)V

    return-void
.end method
