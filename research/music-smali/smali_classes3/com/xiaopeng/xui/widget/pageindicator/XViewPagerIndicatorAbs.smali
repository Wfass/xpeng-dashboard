.class public abstract Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XViewPagerIndicatorAbs.java"


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$e;

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

.field private mPagerAdapter:Landroidx/viewpager/widget/a;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    sget v0, Lbyg$m;->XPagerIndicator:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 53
    sget v0, Lbyg$m;->XPagerIndicator:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    new-instance p1, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$1;-><init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 31
    new-instance p1, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$2;-><init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$e;

    .line 37
    new-instance p1, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;-><init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)Landroidx/viewpager/widget/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/a;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;Landroidx/viewpager/widget/a;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setAdapter(Landroidx/viewpager/widget/a;)V

    return-void
.end method

.method private setAdapter(Landroidx/viewpager/widget/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/a;

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/a;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/a;->a(Landroid/database/DataSetObserver;)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->populateData(I)V

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
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$e;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 95
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/a;->b(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mPagerAdapter:Landroidx/viewpager/widget/a;

    :cond_1
    return-void
.end method

.method protected init()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setOrientation(I)V

    return-void
.end method

.method public abstract populateData(I)V
.end method

.method public abstract select(I)V
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 80
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 81
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->select(I)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$e;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnAdapterChangeListener:Landroidx/viewpager/widget/ViewPager$e;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$e;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    return-void
.end method
