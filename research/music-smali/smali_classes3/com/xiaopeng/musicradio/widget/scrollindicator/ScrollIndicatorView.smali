.class public Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/scrollindicator/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;,
        Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;
    }
.end annotation


# instance fields
.field private customShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private dataSetObserver:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

.field private defaultShadowPaint:Landroid/graphics/Paint;

.field private fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

.field private isPinnedTabView:Z

.field private mActionDownHappened:Z

.field private mTabSelector:Ljava/lang/Runnable;

.field private pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

.field private pinnedTabView:Landroid/view/View;

.field private positionOffset:F

.field private final proxyOnItemSelectListener:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;

.field private shadowWidth:I

.field private state:I

.field private unScrollPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->isPinnedTabView:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    .line 33
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->state:I

    .line 140
    new-instance v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;-><init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->dataSetObserver:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

    const/4 v1, -0x1

    .line 272
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->unScrollPosition:I

    .line 38
    new-instance v2, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-direct {v2, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 43
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    .line 44
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    const v1, 0x33aaaaaa

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40400000    # 3.0f

    .line 46
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->dipToPix(F)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->shadowWidth:I

    .line 47
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->shadowWidth:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v1, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 48
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p2, v1, :cond_0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    new-instance p2, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;

    invoke-direct {p2, p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;-><init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->proxyOnItemSelectListener:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setOnItemSelectListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->state:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->animateToTab(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->positionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->isPinnedTabView:Z

    return p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    return-object p1
.end method

.method private animateToTab(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;-><init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private dipToPix(F)I
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private drawScrollBar(Landroid/graphics/Canvas;)V
    .locals 8

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getScrollBar()Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_2

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 401
    sget-object v2, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$3;->a:[I

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b()Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getHeight()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getHeight()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v4

    .line 416
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b(I)I

    move-result v3

    .line 417
    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a(I)I

    move-result v6

    .line 418
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/view/View;->measure(II)V

    .line 419
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5, v5, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 421
    iget-object v7, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/2addr v7, v4

    int-to-float v4, v7

    int-to-float v2, v2

    .line 423
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    invoke-virtual {p1, v5, v5, v3, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 425
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 427
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 354
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 355
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->isPinnedTabView:Z

    if-eqz v0, :cond_4

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getScrollX()I

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 361
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 364
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getScrollBar()Lcom/xiaopeng/musicradio/widget/scrollindicator/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b()Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->CENTENT_BACKGROUND:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    if-ne v3, v4, :cond_1

    .line 370
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->drawScrollBar(Landroid/graphics/Canvas;)V

    .line 372
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_2

    .line 373
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c;->b()Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    move-result-object v0

    sget-object v3, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->CENTENT_BACKGROUND:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    if-eq v0, v3, :cond_2

    .line 374
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->drawScrollBar(Landroid/graphics/Canvas;)V

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 379
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    .line 381
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->customShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 382
    iget v4, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->shadowWidth:I

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->customShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 385
    :cond_3
    iget v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->shadowWidth:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->dipToPix(F)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p1, v2, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 386
    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->dipToPix(F)I

    move-result v2

    int-to-float v8, v2

    int-to-float v9, v0

    iget-object v10, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 389
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 252
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->isPinnedTabView:Z

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 255
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    .line 256
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 258
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mActionDownHappened:Z

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 260
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mActionDownHappened:Z

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 262
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->invalidate(Landroid/graphics/Rect;)V

    .line 263
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mActionDownHappened:Z

    :cond_1
    :goto_0
    return v1

    .line 269
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicatorAdapter()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getIndicatorAdapter()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    move-result-object v0

    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOnIndicatorItemClickListener()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getOnIndicatorItemClickListener()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->proxyOnItemSelectListener:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;->a()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    move-result-object v0

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getOnTransitionListener()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    move-result-object v0

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public isItemClickable()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a()Z

    move-result v0

    return v0
.end method

.method public isSplitAuto()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->c()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 187
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 188
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->unScrollPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 189
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p3, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->smoothScrollTo(II)V

    .line 194
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->unScrollPosition:I

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 325
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->state:I

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 311
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->positionOffset:F

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    mul-float/2addr v1, p2

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->scrollTo(II)V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a(IFI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->animateToTab(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->dataSetObserver:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setAdapter(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->dataSetObserver:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->a(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->dataSetObserver:Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;->a()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 234
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->unScrollPosition:I

    .line 235
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->state:I

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 237
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->animateToTab(I)V

    goto :goto_1

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 241
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->scrollTo(II)V

    .line 242
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->unScrollPosition:I

    .line 247
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a(IZ)V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setItemClickable(Z)V

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setOnIndicatorItemClickListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;)V

    return-void
.end method

.method public setOnItemSelectListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->proxyOnItemSelectListener:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$a;->a(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;)V

    return-void
.end method

.method public setOnTransitionListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setOnTransitionListener(Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;)V

    return-void
.end method

.method public setPinnedShadow(II)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setPinnedShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setPinnedShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->customShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->shadowWidth:I

    .line 118
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    return-void
.end method

.method public setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    return-void
.end method

.method public setPinnedTabBgColor(I)V
    .locals 1

    .line 127
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPinnedTabBgId(I)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPinnedTabView(Z)V
    .locals 1

    .line 106
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->isPinnedTabView:Z

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    .line 112
    :cond_0
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    return-void
.end method

.method public setScrollBar(Lcom/xiaopeng/musicradio/widget/scrollindicator/c;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setScrollBar(Lcom/xiaopeng/musicradio/widget/scrollindicator/c;)V

    return-void
.end method

.method public setSplitAuto(Z)V
    .locals 1

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setFillViewport(Z)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a(Z)V

    return-void
.end method
