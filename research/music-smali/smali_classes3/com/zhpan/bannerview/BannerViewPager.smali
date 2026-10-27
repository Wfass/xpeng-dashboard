.class public Lcom/zhpan/bannerview/BannerViewPager;
.super Landroid/widget/RelativeLayout;
.source "BannerViewPager.java"

# interfaces
.implements Landroidx/lifecycle/m;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/RelativeLayout;",
        "Landroidx/lifecycle/m;"
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_POSITION:Ljava/lang/String; = "CURRENT_POSITION"

.field private static final KEY_IS_CUSTOM_INDICATOR:Ljava/lang/String; = "IS_CUSTOM_INDICATOR"

.field private static final KEY_SUPER_STATE:Ljava/lang/String; = "SUPER_STATE"


# instance fields
.field private currentPosition:I

.field private isCustomIndicator:Z

.field private isLooping:Z

.field private lifecycleRegistry:Landroidx/lifecycle/j;

.field private mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

.field private mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhpan/bannerview/BaseBannerAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorLayout:Landroid/widget/RelativeLayout;

.field private mIndicatorView:Lbyk;

.field private final mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mRadiusPath:Landroid/graphics/Path;

.field private mRadiusRectF:Landroid/graphics/RectF;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private onPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private startX:I

.field private startY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lcom/zhpan/bannerview/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/zhpan/bannerview/BannerViewPager;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance p3, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$KiBw1g6s03cdPGeWFSdeKfkofjc;

    invoke-direct {p3, p0}, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$KiBw1g6s03cdPGeWFSdeKfkofjc;-><init>(Lcom/zhpan/bannerview/BannerViewPager;)V

    iput-object p3, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRunnable:Ljava/lang/Runnable;

    .line 105
    new-instance p3, Lcom/zhpan/bannerview/BannerViewPager$1;

    invoke-direct {p3, p0}, Lcom/zhpan/bannerview/BannerViewPager$1;-><init>(Lcom/zhpan/bannerview/BannerViewPager;)V

    iput-object p3, p0, Lcom/zhpan/bannerview/BannerViewPager;->mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/zhpan/bannerview/BannerViewPager;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zhpan/bannerview/BannerViewPager;IFI)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/zhpan/bannerview/BannerViewPager;->pageScrolled(IFI)V

    return-void
.end method

