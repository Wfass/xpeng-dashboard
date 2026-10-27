.class public Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "NrLocationRadioLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/b;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/b;"
    }
.end annotation


# static fields
.field private static final MAX_COUNT_FOR_INIT_SCROLL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NrLocationRadioLayout"


# instance fields
.field private mBannerView:Lcom/zhpan/bannerview/BannerViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentLayout:Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentSelectIndex:I

.field private mFirstShow:Z

.field private mFullRevealWidth:I

.field private mIcLocalRadioGear:Lcom/xiaopeng/xui/widget/XImageView;

.field private mIsLocalPlay:Z

.field private mIsVuiPlay:Z

.field private mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

.field public mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mLocalAdapter:Lbkb;

.field private mLocalData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOneThreeRevealWidth:I

.field private mOnlyScroll:Z

.field private mPause:Z

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRdProgram:Lcom/xiaopeng/xui/widget/XTextView;

.field private mRdTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;

.field private mTwoThreeRevealWidth:I

.field private mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsVuiPlay:Z

    .line 72
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsLocalPlay:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalData:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    .line 88
    new-instance v1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 v1, -0x1

    .line 513
    iput v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    .line 533
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mFirstShow:Z

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsVuiPlay:Z

    .line 72
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsLocalPlay:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalData:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    .line 88
    new-instance v1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 v1, -0x1

    .line 513
    iput v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    .line 533
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mFirstShow:Z

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 71
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsVuiPlay:Z

    .line 72
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsLocalPlay:Z

    .line 79
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalData:Ljava/util/ArrayList;

    const/4 p3, 0x1

    .line 84
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    .line 88
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 v0, -0x1

    .line 513
    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    .line 533
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mFirstShow:Z

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsLocalPlay:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    return p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setRdData(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->playSelectRadio(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setPlayState()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method private getDefaultIndex()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    return v0
.end method

.method private getPlayingIndex()I
    .locals 2

    .line 372
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 374
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private playSelectRadio(Z)V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 427
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSelectRadio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NrLocationRadioLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_4

    .line 429
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 430
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 435
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 436
    invoke-static {}, Lbkg;->a()V

    if-eqz p1, :cond_2

    .line 437
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->i()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 438
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "playSelectRadio: mData in presenter is null"

    .line 431
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private refreshBanner(Z)V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    if-nez v0, :cond_0

    const-string p1, "NrLocationRadioLayout"

    const-string v0, "refreshBanner: banner null"

    .line 471
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mTwoThreeRevealWidth:I

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BannerViewPager;->setRevealWidth(I)Lcom/zhpan/bannerview/BannerViewPager;

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOneThreeRevealWidth:I

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BannerViewPager;->setRevealWidth(I)Lcom/zhpan/bannerview/BannerViewPager;

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mFullRevealWidth:I

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BannerViewPager;->setRevealWidth(I)Lcom/zhpan/bannerview/BannerViewPager;

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 482
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getDefaultIndex()I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhpan/bannerview/BannerViewPager;->create(Ljava/util/List;)V

    .line 484
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->shouldScroll(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    .line 486
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalData:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 487
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v2}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(Ljava/util/List;I)I

    move-result v1

    if-eqz p1, :cond_3

    .line 488
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->shouldScroll(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    .line 489
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method private refreshScreen()V
    .locals 1

    .line 463
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPause:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 466
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshBanner(Z)V

    return-void
.end method

.method private refreshTransform()V
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    const-string v1, "mViewPager"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "mRecyclerView"

    .line 448
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1

    return-void

    .line 452
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_2

    return-void

    .line 456
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayout:visible= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NrLocationRadioLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 458
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->requestTransform()V

    :cond_3
    return-void
.end method

.method private setContentBg()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    sget v0, Lbuc$c;->bg_local_radio_13:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/view/View;)V

    .line 574
    sget v0, Lbuc$c;->ic_local_radio_gear_13:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIcLocalRadioGear:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/view/View;)V

    goto :goto_0

    .line 576
    :cond_0
    sget v0, Lbuc$c;->bg_local_radio:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/view/View;)V

    .line 577
    sget v0, Lbuc$c;->ic_local_radio_gear:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIcLocalRadioGear:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/view/View;)V

    :goto_0
    return-void
.end method

