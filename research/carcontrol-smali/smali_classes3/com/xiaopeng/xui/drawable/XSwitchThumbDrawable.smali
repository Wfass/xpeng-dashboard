.class public Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XSwitchThumbDrawable.java"


# static fields
.field private static final DEFAULT_HEIGHT:I = 0x2c

.field private static final DEFAULT_INDICATOR_HEIGHT:I = 0x12

.field private static final DEFAULT_INDICATOR_RADIUS:I = 0x3

.field private static final DEFAULT_INDICATOR_WIDTH:I = 0x6

.field private static final DEFAULT_PADDING:I = 0x4

.field private static final DEFAULT_THUMB_RADIUS:I = 0x7

.field private static final DEFAULT_WIDTH:I = 0x2c

.field private static final INDICATOR_COLOR:I = -0xd85092

.field private static final INDICATOR_DURATION:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "XSwitchThumbDrawable"

.field private static final THUMB_COLOR:I = -0x1


# instance fields
.field private mChecked:Z

.field private mEnableIndicator:Z

.field private mEnabled:Z

.field private mHeight:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorColors:Landroid/content/res/ColorStateList;

.field private mIndicatorPaddingStart:F

.field private mIndicatorPaddingTop:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private mIndicatorRoundRadius:I

.field private mIndicatorStartOffset:F

.field private mIndicatorTopOffset:F

.field private mPadding:F

.field private mThumbColors:Landroid/content/res/ColorStateList;

.field private final mThumbPaint:Landroid/graphics/Paint;

.field private mThumbRoundRadius:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 65
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    .line 55
    iput-boolean v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    .line 56
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnabled:Z

    .line 58
    iput-boolean v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnableIndicator:Z

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    .line 63
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorStartOffset:F

    const/4 v1, -0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, -0xd85092

    .line 68
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnableIndicator:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    return p0
.end method

.method private initAnimator()V
    .locals 4

    .line 108
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingTop:F

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 109
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    .line 110
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$-gy1wv4AgqewfiGYH7_raGMJxtk;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$-gy1wv4AgqewfiGYH7_raGMJxtk;-><init>(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;-><init>(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 146
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mPadding:F

    add-float v5, v2, v3

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mPadding:F

    add-float v6, v2, v3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mPadding:F

    sub-float v7, v2, v3

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mPadding:F

    sub-float v8, v2, v3

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbRoundRadius:I

    int-to-float v9, v2

    int-to-float v10, v2

    iget-object v11, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 149
    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnableIndicator:Z

    if-eqz v2, :cond_0

    .line 151
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingStart:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorStartOffset:F

    add-float v5, v2, v3

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    add-float v6, v2, v3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingStart:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorStartOffset:F

    sub-float v7, v2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingTop:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    sub-float v8, v1, v2

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorRoundRadius:I

    int-to-float v9, v1

    int-to-float v10, v1

    iget-object v11, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 157
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    if-eqz p4, :cond_0

    .line 77
    sget-object p1, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable:[I

    const/4 p2, 0x0

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_0
    sget-object p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    :goto_0
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_width:I

    const/16 p3, 0x2c

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mWidth:I

    .line 82
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_height:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mHeight:I

    .line 83
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_padding:I

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mPadding:F

    .line 84
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_round_radius:I

    const/4 p3, 0x7

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbRoundRadius:I

    .line 85
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_indicator_round_radius:I

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorRoundRadius:I

    .line 87
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_indicator_width:I

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 88
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_indicator_height:I

    const/high16 p4, 0x41900000    # 18.0f

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 89
    iget p4, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mWidth:I

    int-to-float p4, p4

    sub-float/2addr p4, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingStart:F

    .line 90
    iget p4, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mHeight:I

    int-to-float p4, p4

    sub-float/2addr p4, p3

    div-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingTop:F

    .line 92
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_indicator_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorColors:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_1

    const p2, -0xd85092

    .line 94
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorColors:Landroid/content/res/ColorStateList;

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbColors:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_2

    const/4 p2, -0x1

    .line 100
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbColors:Landroid/content/res/ColorStateList;

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->initAnimator()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$initAnimator$0$XSwitchThumbDrawable(FLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 113
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 114
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, v1

    mul-float/2addr p2, p1

    .line 116
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    div-float/2addr p2, v1

    mul-float/2addr p1, p2

    .line 119
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 8

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorColors:Landroid/content/res/ColorStateList;

    const v2, -0xd85092

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbColors:Landroid/content/res/ColorStateList;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_2

    aget v6, p1, v2

    const v7, 0x10100a0

    if-ne v6, v7, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    move v4, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    if-eq p1, v3, :cond_3

    move p1, v5

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    const-string v0, "XSwitchThumbDrawable"

    if-eqz p1, :cond_5

    .line 212
    iput-boolean v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    .line 213
    iput-boolean v5, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnableIndicator:Z

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const-string v6, "onStateChange: checked:"

    if-eqz v2, :cond_4

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ignore animation, bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 218
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", with animation, bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_5

    .line 220
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 221
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 225
    :cond_5
    :goto_3
    iget-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnabled:Z

    if-eq v2, v4, :cond_6

    move v1, v5

    :cond_6
    if-eqz v1, :cond_7

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange: enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput-boolean v4, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnabled:Z

    :cond_7
    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
