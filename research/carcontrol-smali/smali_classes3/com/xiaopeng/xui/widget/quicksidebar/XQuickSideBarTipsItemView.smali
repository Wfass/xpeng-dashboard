.class Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;
.super Lcom/xiaopeng/xui/view/XView;
.source "XQuickSideBarTipsItemView.java"


# instance fields
.field private isVisibility:Z

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mItemHeight:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundRect:Landroid/graphics/RectF;

    const-string p3, ""

    .line 25
    iput-object p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    const/4 p3, 0x0

    .line 33
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->isVisibility:Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getColor(I)I
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->initDefaultColor()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_tips_textsize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextSize:F

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextColor:I

    iget v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    .line 54
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarBackgroundColor:I

    iget v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_tips_textsize:I

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/Resources;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p2, :cond_1

    .line 60
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v0, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarTipsItemView$-OFAO0JAIIrntpmQUuq9OIsWACc;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarTipsItemView$-OFAO0JAIIrntpmQUuq9OIsWACc;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 67
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_number_bold:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private initDefaultColor()V
    .locals 1

    .line 124
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_side_bar_tips_text_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    .line 125
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_side_bar_tips_bg_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$XQuickSideBarTipsItemView(Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->getCurrentFontSize(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextSize:F

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->invalidate()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->initDefaultColor()V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 85
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mItemHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 93
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 94
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 96
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    float-to-int v0, v2

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mWidth:I

    .line 81
    iput p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mItemHeight:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    .line 103
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->invalidate()V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->isVisibility:Z

    return-void
.end method
