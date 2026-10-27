.class public Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "MusicTabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;,
        Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$c;,
        Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$h;,
        Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;,
        Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;,
        Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;,
        Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;,
        Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final sTabPool:Lff$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff$a<",
            "Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapterChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;

.field private mContentInsetStart:I

.field private mCurrentVpSelectedListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

.field mMode:I

.field private mPageChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;

.field private mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/widget/c;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private final mScrollableTabMinWidth:I

.field private mSelectedListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

.field private final mSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTab:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

.field private mSetupViewPagerImplicitly:Z

.field final mTabBackgroundResId:I

.field mTabGravity:I

.field mTabMaxWidth:I

.field mTabPaddingBottom:I

.field mTabPaddingEnd:I

.field mTabPaddingStart:I

.field mTabPaddingTop:I

.field private final mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

.field mTabTextAppearance:I

.field mTabTextColors:Landroid/content/res/ColorStateList;

.field mTabTextMultiLineSize:F

.field mTabTextSize:F

.field private final mTabViewPool:Lff$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff$a<",
            "Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 165
    new-instance v0, Lff$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lff$c;-><init>(I)V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->sTabPool:Lff$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    const v0, 0x7fffffff

    .line 265
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabMaxWidth:I

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Lff$b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lff$b;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabViewPool:Lff$a;

    .line 302
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 308
    new-instance v1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;-><init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    .line 309
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 312
    sget-object v1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout:[I

    sget v2, Lcom/xiaopeng/musicradio/common/k$h;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 316
    :try_start_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    sget v1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabIndicatorHeight:I

    .line 317
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 316
    invoke-virtual {p3, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->b(I)V

    .line 318
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    sget v1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabIndicatorColor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->a(I)V

    .line 320
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabPadding:I

    .line 321
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingBottom:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingEnd:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingTop:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingStart:I

    .line 322
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabPaddingStart:I

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingStart:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingStart:I

    .line 324
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabPaddingTop:I

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingTop:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingTop:I

    .line 326
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabPaddingEnd:I

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingEnd:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingEnd:I

    .line 328
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabPaddingBottom:I

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingBottom:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingBottom:I

    .line 331
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabTextAppearance:I

    sget v1, Lcom/xiaopeng/musicradio/common/k$h;->TextAppearance_Design_Tab:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextAppearance:I

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->initTabAttr(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 335
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabMinWidth:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mRequestedTabMinWidth:I

    .line 337
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabMaxWidth:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mRequestedTabMaxWidth:I

    .line 339
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabBackground:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabBackgroundResId:I

    .line 340
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabContentStart:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mContentInsetStart:I

    .line 341
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabMode:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    .line 342
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabGravity:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabGravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 349
    sget p2, Lcom/xiaopeng/musicradio/common/k$c;->design_tab_text_size_2line:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextMultiLineSize:F

    .line 350
    sget p2, Lcom/xiaopeng/musicradio/common/k$c;->design_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollableTabMinWidth:I

    .line 353
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->applyModeAndGravity()V

    return-void

    :catchall_0
    move-exception p1

    .line 344
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    throw p1
.end method

.method private addTabFromItemView(Lcom/xiaopeng/musicradio/widget/viewpager/b;)V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->newTab()Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    move-result-object v0

    .line 499
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/b;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/b;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a(Ljava/lang/CharSequence;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    .line 502
    :cond_0
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/b;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    .line 505
    :cond_1
    iget v1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/b;->c:I

    if-eqz v1, :cond_2

    .line 506
    iget v1, p1, Lcom/xiaopeng/musicradio/widget/viewpager/b;->c:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a(I)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    .line 508
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/b;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 509
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/b;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b(Ljava/lang/CharSequence;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    .line 511
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    return-void
.end method

.method private addTabView(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 3

    .line 966
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    .line 967
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c()I

    move-result p1

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1

    .line 991
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/b;

    if-eqz v0, :cond_0

    .line 992
    check-cast p1, Lcom/xiaopeng/musicradio/widget/viewpager/b;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addTabFromItemView(Lcom/xiaopeng/musicradio/widget/viewpager/b;)V

    return-void

    .line 994
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private animateToTab(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lgj;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    .line 1092
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1099
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getScrollX()I

    move-result v0

    .line 1100
    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1103
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->ensureScrollAnimator()V

    .line 1105
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1110
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->b(II)V

    return-void

    .line 1095
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 3

    .line 1221
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1223
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mContentInsetStart:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabPaddingStart:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1225
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-static {v2, v0, v1, v1, v1}, Lgj;->b(Landroid/view/View;IIII)V

    .line 1227
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->setGravity(I)V

    goto :goto_1

    .line 1232
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->setGravity(I)V

    .line 1236
    :goto_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 3

    .line 1197
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    if-eqz v0, :cond_4

    .line 1198
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1199
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    .line 1200
    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v0, :cond_1

    .line 1203
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 1204
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1207
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v2, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    add-int/2addr v2, v1

    int-to-float v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 1211
    invoke-static {p0}, Lgj;->h(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    add-int/2addr p1, p2

    goto :goto_2

    :cond_3
    sub-int/2addr p1, p2

    :goto_2
    return p1

    :cond_4
    return v1
.end method

.method private configureTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;I)V
    .locals 1

    .line 956
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b(I)V

    .line 957
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 959
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 961
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    .line 2062
    new-array v1, v0, [[I

    .line 2063
    new-array v0, v0, [I

    .line 2066
    sget-object v2, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 2071
    sget-object p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 2075
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 999
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1001
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabViewPool:Lff$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lff$a;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 947
    new-instance v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;-><init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;Landroid/content/Context;)V

    .line 949
    :cond_1
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    const/4 p1, 0x1

    .line 950
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setFocusable(Z)V

    .line 951
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabMinWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->setMinimumWidth(I)V

    return-object v0
.end method

.method private dispatchTabReselected(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;->c(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;->a(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;->b(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/xiaopeng/musicradio/widget/viewpager/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$1;-><init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 2080
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2081
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-eqz v3, :cond_0

    .line 2082
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->d()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x48

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_2
    return v0
.end method

.method private getScrollPosition()F
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->b()F

    move-result v0

    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 2091
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mRequestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2096
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollableTabMinWidth:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 896
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 895
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private initTabAttr(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    .line 358
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextAppearance:I

    sget-object v1, Lcom/xiaopeng/musicradio/common/k$i;->TextAppearance:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 361
    :try_start_0
    sget v0, Lcom/xiaopeng/musicradio/common/k$i;->TextAppearance_android_textSize:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextSize:F

    .line 363
    sget v0, Lcom/xiaopeng/musicradio/common/k$i;->TextAppearance_android_textColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 369
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 371
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 374
    :cond_0
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    sget p1, Lcom/xiaopeng/musicradio/common/k$i;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 379
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 366
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    throw p2
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    .line 1078
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->a()V

    .line 1081
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabViewPool:Lff$a;

    invoke-interface {p1, v0}, Lff$a;->release(Ljava/lang/Object;)Z

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5

    .line 1133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1136
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 1137
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;ZZ)V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    if-eqz v0, :cond_1

    .line 797
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPageChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;

    if-eqz v1, :cond_0

    .line 798
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;)V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mAdapterChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;

    if-eqz v0, :cond_1

    .line 801
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;)V

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mCurrentVpSelectedListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 807
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->removeOnTabSelectedListener(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;)V

    .line 808
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mCurrentVpSelectedListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    :cond_2
    if-eqz p1, :cond_6

    .line 812
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    .line 815
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPageChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;

    if-nez v0, :cond_3

    .line 816
    new-instance v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;-><init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPageChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPageChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->a()V

    .line 819
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPageChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;)V

    .line 822
    new-instance v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$h;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$h;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mCurrentVpSelectedListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    .line 823
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mCurrentVpSelectedListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addOnTabSelectedListener(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;)V

    .line 825
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getAdapter()Lcom/xiaopeng/musicradio/commonui/widget/c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 829
    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setPagerAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;Z)V

    .line 833
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mAdapterChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;

    if-nez v0, :cond_5

    .line 834
    new-instance v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;-><init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mAdapterChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;

    .line 836
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mAdapterChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;->a(Z)V

    .line 837
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mAdapterChangeListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$a;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;)V

    .line 840
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 844
    :cond_6
    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    const/4 p1, 0x0

    .line 845
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setPagerAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;Z)V

    .line 848
    :goto_0
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSetupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 940
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->h()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 1006
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1007
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1008
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 1010
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 1011
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;Z)V

    return-void
.end method

.method public addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;I)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;IZ)V

    return-void
.end method

.method public addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;IZ)V
    .locals 1

    .line 486
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    if-ne v0, p0, :cond_1

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->configureTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;I)V

    .line 490
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addTabView(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    if-eqz p3, :cond_0

    .line 493
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->e()V

    :cond_0
    return-void

    .line 487
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different TabLayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;Z)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 972
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 977
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 987
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 982
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method dpToPx(I)I
    .locals 1

    .line 1016
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedTab:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;
    .locals 1

    if-ltz p1, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 726
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .line 2109
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;
    .locals 2

    .line 574
    sget-object v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->sTabPool:Lff$a;

    invoke-interface {v0}, Lff$a;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;-><init>()V

    .line 578
    :cond_0
    iput-object p0, v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    .line 579
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->createTabView(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 869
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 871
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 875
    instance-of v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    if-eqz v1, :cond_0

    .line 878
    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setupWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 885
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 887
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSetupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setupWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V

    const/4 v0, 0x0

    .line 890
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSetupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1023
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getDefaultHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->dpToPx(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1024
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1027
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1026
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1035
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1036
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1039
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mRequestedTabMaxWidth:I

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x38

    .line 1041
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->dpToPx(I)I

    move-result v1

    sub-int v1, v0, v1

    :goto_1
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabMaxWidth:I

    .line 1045
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1047
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    .line 1050
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1053
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_4

    goto :goto_3

    .line 1061
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getMeasuredWidth()I

    move-result v4

    if-eq v2, v4, :cond_6

    :goto_2
    move p1, v0

    goto :goto_3

    .line 1057
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getMeasuredWidth()I

    move-result v4

    if-ge v2, v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 1067
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getPaddingTop()I

    move-result p1

    .line 1068
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1067
    invoke-static {p2, p1, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getChildMeasureSpec(III)I

    move-result p1

    .line 1070
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getMeasuredWidth()I

    move-result p2

    .line 1069
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1071
    invoke-virtual {v1, p2, p1}, Landroid/view/View;->measure(II)V

    :cond_7
    return-void
.end method

.method populateFromPagerAdapter()V
    .locals 5

    .line 920
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->removeAllTabs()V

    .line 922
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->newTab()Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a(Ljava/lang/CharSequence;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 930
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getCurrentItem()I

    move-result v0

    .line 931
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 932
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabAt(I)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->selectTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    :cond_1
    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 660
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    .line 665
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 666
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->i()V

    .line 667
    sget-object v2, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->sTabPool:Lff$a;

    invoke-interface {v2, v1}, Lff$a;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedTab:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 1

    .line 616
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    if-ne v0, p0, :cond_0

    .line 620
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->removeTabAt(I)V

    return-void

    .line 617
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab does not belong to this TabLayout."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTabAt(I)V
    .locals 5

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedTab:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 631
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->removeTabViewAt(I)V

    .line 633
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-eqz v2, :cond_1

    .line 635
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->i()V

    .line 636
    sget-object v3, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->sTabPool:Lff$a;

    invoke-interface {v3, v2}, Lff$a;->release(Ljava/lang/Object;)Z

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 641
    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_3

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 645
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    .line 649
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->selectTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    :cond_3
    return-void
.end method

.method selectTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V
    .locals 1

    const/4 v0, 0x1

    .line 1143
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->selectTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;Z)V

    return-void
.end method

.method selectTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;Z)V
    .locals 4

    .line 1147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedTab:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 1151
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->dispatchTabReselected(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    .line 1152
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1155
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 1157
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1160
    invoke-virtual {p0, v2, p2, v3}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1162
    :cond_3
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 1165
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setSelectedTabView(I)V

    :cond_4
    if-eqz v0, :cond_5

    .line 1169
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->dispatchTabUnselected(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    .line 1171
    :cond_5
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedTab:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    if-eqz p1, :cond_6

    .line 1173
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->dispatchTabSelected(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->removeOnTabSelectedListener(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;)V

    .line 527
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mSelectedListener:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;

    if-eqz p1, :cond_1

    .line 529
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->addOnTabSelectedListener(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$b;)V

    :cond_1
    return-void
.end method

.method setPagerAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;Z)V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 902
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(Landroid/database/DataSetObserver;)V

    .line 905
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 909
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 910
    new-instance p2, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$c;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$c;-><init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 912
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/database/DataSetObserver;)V

    .line 916
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1128
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->ensureScrollAnimator()V

    .line 1129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 416
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 421
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 422
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 428
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {p4, p1, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->a(IF)V

    .line 432
    :cond_1
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 433
    iget-object p4, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 435
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 439
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setSelectedTabView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->a(I)V

    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->b(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .line 713
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    .line 714
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabGravity:I

    .line 715
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 689
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    .line 690
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mMode:I

    .line 691
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 756
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 736
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 737
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 858
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setPagerAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;Z)V

    return-void
.end method

.method public setupWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 768
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setupWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 790
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setupWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 864
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1240
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1241
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->mTabStrip:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1242
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1243
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1245
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
