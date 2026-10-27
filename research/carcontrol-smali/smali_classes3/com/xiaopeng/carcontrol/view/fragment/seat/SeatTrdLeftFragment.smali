.class public Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;
.source "SeatTrdLeftFragment.java"


# instance fields
.field private isSupportTrdRowHeadRest:Z

.field private isSupportTrdRowMidHeadRest:Z

.field private isSupportTrdRowSeatControl:Z

.field private mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

.field private mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

.field private mTrdRowLeftButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRowLeftButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private initCfcSupport()V
    .locals 1

    const-string v0, "isSupportTrdRowSeatControl"

    .line 128
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isSupportTrdRowSeatControl:Z

    const-string v0, "isSupportTrdRowHeadRest"

    .line 129
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isSupportTrdRowHeadRest:Z

    const-string v0, "isSupportTrdRowMidHeadRest"

    .line 130
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isSupportTrdRowMidHeadRest:Z

    return-void
.end method

.method private initSeatPartTab()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->clearSegment()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v1, 0x7f1102fb

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mLeftPartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "isSupportTrdRowHeadRest"

    .line 59
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v2, 0x7f1102fd

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mLeftPartList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    if-le v5, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private onRegisterLiveData()V
    .locals 2

    const-string v0, "isSupportTrdRowSeatControl"

    .line 135
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatTilt()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdLeftFragment$YsAB_AeLnd8QgK34GSThtkPq5G4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdLeftFragment$YsAB_AeLnd8QgK34GSThtkPq5G4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportTrdRowHeadRest"

    .line 141
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdLeftFragment$h4HX87PFqJkDzBd89lf-BcVdifA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdLeftFragment$h4HX87PFqJkDzBd89lf-BcVdifA;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v0, "isSupportTrdRowStow"

    .line 146
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$xVyJTMJvqYtxzy3i6JDIES2vJW8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$xVyJTMJvqYtxzy3i6JDIES2vJW8;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_2
    return-void
.end method

.method private setClickListener()V
    .locals 1

    .line 87
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRowLeftButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 106
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0065

    return v0
.end method

.method handleStowSuccessProcess(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 152
    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isStowSuccess:Z

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStowSuccessProcess  result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " ,isStowSuccess : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isStowSuccess:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected initViews()V
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->initViews()V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a037d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->initCfcSupport()V

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->setClickListener()V

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->onRegisterLiveData()V

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->initSeatPartTab()V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTrdRow(Z)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSupportMove(Z)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRowLeftButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setOnButtonClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSliderClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairTilt()V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatTiltPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 42
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isSupportTrdRowHeadRest:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowLtSeatHeadVerticalPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 46
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isStowSuccess:Z

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$0$SeatTrdLeftFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$1$SeatTrdLeftFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    return-void
.end method

.method protected updateSeatPartTab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    .line 73
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateSeatPartTab(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->isSupportTrdRowHeadRest:Z

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeTrdHeadRest()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdLeftFragment;->mTrdRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairTilt()V

    :cond_2
    :goto_0
    return-void
.end method
