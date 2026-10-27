.class public Lcom/xiaopeng/xui/widget/XShadowLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XShadowLayout.java"


# instance fields
.field private final mRect:Landroid/graphics/RectF;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private shadowColor:I

.field private shadowColorId:I

.field private shadowRadius:I

.field private shadowX:I

.field private shadowY:I

.field private shapeRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mShadowPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->setWillNotDraw(Z)V

    .line 45
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XShadowLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 46
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XShadowLayout_radius:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shapeRadius:I

    .line 47
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XShadowLayout_shadow_x:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowX:I

    .line 48
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XShadowLayout_shadow_y:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowY:I

    .line 49
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XShadowLayout_shadow_radius:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowRadius:I

    .line 50
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XShadowLayout_shadow_color:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColorId:I

    .line 51
    iget v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColorId:I

    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColorId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColor:I

    goto :goto_0

    .line 54
    :cond_0
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShadowLayout_shadow_color:I

    const v2, -0x777778

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColor:I

    .line 56
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->updatePaint()V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xui/widget/XShadowLayout$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XShadowLayout$1;-><init>(Lcom/xiaopeng/xui/widget/XShadowLayout;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XShadowLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XShadowLayout;

    .line 17
    iget v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColorId:I

    return v0
.end method

.method private updatePaint()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowRadius:I

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowRadius:I

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    add-float/2addr v2, v3

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 77
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shapeRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shapeRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 132
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 133
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 122
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onLayout(ZIIII)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowX:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowY:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowX:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowY:I

    add-int/2addr v1, p5

    sub-int/2addr v1, p3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 127
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .param p1, "shadowColor"    # I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColorId:I

    .line 88
    iput p1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColor:I

    .line 89
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->updatePaint()V

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->invalidate()V

    .line 91
    return-void
.end method

.method public setShadowColorId(I)V
    .locals 2
    .param p1, "shadowColorId"    # I

    .line 80
    iput p1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColorId:I

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowColor:I

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->updatePaint()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->invalidate()V

    .line 84
    return-void
.end method

.method public setShadowRadius(I)V
    .locals 0
    .param p1, "shadowRadius"    # I

    .line 94
    iput p1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowRadius:I

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->updatePaint()V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->invalidate()V

    .line 97
    return-void
.end method

.method public setShadowX(I)V
    .locals 2
    .param p1, "shadowX"    # I

    .line 100
    iput p1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowX:I

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->updatePaint()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->invalidate()V

    .line 105
    return-void
.end method

.method public setShadowY(I)V
    .locals 2
    .param p1, "shadowY"    # I

    .line 108
    iput p1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shadowY:I

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->getHeight()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->updatePaint()V

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->invalidate()V

    .line 113
    return-void
.end method

.method public setShapeRadius(I)V
    .locals 0
    .param p1, "shapeRadius"    # I

    .line 116
    iput p1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout;->shapeRadius:I

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->invalidate()V

    .line 118
    return-void
.end method
