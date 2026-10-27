.class public Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;
.source "SeatTrdRightFragment.java"


# instance fields
.field private isSupportTrdRowHeadRest:Z

.field private isSupportTrdRowMidHeadRest:Z

.field private isSupportTrdRowSeatControl:Z

.field private mSelectedPart:I

.field private mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

.field private mTrdRowRightButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

.field private mTrdRowRightSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRowRightButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 28
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRowRightSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSelectedPart:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSelectedPart:I

    return p0
.end method

.method private initCfcSupport()V
    .locals 1

    const-string v0, "isSupportTrdRowSeatControl"

    .line 172
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isSupportTrdRowSeatControl:Z

    const-string v0, "isSupportTrdRowHeadRest"

    .line 173
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isSupportTrdRowHeadRest:Z

    const-string v0, "isSupportTrdRowMidHeadRest"

    .line 174
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isSupportTrdRowMidHeadRest:Z

    return-void
.end method

.method private initSeatPartTab()V
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->clearSegment()V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v1, 0x7f1102fb

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mLeftPartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "isSupportTrdRowMidHeadRest"

    .line 82
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v2, 0x7f110300

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v2, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mLeftPartList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    const-string v0, "isSupportTrdRowHeadRest"

    .line 86
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v2, 0x7f11032c

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v4, v2, v5}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mLeftPartList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v6

    :cond_1
    if-le v5, v1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private onRegisterLiveData()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    :cond_0
    const-string v0, "isSupportTrdRowSeatControl"

    .line 182
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTilt()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdRightFragment$kziksobclCaofxRoFen_j3vbTzE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdRightFragment$kziksobclCaofxRoFen_j3vbTzE;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    const-string v0, "isSupportTrdRowHeadRest"

    .line 188
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdRightFragment$sJJ_yEAtSq6dl2wWh3kteaB4rvM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdRightFragment$sJJ_yEAtSq6dl2wWh3kteaB4rvM;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 195
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isSupportTrdRowMidHeadRest:Z

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidSeatHeadVertical()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdRightFragment$aiAF4nbYceV8Dsy1-h2NGj3cvaY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatTrdRightFragment$aiAF4nbYceV8Dsy1-h2NGj3cvaY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_3
    const-string v0, "isSupportTrdRowStow"

    .line 202
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowStowSuccessStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$r5t9PbSKbh9IMRHZnSnoXDbLHx8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$r5t9PbSKbh9IMRHZnSnoXDbLHx8;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_4
    return-void
.end method

.method private setClickListener()V
    .locals 1

    .line 121
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRowRightButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 148
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRowRightSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

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

    .line 208
    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isStowSuccess:Z

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->TAG:Ljava/lang/String;

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

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isStowSuccess:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$0$SeatTrdRightFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$1$SeatTrdRightFragment(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 190
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSelectedPart:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$2$SeatTrdRightFragment(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 197
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSelectedPart:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onStart()V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTiltPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 66
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isSupportTrdRowHeadRest:Z

    if-eqz v0, :cond_2

    .line 67
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSelectedPart:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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

    .line 34
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a037d

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->initCfcSupport()V

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->setClickListener()V

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->onRegisterLiveData()V

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->initSeatPartTab()V

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTrdRow(Z)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSupportMove(Z)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRowRightButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setOnButtonClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRowRightSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSliderClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairTilt()V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTiltPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 47
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isSupportTrdRowHeadRest:Z

    if-eqz p1, :cond_2

    .line 48
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSelectedPart:I

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    .line 54
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowSeatStowState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 55
    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->isStowSuccess:Z

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

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

    .line 99
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateSeatPartTab(I)V

    .line 100
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSelectedPart:I

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowMidSeatHeadVerticalPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeTrdHeadRest()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTiltPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeTrdHeadRest()V

    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatTiltPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getTrdRowRtSeatHeadVerticalPos()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->mTrdRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairTilt()V

    :goto_0
    return-void
.end method
