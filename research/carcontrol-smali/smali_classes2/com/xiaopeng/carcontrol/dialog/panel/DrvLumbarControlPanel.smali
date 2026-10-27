.class public Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "DrvLumbarControlPanel.java"


# instance fields
.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mUtteranceId:Ljava/lang/String;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d004e

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

    const-string v0, "LumbarControlSysDialog"

    return-object v0
.end method

.method public synthetic lambda$onRegisterLiveData$0$DrvLumbarControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_0

    .line 48
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110110

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$1$DrvLumbarControlPanel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isActive"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110111

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->dismiss()V

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

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mUtteranceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mUtteranceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mUtteranceId:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->exitDrvLumbarScene()V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->cancelAllControlDrvLumbar()V

    return-void
.end method

.method protected onInitView()V
    .locals 0

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

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    return-void
.end method

.method protected onInterceptShow()Z
    .locals 5

    .line 117
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onInterceptShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccStateForMirror()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIntercept accState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f110110

    .line 121
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    return v3

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIntercept CruiseState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isCruiseActive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isCruiseActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f110111

    .line 127
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    return v3

    :cond_1
    return v1
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

    .line 87
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    const/16 v0, 0x7530

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setOutTimeDismiss(I)V

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->onDrvLumbarControl(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_1

    return v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->dismiss()V

    return v1

    :cond_2
    return v0
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccForMirrorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$DrvLumbarControlPanel$efyHtcK00VYnmn-4fqKdMlJDZM4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$DrvLumbarControlPanel$efyHtcK00VYnmn-4fqKdMlJDZM4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCruiseData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$DrvLumbarControlPanel$zc2Gv_ZLR3kuT2Bfrm27PXn8TFY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$DrvLumbarControlPanel$zc2Gv_ZLR3kuT2Bfrm27PXn8TFY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onShow()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/DrvLumbarControlPanel;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->enterDrvLumbarScene()V

    return-void
.end method
