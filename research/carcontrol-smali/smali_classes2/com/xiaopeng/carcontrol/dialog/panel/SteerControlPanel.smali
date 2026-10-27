.class public Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "SteerControlPanel.java"


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0067

    return v0
.end method

.method protected getPanelHeight()I
    .locals 1

    const v0, 0x7f0701f7

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    const v0, 0x7f0701f8

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SteerControlSysDialog"

    return-object v0
.end method

.method public synthetic lambda$onRegisterLiveData$0$SteerControlPanel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setColumnTravelAdjEnableSt(Z)V

    :cond_0
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDismiss()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getColumnTravelAdjEnableSt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setColumnTravelAdjEnableSt(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->exitSteerScene()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->cancelAllControlSteer()V

    return-void
.end method

.method protected onInitView()V
    .locals 0

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    return-void
.end method

.method protected onKey(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "ev"
        }
    .end annotation

    .line 75
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 77
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    const/16 v1, 0x7530

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setOutTimeDismiss(I)V

    .line 78
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object p2

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getColumnTravelAdjEnableSt()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setColumnTravelAdjEnableSt(Z)V

    return v0

    .line 79
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->onSteerControl(I)Z

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x0

    if-ne v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_3

    return v1

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->dismiss()V

    return v0

    :cond_4
    return v1
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getColumnTravelAdjData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SteerControlPanel$397eX5tjoM_cuJ4o-2YBmQyJGaw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SteerControlPanel$397eX5tjoM_cuJ4o-2YBmQyJGaw;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onShow()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->enterSteerScene()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->setColumnTravelAdjEnableSt(Z)V

    return-void
.end method
