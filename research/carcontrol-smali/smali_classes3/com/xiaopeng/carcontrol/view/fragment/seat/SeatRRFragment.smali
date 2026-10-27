.class public Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;
.source "SeatRRFragment.java"


# instance fields
.field private isSupportProtectLegHor:Z

.field private isSupportSecRowHeadRest:Z

.field private isSupportSecRowHor:Z

.field private isSupportSecRowLegHor:Z

.field private isSupportSecRowLegVer:Z

.field private isSupportSecRowMemory:Z

.field private isSupportSecRowRTSeatLumb:Z

.field private isSupportSecRowZero:Z

.field private mName1:Ljava/lang/String;

.field private mName2:Ljava/lang/String;

.field private mName3:Ljava/lang/String;

.field private mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mRRbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

.field private mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

.field private mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

.field private mTiltPosition:I

.field private matrix:Landroid/graphics/Matrix;

.field private showLumbarHorRunnable:Ljava/lang/Runnable;

.field private showLumbarHorRunnableEnd:Ljava/lang/Runnable;

.field private showLumbarVerRunnable:Ljava/lang/Runnable;

.field private showLumbarVerRunnableEnd:Ljava/lang/Runnable;

.field private xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRRbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarHorRunnable:Ljava/lang/Runnable;

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarHorRunnableEnd:Ljava/lang/Runnable;

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarVerRunnable:Ljava/lang/Runnable;

    .line 54
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarVerRunnableEnd:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarVerRunnableEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarVerRunnableEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarHorRunnableEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarHorRunnableEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarVerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarVerRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarHorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumbarHorRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showLumberEffect(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mName1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mName1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mName2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mName2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mName3:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mName3:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-object p0
.end method

.method private initCfcSupport()V
    .locals 1

    const-string v0, "isSupportSecRowMemory"

    .line 345
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowMemory:Z

    const-string v0, "isSupportSecRowHor"

    .line 346
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHor:Z

    const-string v0, "isSupportSecRowLegHorz"

    .line 347
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowLegHor:Z

    const-string v0, "isSupportSecRowLegVer"

    .line 348
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowLegVer:Z

    const-string v0, "isSupportSecRowHeadRest"

    .line 349
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHeadRest:Z

    const-string v0, "isSupportSecRowRTSeatLumb"

    .line 350
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowRTSeatLumb:Z

    const-string v0, "isSupportSecRowZeroGravity"

    .line 351
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowZero:Z

    return-void
.end method

.method private initSeatPartTab()V
    .locals 8

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->clearSegment()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v1, 0x7f1102fb

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mLeftPartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHeadRest:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v4, 0x7f1102fd

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mLeftPartList:Ljava/util/List;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "isSupportSecRowLegHorz"

    .line 108
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "isSupportSecRowLegVer"

    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v5, 0x7f1102fe

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v6, v5, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    :cond_2
    const-string v4, "isSupportSecRowLTSeatLumb"

    .line 112
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "isSupportSecRowRTSeatLumb"

    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v5, 0x7f1102ff

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v6, v5, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    :cond_4
    if-le v0, v2, :cond_5

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$onRegisterLiveData$6(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    return-void
.end method

.method private onRegisterLiveData()V
    .locals 2

    const-string v0, "isSupportRearSeatCtrl"

    .line 355
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$PFNxToqDVFOp1_-5vmkY2PcEVyI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$PFNxToqDVFOp1_-5vmkY2PcEVyI;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$T1mZslaXbIbFBSgJdMSUmU8mTA0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$T1mZslaXbIbFBSgJdMSUmU8mTA0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 366
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowLegVer:Z

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatLeSuHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$PjczrNOKRa1_d_-HtDQXHokcg28;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$PjczrNOKRa1_d_-HtDQXHokcg28;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$fTt3AQ5bZU42TlX473ZshEmIFH0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$fTt3AQ5bZU42TlX473ZshEmIFH0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 377
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHeadRest:Z

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatHeadHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$ar4wYVwJ6nkIiQaIbZ7AxCIP7X0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$ar4wYVwJ6nkIiQaIbZ7AxCIP7X0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatHeadHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$yYn0_8jrgPCsqez0ldwYKM52JLs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$yYn0_8jrgPCsqez0ldwYKM52JLs;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtSeatAngle()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1SfBQxISEWIUVIUNoV04PvstrSQ;->INSTANCE:Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1SfBQxISEWIUVIUNoV04PvstrSQ;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setClickListener()V
    .locals 2

    .line 155
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRRbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 262
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$3;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 335
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$5;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-void
.end method

.method private showLumberEffect(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableResId"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getSecRowBackTiltAngle()F

    move-result v0

    .line 404
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 405
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_LEFT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getHorizontalMove()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 406
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getVerticalMove()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x42500000    # 52.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 407
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42a00000    # 80.0f

    const v3, 0x43b38000    # 359.0f

    .line 409
    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;I)V

    return-void
.end method


# virtual methods
.method protected compareSeatPosition()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRRSeatEqualMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->hiddenMemoryRestoreBtn()V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0061

    return v0
.end method

.method protected initViews()V
    .locals 3

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->initViews()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->initCfcSupport()V

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->setClickListener()V

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->onRegisterLiveData()V

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->initSeatPartTab()V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSecRow(Z)V

    .line 66
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowZero:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSecRowZero(Z)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRRbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setOnButtonClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSliderClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSupportMove(Z)V

    .line 72
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHor:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairFrontBack()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairTilt()V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatTiltPos()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mTiltPosition:I

    .line 78
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 79
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHor:Z

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHorPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHorPosition(I)V

    .line 82
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowLegHor:Z

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setShowCushion(Z)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegHorPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setLegVerPosition(I)V

    .line 86
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowLegVer:Z

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setShowSmallLeg(Z)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatLegVerPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSmallLegPosition(I)V

    .line 90
    :cond_4
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHeadRest:Z

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadHorPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadHorPosition(I)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatHeadVerPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    :cond_5
    const-string v0, "isSupportProtectLegHor"

    .line 94
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportProtectLegHor:Z

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->compareSeatPosition()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$0$SeatRRFragment(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mTiltPosition:I

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$1$SeatRRFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setLegVerPosition(I)V

    .line 363
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$2$SeatRRFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSmallLegPosition(I)V

    .line 369
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$3$SeatRRFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHorPosition(I)V

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$4$SeatRRFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadHorPosition(I)V

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$5$SeatRRFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    .line 384
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->showBtnHandle()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mShowBtnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mShowBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 419
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onDestroy()V

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

    .line 126
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateSeatPartTab(I)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHeadRest:Z

    if-eqz p1, :cond_6

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeHeadRest()V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeLumbar()V

    goto :goto_0

    .line 136
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowLegHor:Z

    if-eqz p1, :cond_3

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeForthLegCushion()V

    goto :goto_0

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeRearSmallLeg()V

    goto :goto_0

    .line 129
    :cond_4
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->isSupportSecRowHor:Z

    if-eqz p1, :cond_5

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairFrontBack()V

    goto :goto_0

    .line 132
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment;->mRearRightControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairTilt()V

    :cond_6
    :goto_0
    return-void
.end method
