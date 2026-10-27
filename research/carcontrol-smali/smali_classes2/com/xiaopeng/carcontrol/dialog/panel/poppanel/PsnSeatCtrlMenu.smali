.class public Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;
.super Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;
.source "PsnSeatCtrlMenu.java"


# instance fields
.field private mCloseBtnBg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

.field private mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;-><init>()V

    return-void
.end method


# virtual methods
.method public getDropdownMenuGroupId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0053

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SeatPsnPopPanelMenuDialog"

    return-object v0
.end method

.method protected isEqulPreStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onInitView$0$PsnSeatCtrlMenu(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onInitView$1$PsnSeatCtrlMenu(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatPosIdx()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const v3, 0x7f110335

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryPsnSeatData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatPsnRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mCloseBtnBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$2$PsnSeatCtrlMenu(Landroid/view/View;)V
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
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatPosIdx()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const v0, 0x7f110329

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restorePsnSeatPos()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatPsnRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onInitView()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onInitView()V

    const v0, 0x7f0a00e3

    .line 53
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mCloseBtnBg:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f0a018f

    .line 54
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PsnSeatCtrlMenu$W1jx9cFpgbNiVv8eEk5ipsDCUg4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PsnSeatCtrlMenu$W1jx9cFpgbNiVv8eEk5ipsDCUg4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035e

    .line 57
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a0360

    .line 58
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    const v0, 0x7f0a02e8

    .line 60
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const-string/jumbo v1, "\u4fdd\u5b58"

    .line 61
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    const v0, 0x7f0a02e1

    .line 63
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 64
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    const v0, 0x7f0a02d4

    .line 65
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PsnSeatCtrlMenu$e_7hulgdEHehF2M_xbzHdJtk18M;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PsnSeatCtrlMenu$e_7hulgdEHehF2M_xbzHdJtk18M;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PsnSeatCtrlMenu$PTxv1kCsCeDEhGNmXTdjNaQeOMM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$PsnSeatCtrlMenu$PTxv1kCsCeDEhGNmXTdjNaQeOMM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 0
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

    .line 89
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRefresh()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onRefresh()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mCloseBtnBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v1, 0x7f11031f

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 0

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

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->isShow()Z

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

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/PsnSeatCtrlMenu;->mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_1

    .line 123
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
