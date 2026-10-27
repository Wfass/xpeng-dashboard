.class public Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;
.super Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;
.source "PGearCtrlMenu.java"


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mCloseTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mCloseTrunkLoad:Lcom/xiaopeng/xui/widget/XLoading;

.field private mOpenTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mOpenTrunkLoad:Lcom/xiaopeng/xui/widget/XLoading;

.field mQuickControlVisibleObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

.field mTrunkStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;",
            ">;"
        }
    .end annotation
.end field

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

.field private mWindowVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

.field private textViewTitle:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;-><init>()V

    .line 249
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$gUMAVUXI2DrghCi2kAsGmKzQ6NE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$gUMAVUXI2DrghCi2kAsGmKzQ6NE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mQuickControlVisibleObserver:Landroidx/lifecycle/Observer;

    .line 255
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$xE8Mmp910rJi4QDF3ZtdxaWgxLk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$xE8Mmp910rJi4QDF3ZtdxaWgxLk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mTrunkStateObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method private updateTrunkView(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trunkState"
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const-string v0, "isSupportElcTrunk"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 266
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkLoad:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    if-ne p1, v0, :cond_1

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkLoad:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkLoad:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkLoad:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getAutoHide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDropdownMenuGroupId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDurationLength()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ac

    return v0
.end method

.method public synthetic lambda$new$10$PGearCtrlMenu(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "visible"
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$11$PGearCtrlMenu(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "trunkState"
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->updateTrunkView(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)V

    return-void
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

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onInitView$1$PGearCtrlMenu(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openRearTrunk()V

    return-void
.end method

.method public synthetic lambda$onInitView$2$PGearCtrlMenu(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;->Close:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRearTrunk(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;)I

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

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$4$PGearCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$5$PGearCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$6$PGearCtrlMenu(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAirSuspensionRepairMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerModeStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setEasyLoadingSwitch(Z)V

    return-void

    .line 183
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11003f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method public synthetic lambda$onInitView$7$PGearCtrlMenu(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 191
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f11027e

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setParkDropdownMenuEnable(ZZ)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onInitView$8$PGearCtrlMenu(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZZ)V

    return-void
.end method

.method public synthetic lambda$onInitView$9$PGearCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZZ)V

    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onInitView()V
    .locals 4

    .line 88
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onInitView()V

    const v0, 0x7f0a0360

    .line 89
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->textViewTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a035e

    .line 90
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a00e8

    .line 91
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkLoad:Lcom/xiaopeng/xui/widget/XLoading;

    const v0, 0x7f0a0276

    .line 92
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkLoad:Lcom/xiaopeng/xui/widget/XLoading;

    const v0, 0x7f0a00e7

    .line 93
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v1, 0x7f0a0275

    .line 94
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v2, 0x7f0a018f

    .line 95
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$Y7gYsWs4k2oaMwkbvagsfX3hG90;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$Y7gYsWs4k2oaMwkbvagsfX3hG90;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$sLObW_jvM54Gf3lnZXMkLeqUhkk;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$sLObW_jvM54Gf3lnZXMkLeqUhkk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "isSupportElcTrunk"

    .line 102
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$DWjGbS3ybuRC82t3D9FmSc5V6Lo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$DWjGbS3ybuRC82t3D9FmSc5V6Lo;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0033

    .line 110
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    const v1, 0x7f0a0113

    .line 128
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XButton;

    const-string v3, "isSingleChargePort"

    .line 144
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    .line 145
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    const v0, 0x7f110278

    .line 146
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    goto :goto_0

    :cond_1
    const v3, 0x7f110277

    .line 148
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    const v3, 0x7f110279

    .line 149
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 150
    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$JCVP0Rat-hriNvF0dnTgUd4iy54;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$JCVP0Rat-hriNvF0dnTgUd4iy54;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const-string v0, "isChargePortSignalErr"

    .line 159
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$9JZDQYsED0ebgAyIYXOygeuCtHE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$9JZDQYsED0ebgAyIYXOygeuCtHE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 165
    :cond_2
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$Fv5y_DDGHYsJu3hxwxNxtc8Gc1Y;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$Fv5y_DDGHYsJu3hxwxNxtc8Gc1Y;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const-string v0, "isSupportAirSuspension"

    .line 171
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->textViewTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v1, -0x2

    .line 173
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->textViewTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a013d

    .line 175
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 176
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$XQN6fLNbC-Hmkw7MFSLf_EWT0Sc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$XQN6fLNbC-Hmkw7MFSLf_EWT0Sc;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f0a0129

    .line 190
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$WFKcwebwqSAsXT2GAJchQpDm5fE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$WFKcwebwqSAsXT2GAJchQpDm5fE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "isSupportSdc"

    .line 195
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a015a

    .line 196
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$iFCTJ7tlRScKTKFMhkWo383pe18;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$iFCTJ7tlRScKTKFMhkWo383pe18;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0164

    .line 202
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$q1WqrJKSe4ZlXrH784Qp33fV69A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PGearCtrlMenu$q1WqrJKSe4ZlXrH784Qp33fV69A;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 54
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mWinDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 55
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 56
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 57
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mWindowVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    return-void
.end method

.method protected onInterceptShow()Z
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onInterceptShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isQuickControlVisible()Z

    move-result v0

    return v0
.end method

.method protected onRefresh()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onRefresh()V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mCloseTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mOpenTrunkBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mWindowVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRearTrunkStateValue()Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->updateTrunkView(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)V

    :cond_0
    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getQuickControlVisibleData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mQuickControlVisibleObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mWindowVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRearTrunkData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mTrunkStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onShowTimeUpdate(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x44c

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const p2, 0x7f11035e

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected unRegisterLiveData()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->unRegisterLiveData()V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getQuickControlVisibleData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PGearCtrlMenu;->mQuickControlVisibleObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
