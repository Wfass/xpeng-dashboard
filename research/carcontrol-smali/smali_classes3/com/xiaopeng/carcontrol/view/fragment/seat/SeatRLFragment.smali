.class public Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;
.source "SeatRLFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$SingleHold;
    }
.end annotation


# instance fields
.field private isSupportProtectLegHor:Z

.field private isSupportSecRowHeadRest:Z

.field private isSupportSecRowHor:Z

.field private isSupportSecRowLegHor:Z

.field private isSupportSecRowLegVer:Z

.field private isSupportSecRowMemory:Z

.field private isSupportSecRowZero:Z

.field private mName1:Ljava/lang/String;

.field private mName2:Ljava/lang/String;

.field private mName3:Ljava/lang/String;

.field private mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mRLbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

.field private mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

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

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRLbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarHorRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarHorRunnableEnd:Ljava/lang/Runnable;

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarVerRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarVerRunnableEnd:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarVerRunnableEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarVerRunnableEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarHorRunnableEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarHorRunnableEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarVerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarVerRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarHorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumbarHorRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showLumberEffect(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mName1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mName1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mName2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mName2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mName3:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mName3:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;
    .locals 1

    .line 59
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$SingleHold;->access$000()Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    move-result-object v0

    return-object v0
.end method

.method private initCfcSupport()V
    .locals 1

    const-string v0, "isSupportSecRowMemory"

    .line 353
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowMemory:Z

    const-string v0, "isSupportSecRowHor"

    .line 354
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHor:Z

    const-string v0, "isSupportSecRowLegHorz"

    .line 355
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowLegHor:Z

    const-string v0, "isSupportSecRowLegVer"

    .line 356
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowLegVer:Z

    const-string v0, "isSupportSecRowHeadRest"

    .line 357
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHeadRest:Z

    const-string v0, "isSupportSecRowZeroGravity"

    .line 358
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowZero:Z

    return-void
.end method

.method private initSeatPartTab()V
    .locals 8

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->clearSegment()V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v1, 0x7f1102fb

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mLeftPartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHeadRest:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v4, 0x7f1102fd

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mLeftPartList:Ljava/util/List;

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

    .line 116
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "isSupportSecRowLegVer"

    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v5, 0x7f1102fe

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v6, v5, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    :cond_2
    const-string v4, "isSupportSecRowLTSeatLumb"

    .line 120
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "isSupportSecRowRTSeatLumb"

    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v5, 0x7f1102ff

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v6, v5, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    :cond_4
    if-le v0, v2, :cond_5

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_1

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

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

    .line 362
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$z1_euQqad7cda8uC17W8rsz0fTY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$z1_euQqad7cda8uC17W8rsz0fTY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$jH1iKn42bUT7yKG0iGu2fERQMrM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$jH1iKn42bUT7yKG0iGu2fERQMrM;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowLegVer:Z

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatLeSuHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$qODO38mIfmCPMFRZi9LLUihHS_o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$qODO38mIfmCPMFRZi9LLUihHS_o;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$5Ht6pD_VP0rc2_iaVK4jC74FgMA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$5Ht6pD_VP0rc2_iaVK4jC74FgMA;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 384
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHeadRest:Z

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatHeadHorz()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$sEq5cv_9BEpv-SjYCcAHEL-IYuQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$sEq5cv_9BEpv-SjYCcAHEL-IYuQ;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatHeadHeig()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$roryeuKcDPBSXHZpGRGDcIZqrvU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$roryeuKcDPBSXHZpGRGDcIZqrvU;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtSeatAngle()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$tOpUrx26oaLWFC2GNGQ8xlCGv3k;->INSTANCE:Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRLFragment$tOpUrx26oaLWFC2GNGQ8xlCGv3k;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setClickListener()V
    .locals 2

    .line 163
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRLbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 271
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$3;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 344
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$5;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

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

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getSecRowBackTiltAngle()F

    move-result v0

    .line 411
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 412
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_LEFT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getHorizontalMove()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 413
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getVerticalMove()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x42500000    # 52.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 414
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42a00000    # 80.0f

    const v3, 0x43b38000    # 359.0f

    .line 416
    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;I)V

    return-void
.end method


# virtual methods
.method protected compareSeatPosition()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isRLSeatEqualMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->hiddenMemoryRestoreBtn()V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

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

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->initViews()V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->initCfcSupport()V

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->setClickListener()V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->onRegisterLiveData()V

    .line 70
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->initSeatPartTab()V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSecRow(Z)V

    .line 72
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowZero:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSecRowZero(Z)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRLbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setOnButtonClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSliderClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSupportMove(Z)V

    .line 78
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHor:Z

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairFrontBack()V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairTilt()V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatTiltPos()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mTiltPosition:I

    .line 84
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 85
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHor:Z

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHorPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHorPosition(I)V

    .line 88
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowLegHor:Z

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setShowCushion(Z)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegHorPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setLegVerPosition(I)V

    .line 92
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowLegVer:Z

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setShowSmallLeg(Z)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatLegVerPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSmallLegPosition(I)V

    .line 96
    :cond_4
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHeadRest:Z

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadHorPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadHorPosition(I)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatHeadVerPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    :cond_5
    const-string v0, "isSupportProtectLegHor"

    .line 100
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportProtectLegHor:Z

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->compareSeatPosition()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$0$SeatRLFragment(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 365
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mTiltPosition:I

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$1$SeatRLFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setLegVerPosition(I)V

    .line 370
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$2$SeatRLFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSmallLegPosition(I)V

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$3$SeatRLFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHorPosition(I)V

    .line 381
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$4$SeatRLFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadHorPosition(I)V

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$5$SeatRLFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHeadVerPosition(I)V

    .line 391
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->showBtnHandle()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mShowBtnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mShowBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
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

    .line 134
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateSeatPartTab(I)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHeadRest:Z

    if-eqz p1, :cond_6

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeHeadRest()V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeLumbar()V

    goto :goto_0

    .line 144
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowLegHor:Z

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeForthLegCushion()V

    goto :goto_0

    .line 147
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeRearSmallLeg()V

    goto :goto_0

    .line 137
    :cond_4
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->isSupportSecRowHor:Z

    if-eqz p1, :cond_5

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairFrontBack()V

    goto :goto_0

    .line 140
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;->mRearLeftControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairTilt()V

    :cond_6
    :goto_0
    return-void
.end method
