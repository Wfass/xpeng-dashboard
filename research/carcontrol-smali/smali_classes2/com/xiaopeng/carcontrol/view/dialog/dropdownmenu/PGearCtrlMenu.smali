.class public Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;
.super Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;
.source "PGearCtrlMenu.java"


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;-><init>()V

    return-void
.end method


# virtual methods
.method public getDropdownMenuGroupId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 61
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$layout;->p_gear_ctrl_menu:I

    return v0
.end method

.method public synthetic lambda$onInitView$0$PGearCtrlMenu(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openRearTrunk()V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->startAutoCloseTask()V

    return-void
.end method

.method public synthetic lambda$onInitView$1$PGearCtrlMenu(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;->Close:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRearTrunk(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;)I

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->startAutoCloseTask()V

    return-void
.end method

.method public synthetic lambda$onInitView$2$PGearCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->startAutoCloseTask()V

    return-void
.end method

.method public synthetic lambda$onInitView$3$PGearCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->startAutoCloseTask()V

    return-void
.end method

.method public synthetic lambda$onInitView$4$PGearCtrlMenu(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 118
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->as_easy_loading_open_failed_for_moving:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionRepairMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerModeStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEasyLoadingSwitch(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->startAutoCloseTask()V

    return-void

    .line 122
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->as_easy_loading_open_failed_for_trailer_mode:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method public synthetic lambda$onInitView$5$PGearCtrlMenu(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->p_gear_do_not_remind_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setParkDropdownMenuEnable(ZZ)V

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onInitView$6$PGearCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZZ)V

    const-wide/16 v0, 0xbb8

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->startAutoCloseTask(J)V

    return-void
.end method

.method public synthetic lambda$onInitView$7$PGearCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZZ)V

    const-wide/16 v0, 0xbb8

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->startAutoCloseTask(J)V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$8$PGearCtrlMenu(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "visible"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onInitView()V
    .locals 6

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->onInitView()V

    .line 67
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->open_trunk_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$LKSlH64N8w6KRpJNSEWdcvFhwlM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$LKSlH64N8w6KRpJNSEWdcvFhwlM;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "isSupportElcTrunk"

    .line 72
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->close_trunk_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    new-instance v2, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$IJAOoxktPloU_t3YPHVVZgTVn3E;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$IJAOoxktPloU_t3YPHVVZgTVn3E;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->ac_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    const-string v2, "isSingleChargePort"

    .line 82
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x8

    const-string v5, "isChargePortSignalErr"

    if-eqz v3, :cond_2

    .line 83
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->p_gear_ctrl_open_charge:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 89
    :cond_2
    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    :cond_3
    new-instance v3, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$In6uapfwDSPm3WWP5BnJgzwbtJ4;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$In6uapfwDSPm3WWP5BnJgzwbtJ4;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_4
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->dc_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    .line 101
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 102
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->p_gear_ctrl_open_charge:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 105
    :cond_5
    new-instance v2, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$si_sptedMmBvUNZSCC6fNAR-UV0;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$si_sptedMmBvUNZSCC6fNAR-UV0;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 111
    :cond_6
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    :goto_1
    const-string v0, "isSupportAirSuspension"

    .line 113
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->easy_loading_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    new-instance v2, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$7V-5BGPTzs6Hqsbuf1S8jp-lmTM;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$7V-5BGPTzs6Hqsbuf1S8jp-lmTM;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_7
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->do_not_remind:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$eKMmliUitlB8I_UXBpOptoZ31Qo;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$eKMmliUitlB8I_UXBpOptoZ31Qo;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "isSupportSdc"

    .line 135
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->fl_door_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    new-instance v2, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$k_FZZoAqGCrUuvpmD1JriLbiyf0;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$k_FZZoAqGCrUuvpmD1JriLbiyf0;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->fr_door_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$nL7l3_cnZWeslJxVK3YdsLELaMA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$nL7l3_cnZWeslJxVK3YdsLELaMA;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 42
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 43
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    return-void
.end method

.method protected onInterceptShow()Z
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/AbstractDropDownMenu;->onInterceptShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isQuickControlVisible()Z

    move-result v0

    return v0
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getQuickControlVisibleData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$mxb4QjVh1EpegG_EIn_LdAyPei8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/-$$Lambda$PGearCtrlMenu$mxb4QjVh1EpegG_EIn_LdAyPei8;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/dropdownmenu/PGearCtrlMenu;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
