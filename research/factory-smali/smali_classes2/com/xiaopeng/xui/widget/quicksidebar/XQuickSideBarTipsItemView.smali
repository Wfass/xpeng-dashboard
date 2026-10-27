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
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundRect:Landroid/graphics/RectF;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->isVisibility:Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private getColor(I)I
    .locals 2
    .param p1, "resourceId"    # I

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->initDefaultColor()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_tips_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextSize:F

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarTextColor:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    .line 54
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XQuickSideBarView_sidebarBackgroundColor:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_sidebar_tips_textsize:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->create(Landroid/content/res/Resources;I)Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    move-result-object v0

    .line 59
    .local v0, "xFontScaleHelper":Lcom/xiaopeng/xui/view/font/XFontScaleHelper;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    new-instance v2, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarTipsItemView$51XFEO-0GO0VEvoNZW-VFGL4eW4;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xui/widget/quicksidebar/-$$Lambda$XQuickSideBarTipsItemView$51XFEO-0GO0VEvoNZW-VFGL4eW4;-><init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->setFontScaleChangeCallback(Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;)V

    .line 67
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_number_bold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 75
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

    .line 126
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 2
    .param p1, "xFontScaleHelper"    # Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/view/font/XFontScaleHelper;->getCurrentFontSize(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextSize:F

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->invalidate()V

    .line 64
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 114
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->initDefaultColor()V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->invalidate()V

    .line 121
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

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
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 94
    .local v1, "top":F
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 96
    .local v2, "bottom":F
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x41000000    # 8.0f

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 97
    .local v3, "baseLineY":I
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    int-to-float v6, v3

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 79
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mWidth:I

    .line 81
    iget v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mWidth:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mItemHeight:I

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->invalidate()V

    .line 106
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsItemView;->isVisibility:Z

    .line 110
    return-void
.end method
