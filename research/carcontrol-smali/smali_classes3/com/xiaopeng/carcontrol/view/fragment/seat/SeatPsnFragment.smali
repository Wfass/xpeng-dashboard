.class public Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;
.source "SeatPsnFragment.java"


# static fields
.field public static isVisible:Z


# instance fields
.field private mName1:Ljava/lang/String;

.field private mName2:Ljava/lang/String;

.field private mName3:Ljava/lang/String;

.field private mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private mPsnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

.field private mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

.field private mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

.field private mTiltPosition:I

.field private matrix:Landroid/graphics/Matrix;

.field private xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 37
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->showLumberEffect(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mName1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mName1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mName2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mName2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mName3:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mName3:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private initSeatPartTab()V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->clearSegment()V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v1, 0x7f1102fb

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mLeftPartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "isSupportMsmP"

    .line 81
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "isSupportPsnLeg"

    .line 82
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v4, 0x7f1102fe

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v4, "isSupportPsnLumbar"

    .line 86
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v5, 0x7f1102ff

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v6, v5, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    if-le v0, v1, :cond_3

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_2

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private onRegisterLiveData()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatHorzData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$WKEoWyipvXxbbugXpScqgEcQBQY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$WKEoWyipvXxbbugXpScqgEcQBQY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatTiltData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$FMoqxweC4CgXHmUF14xQJ-kwI9U;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$FMoqxweC4CgXHmUF14xQJ-kwI9U;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportPsnLeg"

    .line 249
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatLegData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$ojU19cDjECtM7nhzzM6AXMkKy8c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatPsnFragment$ojU19cDjECtM7nhzzM6AXMkKy8c;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private setClickListener()V
    .locals 2

    .line 118
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 178
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$3;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPositiveClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    .line 230
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment$5;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mNativeClickListener:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

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

    .line 268
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mTiltPosition:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide v2, 0x4051800000000000L    # 70.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    .line 269
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 270
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_LEFT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getHorizontalMove()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 271
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getVerticalMove()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x42a00000    # 80.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 272
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42d20000    # 105.0f

    const v3, 0x43938000    # 295.0f

    .line 274
    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;I)V

    return-void
.end method


# virtual methods
.method protected compareSeatPosition()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isPsnSeatEqualMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->hiddenMemoryRestoreBtn()V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d005d

    return v0
.end method

.method protected initViews()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->initViews()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->setClickListener()V

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->onRegisterLiveData()V

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->initSeatPartTab()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnButtonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setOnButtonClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSliderClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSupportMove(Z)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairFrontBack()V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatTiltPos()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mTiltPosition:I

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatHorzPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHorPosition(I)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mTiltPosition:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    const-string v0, "isSupportPsnLeg"

    .line 66
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setShowSmallLeg(Z)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPSeatLegPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSmallLegPosition(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->compareSeatPosition()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$0$SeatPsnFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHorPosition(I)V

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$1$SeatPsnFragment(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mTiltPosition:I

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$2$SeatPsnFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pos"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSmallLegPosition(I)V

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->showBtnHandle()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 294
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    const-string v1, "seat_adjust"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->exitScene(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mShowBtnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mShowBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 288
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onPause()V

    const/4 v0, 0x0

    .line 289
    sput-boolean v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->isVisible:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 281
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onResume()V

    .line 282
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    const-string v1, "seat_adjust"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->enterScene(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 283
    sput-boolean v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->isVisible:Z

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

    .line 101
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateSeatPartTab(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeLumbar()V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModePsnSmallLeg()V

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatPsnFragment;->mPsnControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChairFrontBack()V

    :goto_0
    return-void
.end method
