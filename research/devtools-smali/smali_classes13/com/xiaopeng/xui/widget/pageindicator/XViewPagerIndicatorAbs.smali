.class public abstract Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XViewPagerIndicatorAbs.java"


# instance fields
.field private aiY:Landroidx/viewpager/widget/ViewPager;

.field private aiZ:Landroidx/viewpager/widget/PagerAdapter;

.field private aja:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

.field private ajb:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field private mDataSetObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
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
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    sget v0, Lcom/xiaopeng/xpui/R$style;->XPagerIndicator:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
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

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->aja:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    .line 37
    new-instance p1, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs$3;-><init>(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->ajb:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->init()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->aiZ:Landroidx/viewpager/widget/PagerAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method private setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 66
    if-nez p1, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->aiZ:Landroidx/viewpager/widget/PagerAdapter;

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->aiZ:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->aiZ:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->eU(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public abstract eU(I)V
.end method

.method public abstract eV(I)V
.end method

.method protected init()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setOrientation(I)V

    .line 63
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 76
    if-nez p1, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->aiY:Landroidx/viewpager/widget/ViewPager;

    .line 80
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 81
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 82
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->eV(I)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->aja:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->aja:Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->ajb:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/pageindicator/XViewPagerIndicatorAbs;->ajb:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 89
    return-void
.end method
