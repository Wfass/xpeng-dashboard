.class public abstract Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "NewPlayerCommonLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/playercomponent/big/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Presenter:",
        "Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/c;",
        "TPresenter;>;",
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/c;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NewPlayerCommonLayout"


# instance fields
.field private mCenterSpaceView:Landroid/view/View;

.field protected mControlContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field protected mDspImg:Landroid/widget/ImageView;

.field protected mDspLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mEndTv:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field private mIsDragProgressBar:Z

.field private mIsThreeOne:Z

.field private mLastColor:I

.field private mLastThreeOne:Z

.field protected mLeftIconListener:Landroid/view/View$OnClickListener;

.field protected mListContainer:Landroid/widget/FrameLayout;

.field private mLoveImg:Landroid/widget/ImageView;

.field private mLoveLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mLoveListener:Landroid/view/View$OnClickListener;

.field protected mLrcListContianer:Landroid/widget/FrameLayout;

.field protected mNextImg:Landroid/widget/ImageView;

.field protected mNextLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

.field private mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

.field protected mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

.field protected mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

.field protected mPreImg:Landroid/widget/ImageView;

.field protected mPreLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

.field protected mRightImg:Landroid/widget/ImageView;

.field protected mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mRightLrcListContentLayout:Landroid/widget/FrameLayout;

.field protected mSceneContainer:Landroid/widget/FrameLayout;

.field protected mSceneId:Ljava/lang/String;

.field protected final mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mStartTv:Landroid/widget/TextView;

.field protected mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

.field protected mTouchView:Landroid/view/View;

.field private mUpdateListener:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 122
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 123
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;II)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshProgressTxt(II)V

    return-void
.end method

