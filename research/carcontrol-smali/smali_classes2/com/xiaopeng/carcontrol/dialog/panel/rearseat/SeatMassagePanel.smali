.class public Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;
.source "SeatMassagePanel.java"


# static fields
.field static sSeatArray:[I


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private animatorCount:I

.field private btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

.field private diffCallBack:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field private handler:Landroid/os/Handler;

.field private mContentText:Lcom/xiaopeng/xui/widget/XTextView;

.field private mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mDrvHotArea:Landroid/view/View;

.field private mDrvSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mFrMassageView:Landroid/view/View;

.field protected mIntensitySlider:Lcom/xiaopeng/xui/widget/XSegmented;

.field protected mIntensityTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mMassagePreThemeSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMassageThemeSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMassageThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPicFrameLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPsnHotArea:Landroid/view/View;

.field private mPsnSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mRLHotArea:Landroid/view/View;

.field private mRRHotArea:Landroid/view/View;

.field private mRrMassageView:Landroid/view/View;

.field private mSeatBg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSeatPos:I

.field protected mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSubTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mThemesRecycleView:Lcom/xiaopeng/xui/widget/XRecyclerView;

.field private mTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTrdHotArea:Landroid/view/View;

.field private onFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

.field private rootView:Landroid/view/View;

.field private seatSelectLevel:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->sSeatArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;-><init>()V

    const-string v0, "SeatMassageView"

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    .line 75
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;->SeatSelect:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->seatSelectLevel:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatSelectLevel;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassagePreThemeSelected:Ljava/util/List;

    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->animatorCount:I

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassagePreThemeSelected:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    return-object p0
.end method

.method private findViews()V
    .locals 3

    const v0, 0x7f0a0395

    .line 290
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->rootView:Landroid/view/View;

    const v1, 0x7f0a01b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mIntensityTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->rootView:Landroid/view/View;

    const v1, 0x7f0a01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mIntensitySlider:Lcom/xiaopeng/xui/widget/XSegmented;

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->rootView:Landroid/view/View;

    const v1, 0x7f0a0167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPicFrameLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const v0, 0x7f0a0393

    .line 294
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSubTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a0394

    .line 295
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContentText:Lcom/xiaopeng/xui/widget/XTextView;

    .line 296
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$xbAGJbpxcht_mP4oFJzvTTpak2k;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$xbAGJbpxcht_mP4oFJzvTTpak2k;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->onFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    const v0, 0x7f0a00af

    .line 297
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    .line 298
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateLeftPic()V

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$g1kVpRypdRfna9RAPSN0Qoi06Os;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$g1kVpRypdRfna9RAPSN0Qoi06Os;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    return-void
.end method

.method private initMassageData()V
    .locals 6

    .line 353
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->isRearDialog:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateMassageData(I)V

    .line 354
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->sSeatArray:[I

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 355
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 356
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    move v5, v1

    .line 357
    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateEffectStatus(IZ)V

    .line 358
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageData(I)Landroidx/lifecycle/LiveData;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$KqCK-IiZT3fh89gkyVxeFaJqnD8;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$KqCK-IiZT3fh89gkyVxeFaJqnD8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private listStatusInit()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassagePreThemeSelected:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private startEffect(Lcom/xiaopeng/xui/widget/XImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 703
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 704
    invoke-static {p1}, Landroid/support/rastermill/FrameSequenceUtil;->with(Landroid/widget/ImageView;)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    const v1, 0x7f0802c8

    .line 705
    invoke-virtual {p1, v1}, Landroid/support/rastermill/FrameSequenceController;->resourceId(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    .line 706
    invoke-virtual {p1, v0}, Landroid/support/rastermill/FrameSequenceController;->decodingThreadId(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    const/4 v0, 0x2

    .line 707
    invoke-virtual {p1, v0}, Landroid/support/rastermill/FrameSequenceController;->loopBehavior(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceController;->apply()Landroid/support/rastermill/FrameSequenceDrawable;

    return-void
.end method

.method private startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageView",
            "id",
            "loopBehavior",
            "loopCount",
            "onFinishedListener"
        }
    .end annotation

    .line 712
    invoke-static {p1}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/widget/ImageView;)V

    .line 713
    invoke-static {p1}, Landroid/support/rastermill/FrameSequenceUtil;->with(Landroid/widget/ImageView;)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    .line 714
    invoke-virtual {p1, p2}, Landroid/support/rastermill/FrameSequenceController;->resourceId(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p2

    const/4 v0, 0x0

    .line 715
    invoke-virtual {p2, v0}, Landroid/support/rastermill/FrameSequenceController;->decodingThreadId(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p2

    .line 716
    invoke-virtual {p2, p3}, Landroid/support/rastermill/FrameSequenceController;->loopBehavior(I)Landroid/support/rastermill/FrameSequenceController;

    if-lez p4, :cond_0

    .line 718
    invoke-virtual {p1, p4}, Landroid/support/rastermill/FrameSequenceController;->loopCount(I)Landroid/support/rastermill/FrameSequenceController;

    :cond_0
    if-eqz p5, :cond_1

    .line 721
    invoke-virtual {p1, p5}, Landroid/support/rastermill/FrameSequenceController;->onFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)Landroid/support/rastermill/FrameSequenceController;

    .line 723
    :cond_1
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceController;->apply()Landroid/support/rastermill/FrameSequenceDrawable;

    return-void
.end method

.method private startSelectEffect(Lcom/xiaopeng/xui/widget/XImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    const/4 v0, 0x0

    .line 735
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 736
    invoke-static {p1}, Landroid/support/rastermill/FrameSequenceUtil;->with(Landroid/widget/ImageView;)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    const v1, 0x7f080341

    .line 737
    invoke-virtual {p1, v1}, Landroid/support/rastermill/FrameSequenceController;->resourceId(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    .line 738
    invoke-virtual {p1, v0}, Landroid/support/rastermill/FrameSequenceController;->decodingThreadId(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    const/4 v0, 0x1

    .line 739
    invoke-virtual {p1, v0}, Landroid/support/rastermill/FrameSequenceController;->loopBehavior(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceController;->apply()Landroid/support/rastermill/FrameSequenceDrawable;

    return-void
.end method

.method private stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 730
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 731
    invoke-static {p1}, Landroid/support/rastermill/FrameSequenceUtil;->stop(Landroid/widget/ImageView;)V

    return-void
.end method

.method private updateEffectStatus(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seat",
            "isRunning"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEffectStatus  seat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   isRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassageView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 392
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 385
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    goto :goto_0

    .line 387
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 378
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    goto :goto_0

    .line 380
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 371
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    goto :goto_0

    .line 373
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V

    :goto_0
    return-void
.end method

.method private updateLeftPic()V
    .locals 14

    .line 554
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->isRearDialog:Z

    const v1, 0x7f0701ed

    const v2, 0x7f0701ec

    const v3, 0x7f0a02e7

    const v4, 0x7f0a02e6

    const v5, 0x7f0a02f4

    const v6, 0x7f0a02f2

    const v7, 0x7f0a02f3

    const v8, 0x7f0a02f1

    const v9, 0x7f0a0188

    const v10, 0x7f08032d

    const-string v11, "isSupportSecRowZeroGravity"

    const v12, 0x7f08032e

    const/4 v13, 0x0

    if-nez v0, :cond_7

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatBg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    const v9, 0x7f0a0136

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    const v9, 0x7f0a029c

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    const v7, 0x7f0a0137

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 561
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    const v7, 0x7f0a029d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    const v5, 0x7f0a02d5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvHotArea:Landroid/view/View;

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    const v5, 0x7f0a02e0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnHotArea:Landroid/view/View;

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRLHotArea:Landroid/view/View;

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRRHotArea:Landroid/view/View;

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvHotArea:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$QQjIsOf4kLQGDjDWxTRZgTUMg8M;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$QQjIsOf4kLQGDjDWxTRZgTUMg8M;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnHotArea:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$MgflQQwMGkpYHVl4aYStE16U3T8;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$MgflQQwMGkpYHVl4aYStE16U3T8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRLHotArea:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$Q24rjvmtQxBo1lSYe6EvD_HjkcM;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$Q24rjvmtQxBo1lSYe6EvD_HjkcM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRRHotArea:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$hFwTGhoQx3hJIG8y8cJzFEuBq9M;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$hFwTGhoQx3hJIG8y8cJzFEuBq9M;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvHotArea:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnHotArea:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRLHotArea:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRRHotArea:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 581
    invoke-static {v11}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 583
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 584
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 586
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 587
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 589
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 590
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 592
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 593
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 597
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 598
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 599
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 601
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 602
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 603
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 605
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 606
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 607
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 609
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 610
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 611
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPicFrameLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->removeAllViews()V

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPicFrameLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->addView(Landroid/view/View;)V

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 616
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 617
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 619
    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    const-string v6, "isSupportSeatMassage_id"

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v6, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v10}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 621
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x7f080333

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v10}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 624
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x7f08032a

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    :goto_0
    new-array v0, v7, [Ljava/lang/Object;

    .line 626
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v6, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    const/16 v8, 0x8

    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnHotArea:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnHotArea:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$Ev7ghjWs9cw6CpwogGIxS6Qwiys;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$Ev7ghjWs9cw6CpwogGIxS6Qwiys;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnHotArea:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    if-ne v0, v7, :cond_3

    const v0, 0x7f08032a

    goto :goto_1

    :cond_3
    const v0, 0x7f080333

    :goto_1
    move v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$q1LdlxWgeLVQ-Z1sp0-_w2J8I7U;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$q1LdlxWgeLVQ-Z1sp0-_w2J8I7U;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    :goto_2
    new-array v0, v7, [Ljava/lang/Object;

    const/4 v1, 0x2

    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v6, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRLHotArea:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRLHotArea:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$9wqSEvfVSIK4LLDhAU9MezBfV-Q;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$9wqSEvfVSIK4LLDhAU9MezBfV-Q;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 641
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 642
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x7f080333

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$Hq1uBGlKD8o9su4ARfAa00eLKd0;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$Hq1uBGlKD8o9su4ARfAa00eLKd0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    :goto_3
    new-array v0, v7, [Ljava/lang/Object;

    const/4 v1, 0x3

    .line 644
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-static {v6, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 645
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XImageView;->setSoundEffectsEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRRHotArea:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRRHotArea:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$9t0zXHRmodX1T0FPxa1ZXaeZJps;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$9t0zXHRmodX1T0FPxa1ZXaeZJps;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 650
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v13}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 651
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x7f080333

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$PflhqbTw15e5-x2TRbwtHYE3BpY;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$PflhqbTw15e5-x2TRbwtHYE3BpY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    .line 653
    :goto_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v11}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f080092

    goto :goto_5

    :cond_6
    const v1, 0x7f080091

    :goto_5
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 655
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatBg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 656
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 657
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 660
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v5, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;

    invoke-direct {v5, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$4nYhwd4v19rlB-3Xrk3BYsamzTk;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRLHotArea:Landroid/view/View;

    .line 664
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRRHotArea:Landroid/view/View;

    .line 665
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    const v3, 0x7f0a02e9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTrdHotArea:Landroid/view/View;

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRLHotArea:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$ueV7W6E9hfef9WCROtKNTr_PhJY;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$ueV7W6E9hfef9WCROtKNTr_PhJY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRRHotArea:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$3owa20uMKORNaxa9b9bnFokZaY4;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$3owa20uMKORNaxa9b9bnFokZaY4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTrdHotArea:Landroid/view/View;

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$e2Dt4YNLmDZgvFW-LdDaNjK1beU;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$e2Dt4YNLmDZgvFW-LdDaNjK1beU;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRLHotArea:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 670
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRRHotArea:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v12}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 673
    invoke-static {v11}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 675
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 676
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 678
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 679
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 682
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 683
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 684
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 685
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 687
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 688
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 689
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatEffectImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    :goto_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPicFrameLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->removeAllViews()V

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPicFrameLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->addView(Landroid/view/View;)V

    .line 693
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v10}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 694
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x7f08032a

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    .line 695
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x7f080333

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    .line 696
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v11}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f08009c

    goto :goto_7

    :cond_9
    const v1, 0x7f080095

    :goto_7
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_8
    return-void
.end method

.method private updateMassageData(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatIndex"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string v1, ""

    goto/16 :goto_0

    :cond_0
    const v1, 0x7f110324

    .line 257
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v3, 0x7f110330

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f11030e

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f110322

    .line 252
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v3, 0x7f11032e

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f11030d

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f110323

    .line 247
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v3, 0x7f110326

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f11030b

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f110321

    .line 242
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v3, 0x7f1102ef

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f110308

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    .line 263
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 264
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v3

    .line 265
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget v7, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    invoke-virtual {v6, v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 266
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {v5, p1, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->setSeat(ILjava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mIntensitySlider:Lcom/xiaopeng/xui/widget/XSegmented;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget v6, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    invoke-virtual {v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerIntensity(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->revertIndexOrIntensity(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    if-nez v4, :cond_5

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassageMode(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move v4, v0

    goto :goto_2

    .line 272
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, p1, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassageMode(II)V

    .line 274
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSubTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {v5, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->getNameForTheme(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContentText:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {v5, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->getTipForTheme(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->setRunningTheme(Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v5, v3

    .line 278
    :goto_3
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 279
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 281
    :cond_6
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->diffCallBack:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-static {v0, v3}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 283
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassagePreThemeSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassagePreThemeSelected:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMassageData: t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   ,isRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   ,seatIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeatMassageView"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSeatStatus(ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seat",
            "effect",
            "running"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerIntensity(I)I

    move-result v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSeatStatus, seat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inten: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeatMassageView"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 404
    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    if-eq p1, v1, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, p3}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 406
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    if-eqz p3, :cond_3

    .line 408
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    if-eqz p3, :cond_1

    move-object v4, p2

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->setRunningTheme(Ljava/lang/Object;)V

    move v2, v3

    .line 409
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 410
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v2, v1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->diffCallBack:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-static {p3, v3}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->diffResult:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 414
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 415
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassagePreThemeSelected:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 416
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassagePreThemeSelected:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemeSelected:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p3, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassageMode(II)V

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSubTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->getNameForTheme(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContentText:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->getTipForTheme(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mIntensitySlider:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->revertIndexOrIntensity(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    return-void
.end method


# virtual methods
.method getAdapter()Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$3;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$3;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;Ljava/util/List;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0057

    return v0
.end method

.method public getMassagerEffectName()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getMassageModes"

    .line 224
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getArray(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SeatMassagePanelSysDialog"

    return-object v0
.end method

.method public initView()V
    .locals 7

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->findViews()V

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->getMassagerEffectName()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    const/4 v1, 0x0

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/xiaopeng/carcontrol/util/ConfigUtil;->MASSAGE_MODES_H93:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContentText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContentText:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->rootView:Landroid/view/View;

    const v2, 0x7f0a00ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemesRecycleView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    const/4 v2, 0x1

    .line 170
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->getAdapter()Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    .line 172
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 173
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemesRecycleView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemesRecycleView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    new-instance v3, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;

    const/16 v4, 0x1e

    const/16 v5, 0x10

    invoke-direct {v3, v4, v2, v5}, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;-><init>(IZI)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemesRecycleView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemesRecycleView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemesRecycleView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$Qs5-6TcEiXGapJaP21kgbA4zR6A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$Qs5-6TcEiXGapJaP21kgbA4zR6A;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->setItemClickListener(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->setmScreenId(I)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mIntensitySlider:Lcom/xiaopeng/xui/widget/XSegmented;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V

    .line 197
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->listStatusInit()V

    .line 198
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel$2;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->diffCallBack:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemesRecycleView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xui/widget/XRecyclerView;->initVuiAttr(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;ZZZ)V

    .line 220
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->initMassageData()V

    return-void
.end method

.method public synthetic lambda$findViews$0$SeatMassagePanel(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frameSequenceDrawable"
        }
    .end annotation

    .line 296
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v2, 0x7f08032a

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    return-void
.end method

.method public synthetic lambda$findViews$1$SeatMassagePanel(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    new-instance p1, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mIntensitySlider:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getSelection()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->getmRunningTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopMassager(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initMassageData$2$SeatMassagePanel(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "seatMassage"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getEffect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->isRunning()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateSeatStatus(ILjava/lang/String;Z)V

    .line 361
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;->isRunning()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateEffectStatus(IZ)V

    return-void
.end method

.method public synthetic lambda$updateLeftPic$10$SeatMassagePanel(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frameSequenceDrawable"
        }
    .end annotation

    .line 642
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f08032e

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$updateLeftPic$11$SeatMassagePanel(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 648
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    const v1, 0x7f11030c

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void
.end method

.method public synthetic lambda$updateLeftPic$12$SeatMassagePanel(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frameSequenceDrawable"
        }
    .end annotation

    .line 651
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f08032e

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$updateLeftPic$13$SeatMassagePanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 666
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->performClick()Z

    return-void
.end method

.method public synthetic lambda$updateLeftPic$14$SeatMassagePanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 667
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->performClick()Z

    return-void
.end method

.method public synthetic lambda$updateLeftPic$15$SeatMassagePanel(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 668
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    const v1, 0x7f110317

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void
.end method

.method public synthetic lambda$updateLeftPic$3$SeatMassagePanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 573
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->performClick()Z

    return-void
.end method

.method public synthetic lambda$updateLeftPic$4$SeatMassagePanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 574
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->performClick()Z

    return-void
.end method

.method public synthetic lambda$updateLeftPic$5$SeatMassagePanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 575
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->performClick()Z

    return-void
.end method

.method public synthetic lambda$updateLeftPic$6$SeatMassagePanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 576
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->performClick()Z

    return-void
.end method

.method public synthetic lambda$updateLeftPic$7$SeatMassagePanel(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 629
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    const v1, 0x7f11030a

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void
.end method

.method public synthetic lambda$updateLeftPic$8$SeatMassagePanel(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frameSequenceDrawable"
        }
    .end annotation

    .line 633
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f08032e

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$updateLeftPic$9$SeatMassagePanel(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 639
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    const v1, 0x7f11030c

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void
.end method

.method protected onCreateView()Landroid/view/View;
    .locals 4

    .line 104
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->onCreateView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->rootView:Landroid/view/View;

    .line 105
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d004a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mFrMassageView:Landroid/view/View;

    .line 106
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d0056

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mRrMassageView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->rootView:Landroid/view/View;

    return-object v0
.end method

.method protected onInitView()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->initView()V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 112
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    return-void
.end method

.method protected onIntensityChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIntensityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassageView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->revertIndexOrIntensity(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->setMassagerIntensity(II)V

    return-void
.end method

.method protected onRefresh()V
    .locals 6

    .line 126
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/AbstractRearSeatPanel;->onRefresh()V

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateLeftPic()V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mThemeAdapter:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;

    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->setmScreenId(I)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 131
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->isRearDialog:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v3, 0x7f11032e

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f11030d

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->upDateSelectImage(Landroid/view/View;)V

    goto/16 :goto_3

    .line 136
    :cond_0
    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->screenId:I

    if-ne v0, v2, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "isSupportSeatMassage_id"

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f11030b

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v3, 0x7f110326

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->upDateSelectImage(Landroid/view/View;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->btnSeatMassageOnOff:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f110308

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v3, 0x7f1102ef

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->upDateSelectImage(Landroid/view/View;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v3, :cond_3

    .line 148
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 149
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateEffectStatus(IZ)V

    .line 150
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateEffectStatus(IZ)V

    .line 152
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_4

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    if-eqz v4, :cond_5

    .line 155
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    .line 156
    :cond_5
    invoke-direct {p0, v3, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateEffectStatus(IZ)V

    .line 157
    invoke-direct {p0, v5, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateEffectStatus(IZ)V

    return-void
.end method

.method protected onThemeChanged(IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "seat",
            "theme"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThemeChanged, position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", theme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatMassageView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v5, :cond_2

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_0

    if-eq p2, v2, :cond_4

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v0

    .line 444
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 445
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v5

    .line 446
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target theme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    .line 447
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 449
    :cond_6
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    new-instance p3, Lcom/xiaopeng/xuimanager/seatmassager/Seat;

    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mIntensitySlider:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getSelection()I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {p3, v0, v1}, Lcom/xiaopeng/xuimanager/seatmassager/Seat;-><init>(II)V

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mMassageThemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->startMassager(Lcom/xiaopeng/xuimanager/seatmassager/Seat;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected revertIndexOrIntensity(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method upDateSelectImage(Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 312
    instance-of v0, p1, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    if-ne p1, v0, :cond_0

    return-void

    .line 316
    :cond_0
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v1, 0x7f08032e

    .line 317
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 318
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    const v1, 0x7f08032d

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string v0, "SeatMassageView"

    const-string/jumbo v1, "upDateSelectImage: not XImageView"

    .line 320
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 p1, 0x3

    .line 342
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v1, 0x7f110330

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowRightSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 345
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateMassageData(I)V

    goto :goto_1

    :sswitch_1
    const/4 p1, 0x2

    .line 336
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v1, 0x7f11032e

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSecRowLeftSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 339
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateMassageData(I)V

    goto :goto_1

    :sswitch_2
    const/4 p1, 0x1

    .line 330
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v1, 0x7f110326

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPsnSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 333
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateMassageData(I)V

    goto :goto_1

    :sswitch_3
    const/4 p1, 0x0

    .line 324
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mSeatPos:I

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v1, 0x7f1102ef

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mDrvSeatViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 327
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->updateMassageData(I)V

    .line 348
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mCurrentSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v3, 0x7f08032a

    const/4 v4, 0x2

    iget v5, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->animatorCount:I

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    .line 349
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->mPreSelectViewImage:Lcom/xiaopeng/xui/widget/XImageView;

    const v9, 0x7f080333

    const/4 v10, 0x2

    iget v11, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->animatorCount:I

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;IIILandroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0137 -> :sswitch_3
        0x7f0a029d -> :sswitch_2
        0x7f0a02f2 -> :sswitch_1
        0x7f0a02f4 -> :sswitch_0
    .end sparse-switch
.end method