.method static synthetic access$100(Lcom/zhpan/bannerview/BannerViewPager;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->pageSelected(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/zhpan/bannerview/BannerViewPager;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->pageScrollStateChanged(I)V

    return-void
.end method

.method private getInterval()I
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getInterval()I

    move-result v0

    return v0
.end method

.method private handlePosition()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    .line 304
    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions;->isAutoScrollSmoothly()Z

    move-result v1

    .line 303
    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 305
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 140
    new-instance v0, Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-direct {v0}, Lcom/zhpan/bannerview/manager/BannerManager;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    .line 141
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0, p1, p2}, Lcom/zhpan/bannerview/manager/BannerManager;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->initView()V

    return-void
.end method

.method private initBannerData()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorValues(Ljava/util/List;)V

    .line 313
    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setupViewPager(Ljava/util/List;)V

    .line 314
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->initRoundCorner()V

    :cond_0
    return-void
.end method

.method private initIndicator(Lbyu;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbyu;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 333
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 334
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->initIndicatorSliderMargin()V

    .line 335
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->initIndicatorGravity()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    invoke-interface {v0, p1}, Lbyk;->setIndicatorOptions(Lbyu;)V

    .line 338
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lbyu;->d(I)V

    .line 339
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    invoke-interface {p1}, Lbyk;->notifyDataChanged()V

    return-void
.end method

.method private initIndicatorGravity()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    check-cast v0, Landroid/view/View;

    .line 344
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions;->getIndicatorGravity()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    .line 353
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xe

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    return-void
.end method

.method private initIndicatorSliderMargin()V
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    check-cast v0, Landroid/view/View;

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 363
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    .line 364
    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions;->getIndicatorMargin()Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;

    move-result-object v1

    if-nez v1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    .line 366
    invoke-static {v1}, Lcom/zhpan/bannerview/utils/BannerUtils;->dp2px(F)I

    move-result v1

    .line 367
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;->getTop()I

    move-result v3

    .line 370
    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;->getRight()I

    move-result v4

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions$IndicatorMargin;->getBottom()I

    move-result v1

    .line 369
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method

.method private initPageStyle(I)V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getPageScale()F

    move-result v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 443
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/zhpan/bannerview/manager/BannerManager;->setMultiPageStyle(ZF)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 445
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/zhpan/bannerview/manager/BannerManager;->setMultiPageStyle(ZF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initRevealWidth(Lcom/zhpan/bannerview/manager/BannerOptions;)V
    .locals 6

    .line 421
    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->getRightRevealWidth()I

    move-result v0

    .line 422
    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->getLeftRevealWidth()I

    move-result v1

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_0

    if-eq v0, v2, :cond_5

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 425
    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->getOrientation()I

    move-result v4

    .line 426
    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->getPageMargin()I

    move-result v5

    add-int/2addr v0, v5

    .line 427
    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->getPageMargin()I

    move-result p1

    add-int/2addr p1, v1

    if-gez p1, :cond_1

    move p1, v3

    :cond_1
    if-gez v0, :cond_2

    move v0, v3

    :cond_2
    if-nez v4, :cond_3

    .line 431
    invoke-virtual {v2, p1, v3, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne v4, v1, :cond_4

    .line 433
    invoke-virtual {v2, v3, p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 435
    :cond_4
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 437
    :cond_5
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerManager;->createMarginTransformer()V

    return-void
.end method

.method private initRoundCorner()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getRoundRectRadius()I

    move-result v0

    if-lez v0, :cond_0

    .line 392
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    int-to-float v0, v0

    .line 393
    invoke-static {p0, v0}, Lcom/zhpan/bannerview/provider/ViewStyleSetter;->applyRoundCorner(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zhpan/bannerview/R$layout;->bvp_layout:I

    invoke-static {v0, v1, p0}, Lcom/zhpan/bannerview/BannerViewPager;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 147
    sget v0, Lcom/zhpan/bannerview/R$id;->vp_main:I

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 148
    sget v0, Lcom/zhpan/bannerview/R$id;->bvp_layout_indicator:I

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorLayout:Landroid/widget/RelativeLayout;

    .line 149
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerManager;->getCompositePageTransformer()Landroidx/viewpager2/widget/CompositePageTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method private isAutoPlay()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->isAutoPlay()Z

    move-result v0

    return v0
.end method

.method private isCanLoopSafely()Z
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    .line 479
    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isStopLoopWhenDetachedFromWindow()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->isStopLoopWhenDetachedFromWindow()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$KiBw1g6s03cdPGeWFSdeKfkofjc(Lcom/zhpan/bannerview/BannerViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->handlePosition()V

    return-void
.end method

.method private onHorizontalActionMove(III)V
    .locals 3

    const/4 v0, 0x0

    if-le p2, p3, :cond_4

    .line 245
    iget-object p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {p2}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    .line 247
    iget p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->startX:I

    sub-int p2, p1, p2

    if-lez p2, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p3

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->startX:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    :cond_2
    :goto_0
    invoke-interface {p2, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_4
    if-le p3, p2, :cond_5

    .line 257
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private onVerticalActionMove(III)V
    .locals 3

    const/4 v0, 0x0

    if-le p3, p2, :cond_4

    .line 227
    iget-object p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {p2}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    .line 229
    iget p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->startY:I

    sub-int p2, p1, p2

    if-lez p2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p3

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->startY:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    :cond_2
    :goto_0
    invoke-interface {p2, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_4
    if-le p2, p3, :cond_5

    .line 239
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private pageScrollStateChanged(I)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1}, Lbyk;->onPageScrollStateChanged(I)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->onPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method private pageScrolled(IFI)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop()Z

    .line 290
    invoke-static {p1, v0}, Lcom/zhpan/bannerview/utils/BannerUtils;->getRealPosition(II)I

    move-result p1

    if-lez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->onPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {v0, p1, p2, p3}, Lbyk;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method private pageSelected(I)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop()Z

    move-result v1

    .line 273
    invoke-static {p1, v0}, Lcom/zhpan/bannerview/utils/BannerUtils;->getRealPosition(II)I

    move-result v2

    iput v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 277
    iget p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->resetCurrentItem(I)V

    .line 279
    :cond_2
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->onPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p1, :cond_3

    .line 280
    iget v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 282
    :cond_3
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    if-eqz p1, :cond_4

    .line 283
    iget v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    invoke-interface {p1, v0}, Lbyk;->onPageSelected(I)V

    :cond_4
    return-void
.end method

.method private refreshIndicator(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 459
    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorValues(Ljava/util/List;)V

    .line 460
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getIndicatorOptions()Lbyu;

    move-result-object v0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 461
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v1, p1}, Lcom/zhpan/bannerview/utils/BannerUtils;->getRealPosition(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lbyu;->g(I)V

    .line 462
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    invoke-interface {p1}, Lbyk;->notifyDataChanged()V

    return-void
.end method

.method private resetCurrentItem(I)V
    .locals 3

    .line 450
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isCanLoopSafely()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v2

    invoke-static {v2}, Lcom/zhpan/bannerview/utils/BannerUtils;->getOriginalPosition(I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method private setIndicatorValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getIndicatorVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 321
    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->resetIndicatorOptions()V

    .line 322
    iget-boolean v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->isCustomIndicator:Z

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    if-nez v1, :cond_1

    .line 325
    new-instance v1, Lbyh;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lbyh;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    .line 327
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getIndicatorOptions()Lbyu;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->initIndicator(Lbyu;Ljava/util/List;)V

    return-void
.end method

.method private setupViewPager(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getScrollDuration()I

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getScrollDuration()I

    move-result v2

    invoke-static {v1, v2}, Lcom/zhpan/bannerview/provider/ReflectLayoutManager;->reflectLayoutManager(Landroidx/viewpager2/widget/ViewPager2;I)V

    :cond_0
    const/4 v1, 0x0

    .line 405
    iput v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    .line 406
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zhpan/bannerview/BaseBannerAdapter;->setCanLoop(Z)V

    .line 407
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 408
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isCanLoopSafely()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lcom/zhpan/bannerview/utils/BannerUtils;->getOriginalPosition(I)I

    move-result p1

    invoke-virtual {v2, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 411
    :cond_1
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 412
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mOnPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 413
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 414
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getOffScreenPageLimit()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 415
    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->initRevealWidth(Lcom/zhpan/bannerview/manager/BannerOptions;)V

    .line 416
    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getPageStyle()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->initPageStyle(I)V

    .line 417
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    return-void

    .line 399
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "You must set adapter for BannerViewPager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 932
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 933
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->notifyDataSetChanged()V

    .line 934
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->resetCurrentItem(I)V

    .line 935
    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->refreshIndicator(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 4

    .line 884
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isCanLoopSafely()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    .line 886
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    .line 887
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v2}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhpan/bannerview/manager/BannerOptions;->isCanLoop()Z

    .line 888
    invoke-static {v1, v0}, Lcom/zhpan/bannerview/utils/BannerUtils;->getRealPosition(II)I

    move-result v2

    if-eq v1, p2, :cond_3

    if-nez p2, :cond_0

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    .line 891
    iget-object p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 893
    iget-object p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_0

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr p2, v2

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_0

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerManager;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-object p0
.end method

.method public create()V
    .locals 1

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->create(Ljava/util/List;)V

    return-void
.end method

.method public create(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->setData(Ljava/util/List;)V

    .line 858
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->initBannerData()V

    return-void

    .line 855
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "You must set adapter for BannerViewPager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disallowInterceptTouchEvent(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1195
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setDisallowParentInterceptDownEvent(Z)V

    return-object p0
.end method

.method public disallowParentInterceptDownEvent(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    .line 1144
    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setDisallowParentInterceptDownEvent(Z)V

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->getRoundRectRadiusArray()[F

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRadiusRectF:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRadiusPath:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 383
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRadiusRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 384
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRadiusPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRadiusRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 385
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRadiusPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 387
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->isLooping:Z

    .line 179
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    goto :goto_0

    .line 172
    :cond_1
    iput-boolean v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->isLooping:Z

    .line 173
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    .line 184
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Lcom/zhpan/bannerview/BaseBannerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhpan/bannerview/BaseBannerAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 982
    iget v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 512
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insertItem(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 962
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 963
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 964
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->notifyDataSetChanged()V

    .line 965
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->resetCurrentItem(I)V

    .line 966
    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->refreshIndicator(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$refreshData$1$BannerViewPager(Ljava/util/List;)V
    .locals 1

    .line 918
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    .line 920
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->setData(Ljava/util/List;)V

    .line 921
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->notifyDataSetChanged()V

    .line 922
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->resetCurrentItem(I)V

    .line 923
    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->refreshIndicator(Ljava/util/List;)V

    .line 924
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setOnPageClickListener$0$BannerViewPager(Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;ZLandroid/view/View;II)V
    .locals 0

    .line 688
    invoke-interface {p1, p3, p4}, Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;->onPageClick(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    .line 691
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, p5}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public nextPage()V
    .locals 1

    .line 975
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 163
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isStopLoopWhenDetachedFromWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    .line 1118
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isStopLoopWhenDetachedFromWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 193
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 195
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    goto :goto_2

    .line 203
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 205
    iget v3, p0, Lcom/zhpan/bannerview/BannerViewPager;->startX:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 206
    iget v4, p0, Lcom/zhpan/bannerview/BannerViewPager;->startY:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 207
    iget-object v5, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v5}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zhpan/bannerview/manager/BannerOptions;->getOrientation()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 209
    invoke-direct {p0, v1, v3, v4}, Lcom/zhpan/bannerview/BannerViewPager;->onVerticalActionMove(III)V

    goto :goto_2

    :cond_4
    if-nez v5, :cond_7

    .line 211
    invoke-direct {p0, v0, v3, v4}, Lcom/zhpan/bannerview/BannerViewPager;->onHorizontalActionMove(III)V

    goto :goto_2

    .line 216
    :cond_5
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 197
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->startX:I

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->startY:I

    .line 199
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    .line 200
    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhpan/bannerview/manager/BannerOptions;->isDisallowParentInterceptDownEvent()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 199
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 222
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 1108
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 497
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "SUPER_STATE"

    .line 498
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 499
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_POSITION"

    .line 500
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    const-string v0, "IS_CUSTOM_INDICATOR"

    .line 501
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->isCustomIndicator:Z

    .line 502
    iget p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 487
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 488
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SUPER_STATE"

    .line 489
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 490
    iget v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->currentPosition:I

    const-string v2, "CURRENT_POSITION"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 491
    iget-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->isCustomIndicator:Z

    const-string v2, "IS_CUSTOM_INDICATOR"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public previousPage()V
    .locals 1

    .line 971
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 917
    new-instance v0, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$O_xAcwYpypxRAEGLfsVi4Qg9nCA;

    invoke-direct {v0, p0, p1}, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$O_xAcwYpypxRAEGLfsVi4Qg9nCA;-><init>(Lcom/zhpan/bannerview/BannerViewPager;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerLifecycleObserver(Landroidx/lifecycle/j;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/j;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1096
    invoke-virtual {p1, p0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    .line 1097
    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->lifecycleRegistry:Landroidx/lifecycle/j;

    return-object p0
.end method

.method public registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1082
    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->onPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method public removeDefaultPageTransformer()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->removeDefaultPageTransformer()V

    return-void
.end method

.method public removeItem(I)V
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 946
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 947
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 948
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->notifyDataSetChanged()V

    .line 949
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->resetCurrentItem(I)V

    .line 950
    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->refreshIndicator(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeLifecycleObserver(Landroidx/lifecycle/j;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/j;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1102
    invoke-virtual {p1, p0}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/m;)V

    return-object p0
.end method

.method public removeMarginPageTransformer()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->removeMarginPageTransformer()V

    return-void
.end method

.method public removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerManager;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/zhpan/bannerview/BaseBannerAdapter;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BaseBannerAdapter<",
            "TT;>;)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 553
    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    return-object p0
.end method

.method public setAutoPlay(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setAutoPlay(Z)V

    .line 600
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAutoPlay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 601
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->setCanLoop(Z)V

    :cond_0
    return-object p0
.end method

.method public setAutoPlaySmoothly(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    .line 1186
    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setAutoScrollSmoothly(Z)V

    return-object p0
.end method

.method public setCanLoop(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setCanLoop(Z)V

    if-nez p1, :cond_0

    .line 614
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zhpan/bannerview/manager/BannerOptions;->setAutoPlay(Z)V

    :cond_0
    return-object p0
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 993
    invoke-virtual {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3

    .line 1003
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isCanLoopSafely()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    .line 1005
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 1006
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    .line 1007
    invoke-virtual {v1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhpan/bannerview/utils/BannerUtils;->getRealPosition(II)I

    move-result v1

    .line 1008
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    invoke-virtual {v2, v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 1009
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public setIndicatorGravity(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorGravity(I)V

    return-object p0
.end method

.method public setIndicatorHeight(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorHeight(I)V

    return-object p0
.end method

.method public setIndicatorMargin(IIII)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorMargin(IIII)V

    return-object p0
.end method

.method public setIndicatorSlideMode(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorSlideMode(I)V

    return-object p0
.end method

.method public setIndicatorSliderColor(II)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorSliderColor(II)V

    return-object p0
.end method

.method public setIndicatorSliderGap(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorGap(F)V

    return-object p0
.end method

.method public setIndicatorSliderRadius(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 730
    invoke-virtual {p0, p1, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorSliderRadius(II)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setIndicatorSliderRadius(II)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p1, p2}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorSliderWidth(II)V

    return-object p0
.end method

.method public setIndicatorSliderWidth(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 746
    invoke-virtual {p0, p1, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorSliderWidth(II)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setIndicatorSliderWidth(II)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorSliderWidth(II)V

    return-object p0
.end method

.method public setIndicatorStyle(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorStyle(I)V

    return-object p0
.end method

.method public setIndicatorView(Lbyk;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbyk;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 829
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->isCustomIndicator:Z

    .line 831
    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mIndicatorView:Lbyk;

    :cond_0
    return-object p0
.end method

.method public setIndicatorVisibility(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setIndicatorVisibility(I)V

    return-object p0
.end method

.method public setInterval(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setInterval(I)V

    return-object p0
.end method

.method public setLifecycleRegistry(Landroidx/lifecycle/j;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/j;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1091
    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->registerLifecycleObserver(Landroidx/lifecycle/j;)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setOffScreenPageLimit(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setOffScreenPageLimit(I)V

    return-object p0
.end method

.method public setOnPageClickListener(Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setOnPageClickListener(Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;Z)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setOnPageClickListener(Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;",
            "Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 686
    new-instance v1, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;

    invoke-direct {v1, p0, p1, p2}, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;-><init>(Lcom/zhpan/bannerview/BannerViewPager;Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;Z)V

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->setPageClickListener(Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;)V

    :cond_0
    return-object p0
.end method

.method public setOrientation(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setOrientation(I)V

    return-object p0
.end method

.method public setPageMargin(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerManager;->setPageMargin(I)V

    return-object p0
.end method

.method public setPageStyle(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x3f59999a    # 0.85f

    .line 1023
    invoke-virtual {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setPageStyle(IF)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object p1

    return-object p1
.end method

.method public setPageStyle(IF)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setPageStyle(I)V

    .line 1028
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {p1}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zhpan/bannerview/manager/BannerOptions;->setPageScale(F)V

    return-object p0
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-object p0
.end method

.method public setRTLMode(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    .line 1156
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setRtl(Z)V

    return-object p0
.end method

.method public setRevealWidth(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1037
    invoke-virtual {p0, p1, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setRevealWidth(II)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setRevealWidth(II)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zhpan/bannerview/manager/BannerOptions;->setRightRevealWidth(I)V

    .line 1049
    iget-object p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {p2}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setLeftRevealWidth(I)V

    return-object p0
.end method

.method public setRoundCorner(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 567
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setRoundRectRadius(I)V

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setRoundCorner(IIII)Lcom/zhpan/bannerview/BannerViewPager;

    :goto_0
    return-object p0
.end method

.method public setRoundCorner(IIII)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 586
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRadiusRectF:Landroid/graphics/RectF;

    .line 587
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRadiusPath:Landroid/graphics/Path;

    .line 588
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zhpan/bannerview/manager/BannerOptions;->setRoundRectRadius(IIII)V

    return-object p0
.end method

.method public setRoundRect(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1207
    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setRoundCorner(I)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object p1

    return-object p1
.end method

.method public setRoundRect(IIII)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1223
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zhpan/bannerview/BannerViewPager;->setRoundCorner(IIII)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object p1

    return-object p1
.end method

.method public setScrollDuration(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setScrollDuration(I)V

    return-object p0
.end method

.method public setUserInputEnabled(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setUserInputEnabled(Z)V

    .line 1072
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    return-object p0
.end method

.method public showIndicatorWhenOneItem(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    .line 1177
    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->showIndicatorWhenOneItem(Z)V

    return-object p0
.end method

.method public startLoop()V
    .locals 5

    .line 519
    iget-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->isLooping:Z

    if-nez v0, :cond_1

    .line 520
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->lifecycleRegistry:Landroidx/lifecycle/j;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->lifecycleRegistry:Landroidx/lifecycle/j;

    .line 525
    invoke-virtual {v0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/j$b;->CREATED:Landroidx/lifecycle/j$b;

    if-ne v0, v2, :cond_1

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    iput-boolean v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->isLooping:Z

    :cond_1
    return-void
.end method

.method public startLoopNow()V
    .locals 3

    .line 535
    iget-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->isLooping:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerPagerAdapter:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    iput-boolean v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->isLooping:Z

    :cond_0
    return-void
.end method

.method public stopLoop()V
    .locals 2

    .line 546
    iget-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->isLooping:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->isLooping:Z

    :cond_0
    return-void
.end method

.method public stopLoopWhenDetachedFromWindow(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->mBannerManager:Lcom/zhpan/bannerview/manager/BannerManager;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/manager/BannerManager;->getBannerOptions()Lcom/zhpan/bannerview/manager/BannerOptions;

    move-result-object v0

    .line 1167
    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/manager/BannerOptions;->setStopLoopWhenDetachedFromWindow(Z)V

    return-object p0
.end method