.method static synthetic access$602(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsDragProgressBar:Z

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private changeLrcListPosition(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 703
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getLrcListLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 704
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightLrcListContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0

    .line 706
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightLrcListContentLayout:Landroid/widget/FrameLayout;

    .line 707
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getLrcListLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 710
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLrcListContianer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLrcListContianer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLrcListContianer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private checkThreeOneScreenChange()Z
    .locals 2

    .line 654
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private enableSeek(Z)V
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSeek: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 532
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 533
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setAlpha(F)V

    .line 534
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setClickable(Z)V

    .line 535
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setEnabled(Z)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 538
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 539
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setAlpha(F)V

    .line 540
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setClickable(Z)V

    .line 541
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private getColorString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 879
    new-array v0, v0, [Ljava/lang/Object;

    and-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "#%08X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 138
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    .line 139
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLastThreeOne:Z

    return-void
.end method

.method private onCommonScreenLayoutChange()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mDspLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    return-void
.end method

.method private onThreeOneScreenLayoutChange()V
    .locals 4

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThreeOneScreenLayoutChange mIsThreeOne = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mCenterSpaceView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightLrcListContentLayout:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 693
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->changeLrcListPosition(Z)V

    .line 694
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->changeLrcListShow(Z)V

    .line 695
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->changeLayoutSelf(Z)V

    return-void
.end method

.method private processConfigurationChanged()V
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processConfigurationChanged: mIsThreeOne = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", UIUtil.isThreeOne() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 665
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->onCommonScreenLayoutChange()V

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->checkThreeOneScreenChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setThreeOneScreenState()V

    .line 670
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->onThreeOneScreenLayoutChange()V

    :cond_1
    return-void
.end method

.method private refreshPlayInfoPlayState(I)V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(I)V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(I)V

    :cond_1
    return-void
.end method

.method private refreshProgressTxt(II)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/r;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/r;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setThreeOneScreenState()V
    .locals 1

    .line 658
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    return-void
.end method

.method private startPostEnterTrans()V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 229
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    const-string v2, "TRANS_NAME_COVER"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->setTransitionName(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 233
    new-instance v2, Landroid/transition/AutoTransition;

    invoke-direct {v2}, Landroid/transition/AutoTransition;-><init>()V

    .line 234
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 235
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v2, :cond_2

    .line 237
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 238
    new-instance v3, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/e;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 239
    new-instance v3, Landroid/transition/ChangeTransform;

    invoke-direct {v3}, Landroid/transition/ChangeTransform;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 240
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    .line 241
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 242
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 246
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$3;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "NewPlayerCommonLayout"

    const-string v1, "startPostEnterTrans: fragments is empty=="

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected changeLayoutSelf(Z)V
    .locals 0

    return-void
.end method

.method protected changeLrcListShow(Z)V
    .locals 4

    .line 720
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->threeOneShowLrcList(Z)Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "NewPlayerCommonLayout"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "changeLrcListShow: threeone"

    .line 721
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->setInfoViewVisible(Z)V

    .line 726
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v1, "Music_Player_Page"

    const-string v2, "Music_Player_Song_Cover"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "changeLrcListShow: not threeone"

    .line 730
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->setVisibility(I)V

    .line 733
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLastThreeOne:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_2

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->e()V

    .line 737
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLastThreeOne:Z

    return-void
.end method

.method protected changeTouchViewVisibility()V
    .locals 3

    .line 275
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 276
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mTouchView:Landroid/view/View;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 277
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected createPlayerInfoLayout()Lcom/xiaopeng/musicradio/playercomponent/big/view/g;
    .locals 2

    .line 257
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public disableAll()V
    .locals 2

    const-string v0, "NewPlayerCommonLayout"

    const-string v1, "disableAll: ===="

    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableControl(Z)V

    .line 520
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableLeftIcon(Z)V

    .line 521
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableRightIcon(Z)V

    .line 522
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableLove(Z)V

    .line 523
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableSeek(Z)V

    .line 524
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enablePlayList(Z)V

    return-void
.end method

.method public dispatchLeftIconClick()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->callOnClick()Z

    return-void
.end method

.method public doShowEff(Z)V
    .locals 0

    return-void
.end method

.method public enableAll()V
    .locals 2

    const-string v0, "NewPlayerCommonLayout"

    const-string v1, "enableAll: ===="

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 504
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableControl(Z)V

    .line 505
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableLeftIcon(Z)V

    .line 506
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableRightIcon(Z)V

    .line 507
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableLove(Z)V

    .line 508
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableSeek(Z)V

    .line 509
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enablePlayList(Z)V

    return-void
.end method

.method public enableControl(Z)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreImg:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextImg:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public enableLeftIcon(Z)V
    .locals 2

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLeftIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public enableLove(Z)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    return-void
.end method

.method protected enablePlayList(Z)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public enableRightIcon(Z)V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    return-void
.end method

.method protected extendTouch(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x17

    .line 180
    invoke-static {p1, v0}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;I)V

    return-void
.end method

.method protected findView()V
    .locals 1

    .line 144
    sget v0, Lble$d;->layout_control_s:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mControlContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 146
    sget v0, Lble$d;->layout_love:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 147
    sget v0, Lble$d;->img_love:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    .line 148
    sget v0, Lble$d;->layout_pre:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 149
    sget v0, Lble$d;->img_pre:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreImg:Landroid/widget/ImageView;

    .line 150
    sget v0, Lble$d;->layout_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    .line 151
    sget v0, Lble$d;->layout_next:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 152
    sget v0, Lble$d;->img_next:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextImg:Landroid/widget/ImageView;

    .line 153
    sget v0, Lble$d;->layout_play_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 154
    sget v0, Lble$d;->img_play_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    .line 155
    sget v0, Lble$d;->layout_right_one:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 156
    sget v0, Lble$d;->img_right_one:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    .line 157
    sget v0, Lble$d;->layout_dsp:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mDspLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 158
    sget v0, Lble$d;->img_dsp:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mDspImg:Landroid/widget/ImageView;

    .line 159
    sget v0, Lble$d;->progress_bar_h:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 160
    sget v0, Lble$d;->tv_start:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    .line 161
    sget v0, Lble$d;->tv_end:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    .line 163
    sget v0, Lble$d;->layout_space:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mCenterSpaceView:Landroid/view/View;

    .line 164
    sget v0, Lble$d;->layout_right_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightLrcListContentLayout:Landroid/widget/FrameLayout;

    .line 165
    sget v0, Lble$d;->layout_lrc_list_content_stub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLrcListContianer:Landroid/widget/FrameLayout;

    .line 166
    sget v0, Lble$d;->view_touch:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mTouchView:Landroid/view/View;

    .line 167
    sget v0, Lble$d;->layout_lrc_list_real_container:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mListContainer:Landroid/widget/FrameLayout;

    .line 169
    sget v0, Lble$d;->layout_scene_container:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mSceneContainer:Landroid/widget/FrameLayout;

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->extendTouch(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->extendTouch(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->extendTouch(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->extendTouch(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->extendTouch(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mDspLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->extendTouch(Landroid/view/View;)V

    return-void
.end method

.method protected getColor(I)I
    .locals 1

    .line 886
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getContentViewId()I
    .locals 1

    .line 423
    sget v0, Lble$e;->layout_new_player_common:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 757
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getInfoContainer()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mControlContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 4

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 410
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContentViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 412
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->addView(Landroid/view/View;)V

    .line 416
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewPlayerCommonLayout Layout.inflate.cost: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewPlayerCommonLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    return-void
.end method

.method public isSelectedLeftIcon()Z
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 636
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 637
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCcd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLastColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshColor()V

    :cond_0
    const/4 p1, 0x1

    .line 642
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->showShadow(Z)V

    .line 644
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->processConfigurationChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 614
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 615
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 649
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onMeasure(II)V

    .line 650
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->processConfigurationChanged()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 440
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 441
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshColor()V

    return-void
.end method

.method public openPlayList()V
    .locals 2

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openPlayList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->dispatchLeftIconClick()V

    :cond_0
    return-void
.end method

.method public pauseEff()V
    .locals 0

    return-void
.end method

.method public refreshColor()V
    .locals 1

    .line 761
    iget v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLastColor:I

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshColor(I)V

    :cond_0
    return-void
.end method

.method public refreshColor(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 769
    iput v1, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLastColor:I

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lapo;->d(Landroid/content/Context;)Z

    move-result v2

    const v7, 0x102000f

    const/high16 v8, 0x1020000

    const-string v9, "NewPlayerCommonLayout"

    const/4 v10, -0x1

    if-eqz v2, :cond_4

    .line 775
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 776
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 777
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    .line 778
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    const-string v13, "rc night: "

    .line 779
    invoke-static {v9, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v13, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v12

    mul-double/2addr v13, v3

    double-to-int v9, v13

    .line 781
    invoke-static {v9, v2, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v12, v3

    double-to-int v12, v12

    .line 782
    invoke-static {v12, v2, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    const-wide v13, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v13, v3

    double-to-int v13, v13

    .line 783
    invoke-static {v13, v2, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    mul-double v5, v3, v15

    double-to-int v5, v5

    .line 784
    invoke-static {v5, v2, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 786
    invoke-static {v3, v2, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    .line 788
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v2, v1, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(II)V

    .line 789
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v2, v1, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(II)V

    .line 790
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 791
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 792
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v2, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b(I)V

    .line 793
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    sget v3, Lble$a;->x_color_red:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 796
    :cond_0
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 798
    :goto_0
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 799
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    sget v3, Lble$a;->x_color_primary:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 801
    :cond_1
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v0, v2, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 803
    :goto_1
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 804
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 805
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 806
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mDspImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v9}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 807
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 808
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v2, v12}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c(I)V

    .line 810
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 811
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_3

    .line 812
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 813
    invoke-static {v3, v12}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 815
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 816
    invoke-static {v3, v13}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    const v3, 0x102000d

    .line 819
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 820
    instance-of v3, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_2

    .line 821
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto :goto_2

    .line 823
    :cond_2
    invoke-static {v2, v1}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 826
    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    move v10, v12

    goto/16 :goto_6

    .line 828
    :cond_4
    sget v1, Lble$a;->x_color_text_1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v1

    .line 829
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    sget v3, Lble$a;->x_color_text_1:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    sget v4, Lble$a;->x_color_text_4:I

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(II)V

    .line 830
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    sget v3, Lble$a;->x_color_text_1:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    sget v4, Lble$a;->x_color_text_4:I

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(II)V

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rc day: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    sget v3, Lble$a;->m_color_text_4:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 833
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    sget v3, Lble$a;->m_color_text_4:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 834
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    sget v3, Lble$a;->player_vip_label:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->b(I)V

    .line 836
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 837
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    sget v3, Lble$a;->x_color_red:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    goto :goto_3

    .line 839
    :cond_5
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 842
    :goto_3
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 843
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    sget v3, Lble$a;->x_color_primary:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    goto :goto_4

    .line 845
    :cond_6
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 848
    :goto_4
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    sget v3, Lble$a;->x_color_text_4:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c(I)V

    .line 849
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 850
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 851
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 852
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mDspImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 853
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 855
    iget-object v1, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 856
    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_8

    .line 857
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 858
    sget v3, Lble$a;->big_progress_bg:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 860
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 861
    sget v3, Lble$a;->progress_second_bg:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x102000d

    .line 863
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 864
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_7

    .line 865
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const-string v3, "#FF00B276"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "#4D00B276"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto :goto_5

    .line 867
    :cond_7
    sget v2, Lble$a;->x_color_primary:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 870
    :cond_8
    :goto_5
    iget-object v1, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lble$a;->x_color_text_highlight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/graphics/drawable/Drawable;I)V

    move v1, v10

    move v9, v1

    move v13, v9

    .line 872
    :goto_6
    iget-object v2, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mUpdateListener:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$a;

    if-eqz v2, :cond_9

    .line 873
    invoke-interface {v2, v1, v9, v10, v13}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$a;->a(IIII)V

    .line 875
    :cond_9
    invoke-virtual {v0, v1, v9, v10, v13}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshSelfColor(IIII)V

    return-void
.end method

.method public refreshCover(I)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshDefaultCover(I)V

    return-void
.end method

.method public refreshCover(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshDefaultCover(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public refreshPlayState(IZ)V
    .locals 6

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    .line 601
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lble$c;->ic_music_play_s_player:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lble$f;->vui_label_play:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lble$f;->vui_label_stop:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v2, v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 597
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lble$c;->ic_music_play_s_player:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lble$f;->vui_label_play:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lble$f;->vui_label_stop:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v2, v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lble$c;->ic_music_pause_o:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lble$f;->vui_label_play:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lble$f;->vui_label_stop:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v3, v1, v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lble$c;->ic_music_pause_o:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/XButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lble$f;->vui_label_play:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lble$f;->vui_label_stop:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v3, v1, v0, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 605
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 607
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshColor()V

    .line 608
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshPlayInfoPlayState(I)V

    .line 609
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshPlayState(I)V

    return-void
.end method

.method public refreshPos(III)V
    .locals 2

    .line 446
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsDragProgressBar:Z

    if-eqz v0, :cond_0

    const-string p1, "NewPlayerCommonLayout"

    const-string p2, "refreshPos: draging======"

    .line 447
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_1

    if-lez p2, :cond_1

    .line 451
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

    .line 452
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 453
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1, p3}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setSecondaryProgress(I)V

    .line 454
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p3, v0, p2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 457
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setSecondaryProgress(I)V

    .line 458
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p3, v0, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    .line 461
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshProgressTxt(II)V

    return-void
.end method

.method protected refreshSelfColor(IIII)V
    .locals 0

    return-void
.end method

.method public refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 483
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableSeek(Z)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public resumeEff()V
    .locals 0

    return-void
.end method

.method public setDefault()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->d()V

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->d()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 497
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshPlayState(IZ)V

    .line 498
    invoke-virtual {p0, v0, v0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshPos(III)V

    .line 499
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->disableAll()V

    return-void
.end method

.method protected setImageViewColor(Landroid/widget/ImageView;I)V
    .locals 0

    .line 891
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setLeftIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLeftIconListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$4;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setOnSelectedChangeListener(Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView$a;)V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$5;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setClickable(Z)V

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$6;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$7;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$8;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$9;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mDspLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$10;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setOnSlideChangeListener(Lcjb$b;)V

    return-void
.end method

.method public setLoveListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateListener(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$a;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mUpdateListener:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$a;

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 185
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->createPlayerInfoLayout()Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mSceneContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(Landroid/widget/FrameLayout;)V

    .line 189
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->startPostEnterTrans()V

    .line 191
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mSceneContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->setVisibility(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mControlContainerView:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->enableViewVuiMode(Z)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lble$c;->bg_progress_v4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lble$c;->bg_play_seek_thumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayLayout:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiStatfulButtonClick(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->onCommonScreenLayoutChange()V

    .line 216
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mIsThreeOne:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->onThreeOneScreenLayoutChange()V

    :cond_1
    return-void
.end method

.method public showPlayListIcon(Z)V
    .locals 0

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mStartTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mEndTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    return-void
.end method

.method protected showShadow(Z)V
    .locals 0

    return-void
.end method

.method protected threeOneShowLrcList(Z)Z
    .locals 2

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "threeOneShowLrcList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " touchSelect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 742
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateLove(ZZZ)V
    .locals 2

    .line 381
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableLove(Z)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    sget v1, Lble$c;->ic_music_player_like_state:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setSelected(Z)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    sget v1, Lble$c;->ic_player_music_like_o:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setSelected(Z)V

    .line 391
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshColor()V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " enable = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isPlayAnim = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NewPlayerCommonLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mLoveLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public updateTitleLeftLabel(IZ)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(IZ)V

    return-void
.end method

.method protected updateVuiScene()V
    .locals 3

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getUpdateViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
