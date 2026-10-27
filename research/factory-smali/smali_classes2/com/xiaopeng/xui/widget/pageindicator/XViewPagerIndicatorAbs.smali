.class public abstract Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XViewPagerIndicatorAbs.java"


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field private mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    sget v0, Lcom/xiaopeng/xpui/R$style;->XPagerIndicator:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 53
    sget v0, Lcom/xiaopeng/xpui/R$style;->XPagerIndicator:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    new-instance v0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$1;-><init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 31
    new-instance v0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$2;-><init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    .line 37
    new-instance v0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;-><init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;
    .param p1, "x1"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method private setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 66
    if-nez p1, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->populateData(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 95
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 103
    :goto_0
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 105
    :cond_1
    return-void
.end method

.method protected init()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setOrientation(I)V

    .line 63
    return-void
.end method

.method public abstract populateData(I)V
.end method

.method public abstract select(I)V
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 76
    if-nez p1, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 80
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 81
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 82
    .local v0, "currentItem":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->select(I)V

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 89
    return-void
.end method