.method private setCurrentItem(I)V
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrrentItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrLocationRadioLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    .line 517
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private setDrawable()V
    .locals 4

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsVuiPlay:Z

    invoke-static {v0, v1, v2, v3}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    return-void
.end method

.method private setPlayState()V
    .locals 7

    .line 388
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 390
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    .line 391
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v3}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v3

    if-nez v3, :cond_0

    .line 392
    iget v4, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v3, v4

    .line 395
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPlayState: mPlayID \uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    pos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NrLocationRadioLayout"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v4, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v4}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v4}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_4

    .line 400
    iget-object v4, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v4}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 401
    iget-object v4, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v4}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPlayState: bannerInfo: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result v4

    .line 404
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v1, v4, v0}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    const/4 v0, 0x2

    if-ne v4, v0, :cond_4

    goto :goto_2

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v2, v4, v0}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "setPlayState: mData in presenter is null"

    .line 397
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    move v1, v2

    .line 414
    :goto_2
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsVuiPlay:Z

    if-eq v0, v1, :cond_5

    .line 415
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 416
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mMenuIndex:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/vui/c;->al(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 417
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsVuiPlay:Z

    :cond_5
    return-void
.end method

.method private setRdData(I)V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_3

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRdData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NrLocationRadioLayout"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mRdTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->al(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 253
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lbuc$g;->netradio_live:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 258
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mRdProgram:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lbuc$g;->netradio_play_live:I

    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 263
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 264
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->g()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mRdProgram:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lbuc$g;->netradio_play_back:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 255
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mRdProgram:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbuc$g;->netradio_live_no_program:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setTitleSize()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mRdTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbuc$b;->x_font_title_03_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mRdTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbuc$b;->top_banner_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method private shouldScroll(I)Z
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(Ljava/util/List;I)I

    move-result p1

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(Ljava/util/List;)Z

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 499
    iget v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v1, v2

    .line 502
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshBanner run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hasPlayingIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " currentPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NrLocationRadioLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;
    .locals 1

    .line 110
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 115
    sget v0, Lbuc$d;->location_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 116
    sget v0, Lbuc$d;->banner_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhpan/bannerview/BannerViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    .line 117
    sget v0, Lbuc$d;->rd_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mRdTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 118
    sget v0, Lbuc$d;->rd_program:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mRdProgram:Lcom/xiaopeng/xui/widget/XTextView;

    .line 119
    sget v0, Lbuc$d;->play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 120
    sget v0, Lbuc$d;->play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 121
    sget v0, Lbuc$d;->content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContentLayout:Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;

    .line 122
    sget v0, Lbuc$d;->vipsale_banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    .line 123
    sget v0, Lbuc$d;->item_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 124
    sget v0, Lbuc$d;->ic_local_radio_gear:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIcLocalRadioGear:Lcom/xiaopeng/xui/widget/XImageView;

    .line 125
    sget v0, Lbuc$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 204
    sget v0, Lbuc$f;->netradio_layout_locationradio:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;IZ)V"
        }
    .end annotation

    const/4 p3, 0x0

    .line 210
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->showLoadingTip(I)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContentLayout:Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;

    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;->setVisibility(I)V

    .line 212
    iget-object p3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p3, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(I)V

    .line 213
    iget-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p2, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->f()V

    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshBanner(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 522
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 595
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 596
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 597
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 598
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 565
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDestroy(Landroidx/lifecycle/n;)V

    .line 566
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {p1}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 528
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 604
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onLayout(ZIIII)V

    .line 605
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshTransform()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 2

    const-string v0, "NrLocationRadioLayout"

    const-string v1, "onPause: ============ "

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 556
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPause:Z

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    .line 560
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onStop(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 536
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    const-string p1, "NrLocationRadioLayout"

    const-string v0, "onResume: =========== "

    .line 537
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 538
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPause:Z

    .line 539
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mFirstShow:Z

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    .line 543
    :cond_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mFirstShow:Z

    .line 545
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 546
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshScreen()V

    .line 547
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setContentBg()V

    .line 548
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setTitleSize()V

    return-void
.end method

.method public refreshBanner(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    const-string v1, "NrLocationRadioLayout"

    if-nez v0, :cond_0

    const-string p1, "refreshBanner: BVP is null"

    .line 276
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "refreshBanner: mLocationNetRadioInfos is null"

    .line 280
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 284
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v3}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x0

    move v3, v0

    .line 286
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 287
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v5}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    const-string p1, "refreshBanner: isSame========"

    .line 293
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v0, "refreshBanner: "

    if-eqz p1, :cond_5

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_5
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    .line 301
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getDefaultIndex()I

    move-result v2

    .line 302
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v3, p1}, Lcom/zhpan/bannerview/BannerViewPager;->create(Ljava/util/List;)V

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalData:Ljava/util/ArrayList;

    .line 304
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v3}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pos = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 307
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_7

    .line 308
    new-instance p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;

    invoke-direct {p1, p0, v2}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;I)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method

