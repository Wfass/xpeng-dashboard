.class public Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;
.super Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;
.source "SeatMirrorGuestCtrlMenu.java"


# instance fields
.field private groupName:Ljava/lang/String;

.field private isLogin:Z

.field private mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field private mCloseBtnBg:Landroid/view/View;

.field private mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

.field private mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mTimeTxt:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;-><init>()V

    return-void
.end method

.method private checkChairMovable(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVuiAction"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f1103a1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->vuiFeedback(ILandroid/view/View;)V

    :cond_0
    return v1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvDoorOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f11039e

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    if-eqz p1, :cond_2

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->vuiFeedback(ILandroid/view/View;)V

    :cond_2
    return v1

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_5

    .line 197
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f11039f

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    if-eqz p1, :cond_4

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->vuiFeedback(ILandroid/view/View;)V

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getDropdownMenuGroupId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d005c

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SeatGuestPopPanelMenu"

    return-object v0
.end method

.method public synthetic lambda$onInitView$0$SeatMirrorGuestCtrlMenu(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onInitView$1$SeatMirrorGuestCtrlMenu(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatPosIdx()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const v1, 0x7f110335

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryDrvSeatData()Z

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mCloseBtnBg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$2$SeatMirrorGuestCtrlMenu(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->checkChairMovable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const v1, 0x7f110329

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatPosIdx()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, p1

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos()Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$onInitView$3$SeatMirrorGuestCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    const/16 v1, 0xbc0

    .line 99
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$4$SeatMirrorGuestCtrlMenu(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "curSpeed"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$5$SeatMirrorGuestCtrlMenu(Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const v1, 0x7f110320

    const v2, 0x7f11031f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    goto/16 :goto_2

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    goto :goto_2

    .line 128
    :cond_3
    iput-boolean v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->isLogin:Z

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->isLogin:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->groupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->groupName:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 135
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_4
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->isLogin:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->groupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->groupName:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 148
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 149
    :cond_6
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onInitView()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onInitView()V

    const v0, 0x7f0a00e3

    .line 63
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mCloseBtnBg:Landroid/view/View;

    const v0, 0x7f0a018f

    .line 64
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$-phdF76WZWbsQ27gQpWKnbEjpi8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$-phdF76WZWbsQ27gQpWKnbEjpi8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035e

    .line 67
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mTimeTxt:Landroid/widget/TextView;

    const v0, 0x7f0a0360

    .line 68
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a02e8

    .line 70
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 71
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    const v0, 0x7f0a02e1

    .line 72
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 73
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    const v0, 0x7f0a02d4

    .line 74
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$e31LwEX6gjDQlf8EKKhuvlYBWEE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$e31LwEX6gjDQlf8EKKhuvlYBWEE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$-rlJ1oE_-GagSUhL9NbDijSrooQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$-rlJ1oE_-GagSUhL9NbDijSrooQ;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a023b

    .line 94
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$YOkiok-X0L_3efmIMskyoGB7YME;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$YOkiok-X0L_3efmIMskyoGB7YME;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    .line 108
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a02e1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->checkChairMovable(Z)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRefresh()V
    .locals 5

    .line 162
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onRefresh()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->isLogin:Z

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mCloseBtnBg:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mTitle:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->isLogin:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->groupName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f110320

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->groupName:Ljava/lang/String;

    aput-object v4, v2, v0

    .line 172
    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const v0, 0x7f11031f

    .line 173
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$1AlsxB0QPXol07OBsmrLKpym9CQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$1AlsxB0QPXol07OBsmrLKpym9CQ;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCreateSyncGroupData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$-rc_cPfTqknEe-AxthjHcGhpvXM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorGuestCtrlMenu$-rc_cPfTqknEe-AxthjHcGhpvXM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorGuestCtrlMenu;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
