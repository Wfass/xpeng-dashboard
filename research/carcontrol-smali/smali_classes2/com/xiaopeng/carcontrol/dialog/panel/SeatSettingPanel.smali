.class public Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "SeatSettingPanel.java"


# instance fields
.field private drvSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

.field private isDLumbControlSw:Z

.field private isPsnLumbControlSw:Z

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private psnSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

.field private seg_drv:Lcom/xiaopeng/xui/widget/XSegmented;

.field private seg_psn:Lcom/xiaopeng/xui/widget/XSegmented;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->drvSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->psnSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    return-object p0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0062

    return v0
.end method

.method protected getPanelHeight()I
    .locals 1

    const v0, 0x7f0701c4

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    const v0, 0x7f0701c5

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SeatSettingDialog"

    return-object v0
.end method

.method public synthetic lambda$onRegisterLiveData$0$SeatSettingPanel(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_drv:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->drvSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->setLegOrLumbar(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$1$SeatSettingPanel(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_psn:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->psnSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->setLegOrLumbar(Z)V

    :cond_0
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onInitView()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "generalAct"

    const-string v2, "System.Close"

    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const v0, 0x7f0a02f6

    .line 70
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_drv:Lcom/xiaopeng/xui/widget/XSegmented;

    const v0, 0x7f0a02f9

    .line 71
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_psn:Lcom/xiaopeng/xui/widget/XSegmented;

    const v0, 0x7f0a0191

    .line 72
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->drvSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    const v0, 0x7f0a019e

    .line 73
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->psnSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvLumbControlSw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isDLumbControlSw:Z

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_drv:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->drvSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isDLumbControlSw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->setLegOrLumbar(Z)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnLumbControlSw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isPsnLumbControlSw:Z

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_psn:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->psnSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isPsnLumbControlSw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->setLegOrLumbar(Z)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_drv:Lcom/xiaopeng/xui/widget/XSegmented;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_psn:Lcom/xiaopeng/xui/widget/XSegmented;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel$2;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V

    return-void
.end method

.method protected onRefresh()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onRefresh()V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvLumbControlSw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isDLumbControlSw:Z

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_drv:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->drvSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isDLumbControlSw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->setLegOrLumbar(Z)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnLumbControlSw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isPsnLumbControlSw:Z

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->seg_psn:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->psnSeatView:Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->isPsnLumbControlSw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingView;->setLegOrLumbar(Z)V

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onRegisterLiveData()V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvLumbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SeatSettingPanel$N3LHoYTPDWCRX9QVhY_c_mc3icM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SeatSettingPanel$N3LHoYTPDWCRX9QVhY_c_mc3icM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnLumbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SeatSettingPanel$xU49al79YmMgc-nURICWQCZdR-o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SeatSettingPanel$xU49al79YmMgc-nURICWQCZdR-o;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/SeatSettingPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
