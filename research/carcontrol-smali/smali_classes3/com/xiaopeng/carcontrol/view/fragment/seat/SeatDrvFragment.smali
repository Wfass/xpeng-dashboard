.class public Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;
.source "SeatDrvFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$DrvSeatSaveInterface;
    }
.end annotation


# instance fields
.field private btnSave:Lcom/xiaopeng/xui/widget/XButton;

.field private btnSaveAs:Lcom/xiaopeng/xui/widget/XButton;

.field private drvSeatSaveInterface:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$DrvSeatSaveInterface;

.field private gson:Lcom/google/gson/Gson;

.field private habitBeans:[Lcom/xiaopeng/carcontrol/bean/HabitBean;

.field private habitSelectedId:I

.field private isLogin:Z

.field private isSupportDrvLeg:Z

.field private mCustomDialogView:Landroid/view/View;

.field private mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

.field private mDrvbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

.field private mListGroupId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveAsClickListener:Landroid/view/View$OnClickListener;

.field private mSaveClickListener:Landroid/view/View$OnClickListener;

.field private mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

.field private mTiltPosition:I

.field private matrix:Landroid/graphics/Matrix;

.field private showLumbarHorRunnable:Ljava/lang/Runnable;

.field private showLumbarHorRunnableEnd:Ljava/lang/Runnable;

.field private showLumbarVerRunnable:Ljava/lang/Runnable;

.field private showLumbarVerRunnableEnd:Ljava/lang/Runnable;

.field private xDialogPure:Lcom/xiaopeng/xui/app/XDialogPure;

.field private xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

.field private xRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 54
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->gson:Lcom/google/gson/Gson;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mLists:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mListGroupId:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumbarVerRunnableEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumbarVerRunnableEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumbarHorRunnableEnd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumbarHorRunnableEnd:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumbarVerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumbarVerRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumbarHorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumbarHorRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showLumberEffect(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Lcom/xiaopeng/xui/app/XDialogPure;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xDialogPure:Lcom/xiaopeng/xui/app/XDialogPure;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mLists:Ljava/util/List;

    return-object p0
.end method

.method private getLayoutParameters(I)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 383
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 384
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->getPanelWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->getPanelHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private initCfcSupport()V
    .locals 1

    const-string v0, "isSupportDrvLeg"

    .line 342
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->isSupportDrvLeg:Z

    return-void
.end method

.method private initSeatPartTab()V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->clearSegment()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v1, 0x7f1102fb

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mLeftPartList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "isSupportMsmD"

    .line 133
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "isSupportDrvLeg"

    .line 134
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v4, 0x7f1102fc

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mLeftPartList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v4, "isSupportDrvLumbar"

    .line 138
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const v5, 0x7f1102ff

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v6, v5, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->addSegmentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mLeftPartList:Ljava/util/List;

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

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_2

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private onRegisterLiveData()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$IALSng6Jcz8Qv_QV2qP6rvShaIY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$IALSng6Jcz8Qv_QV2qP6rvShaIY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$jn9_UxoB24JEIZ4i727iw9Z0TTo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$jn9_UxoB24JEIZ4i727iw9Z0TTo;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$PdVad9vYRzCmAuFKmoPaalA-4Iw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$PdVad9vYRzCmAuFKmoPaalA-4Iw;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 363
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->isSupportDrvLeg:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDriverSeatData(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$ER5DY0XYYEgjvS8HF4FymDtt3GA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$ER5DY0XYYEgjvS8HF4FymDtt3GA;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private setClickListener()V
    .locals 2

    .line 169
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    .line 251
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$3;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSaveClickListener:Landroid/view/View$OnClickListener;

    .line 319
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$5;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSaveAsClickListener:Landroid/view/View$OnClickListener;

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mBtnSeatRestoreCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$6;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showLumberEffect(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableResId"
        }
    .end annotation

    .line 400
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mTiltPosition:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide v2, 0x4051800000000000L    # 70.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    .line 401
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 402
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_LEFT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getHorizontalMove()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 403
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget v2, v2, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->DIMEN_TILT_TOP:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->getVerticalMove()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 404
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->matrix:Landroid/graphics/Matrix;

    .line 406
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->startEffect(Lcom/xiaopeng/xui/widget/XImageView;I)V

    return-void
.end method


# virtual methods
.method protected compareSeatPosition()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatEqualMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->hiddenMemoryRestoreBtn()V

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected getPanelHeight()I
    .locals 1

    const v0, 0x7f0701f0

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    const v0, 0x7f0701f1

    return v0
.end method

.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d005a

    return v0
.end method

.method protected initViews()V
    .locals 4

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->initViews()V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xImgLumberEffect:Lcom/xiaopeng/xui/widget/XImageView;

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->initCfcSupport()V

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->setClickListener()V

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->onRegisterLiveData()V

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->initSeatPartTab()V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->isLogin:Z

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvbuttonClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setOnButtonClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnButtonClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSliderClickListener:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSliderClickListener(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$OnSliderClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setSupportMove(Z)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChair()V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatTiltPos()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mTiltPosition:I

    .line 93
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatHorzPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHorPosition(I)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatVerPos()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setVerPosition(I)V

    const-string v0, "isSupportDrvLeg"

    .line 96
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setShowCushion(Z)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDSeatLegPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setLegVerPosition(I)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0034

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mCustomDialogView:Landroid/view/View;

    const v1, 0x7f0a02a8

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mCustomDialogView:Landroid/view/View;

    const v1, 0x7f0a00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->btnSave:Lcom/xiaopeng/xui/widget/XButton;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mCustomDialogView:Landroid/view/View;

    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->btnSaveAs:Lcom/xiaopeng/xui/widget/XButton;

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->btnSave:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSaveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->btnSaveAs:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mSaveAsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    new-instance v0, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/VerLinearItemDecoration;-><init>(I)V

    .line 117
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mLists:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 118
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->drvSeatSaveInterface:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$DrvSeatSaveInterface;

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xRecyclerView:Lcom/xiaopeng/xui/widget/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 122
    new-instance v0, Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->xDialogPure:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mCustomDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->compareSeatPosition()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$0$SeatDrvFragment(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setTiltPosition(I)V

    .line 348
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mTiltPosition:I

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$1$SeatDrvFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setHorPosition(I)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$2$SeatDrvFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setVerPosition(I)V

    .line 357
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showBtnHandle()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$3$SeatDrvFragment(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "integer"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setLegVerPosition(I)V

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->showBtnHandle()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 419
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    const-string v1, "seat_adjust"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->exitScene(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mShowBtnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mShowBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 413
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->onResume()V

    .line 414
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    const-string v1, "seat_adjust"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->enterScene(Ljava/lang/String;)V

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

    .line 153
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateSeatPartTab(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeLumbar()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeCushion()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment;->mDrvControlView:Lcom/xiaopeng/carcontrol/widget/SeatControlView;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/widget/SeatControlView;->setControlModeChair()V

    :goto_0
    return-void
.end method