.method public refreshPlayInfo(Z)V
    .locals 4

    .line 354
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setPlayState()V

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->c()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "NrLocationRadioLayout"

    if-nez v0, :cond_0

    const-string p1, "refreshPlayInfo: mData in presenter is null"

    .line 357
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getPlayingIndex()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(I)V

    .line 364
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setRdData(I)V

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPlayInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    if-eq v1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOnlyScroll:Z

    .line 367
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method public refreshView()V
    .locals 3

    .line 342
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getPlayingIndex()I

    move-result v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v2}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NrLocationRadioLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 345
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshBanner(Z)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshPlayInfo(Z)V

    .line 347
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setContentBg()V

    :cond_1
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshTransform()V

    .line 610
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshScreen()V

    .line 611
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setContentBg()V

    .line 612
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setTitleSize()V

    .line 613
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setDrawable()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$3;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 6

    const-string v0, "NrLocationRadioLayout"

    const-string v1, "setView: =========== "

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 133
    new-instance v0, Lbkb;

    invoke-direct {v0}, Lbkb;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalAdapter:Lbkb;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 136
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setContentBg()V

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    sget v2, Lbuc$b;->radio_banner_three_two_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lbuc$b;->local_radio_item_width:I

    .line 139
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mTwoThreeRevealWidth:I

    .line 141
    sget v2, Lbuc$b;->radio_banner_three_one_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lbuc$b;->local_radio_item_three_one_width:I

    .line 142
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOneThreeRevealWidth:I

    .line 144
    sget v2, Lbuc$b;->radio_banner_front_full_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lbuc$b;->local_radio_item_width:I

    .line 145
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mFullRevealWidth:I

    .line 146
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mFullRevealWidth:I

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mTwoThreeRevealWidth:I

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mOneThreeRevealWidth:I

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorVisibility(I)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v1}, Lcom/zhpan/bannerview/BannerViewPager;->setCanLoop(Z)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v2

    const/4 v3, 0x6

    .line 155
    invoke-virtual {v2, v3}, Lcom/zhpan/bannerview/BannerViewPager;->setOffScreenPageLimit(I)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mLocalAdapter:Lbkb;

    .line 156
    invoke-virtual {v2, v3}, Lcom/zhpan/bannerview/BannerViewPager;->setAdapter(Lcom/zhpan/bannerview/BaseBannerAdapter;)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setRevealWidth(II)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v0

    new-instance v2, Lbkc;

    invoke-direct {v2}, Lbkc;-><init>()V

    .line 158
    invoke-virtual {v0, v2}, Lcom/zhpan/bannerview/BannerViewPager;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)V

    const/4 v3, 0x1

    .line 159
    invoke-virtual {v0, v2, v3}, Lcom/zhpan/bannerview/BannerViewPager;->setOnPageClickListener(Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;Z)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)V

    .line 164
    invoke-virtual {v0, v2}, Lcom/zhpan/bannerview/BannerViewPager;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BannerViewPager;->create()V

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nr_local_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLayoutLoadable(Z)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPriority(Lbyb;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContentLayout:Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;->setVuiElementType(Lbxy;)V

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->reviewOnScreenChange()V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mVipSaleBanner:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContentLayout:Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;->setVisibility(I)V

    const/4 p1, 0x2

    .line 227
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 239
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContentLayout:Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mContentLayout:Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/AutoMarginConstraintLayout;->setVisibility(I)V

    const/4 p1, 0x3

    .line 233
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->showLoadingTip(I)V

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->i()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v2}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 328
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mBannerView:Lcom/zhpan/bannerview/BannerViewPager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mCurrentSelectIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 330
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " seelct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NrLocationRadioLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setPlayState()V

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsLocalPlay:Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 335
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mIsLocalPlay:Z

    .line 336
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbuc$c;->ic_btn_playall:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method
