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
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    .line 56
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnabled:Z

    .line 58
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnableIndicator:Z

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    .line 63
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorStartOffset:F

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    const v1, -0xd85092

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnableIndicator:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    .line 29
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    return v0
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

    .line 109
    .local v0, "offsetStart":F
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$_8TGbMiDSEHt9T8cU-EIc9is2Zs;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XSwitchThumbDrawable$_8TGbMiDSEHt9T8cU-EIc9is2Zs;-><init>(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;-><init>(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public static synthetic lambda$initAnimator$0(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;FLandroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "offsetStart"    # F
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 113
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    .local v0, "current":I
    iget-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_0

    .line 116
    int-to-float v1, v0

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    goto :goto_0

    .line 119
    :cond_0
    int-to-float v1, v0

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->invalidateSelf()V

    .line 122
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 143
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 146
    .local v1, "bounds":Landroid/graphics/Rect;
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

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbRoundRadius:I

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

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingTop:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorTopOffset:F

    sub-float v8, v2, v3

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorRoundRadius:I

    int-to-float v9, v2

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorRoundRadius:I

    int-to-float v10, v2

    iget-object v11, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 157
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 158
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

    .line 173
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "r"    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 76
    if-eqz p4, :cond_0

    .line 77
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable:[I

    const/4 v1, 0x0

    invoke-virtual {p4, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 79
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .restart local v0    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_width:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mWidth:I

    .line 82
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mHeight:I

    .line 83
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_padding:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mPadding:F

    .line 84
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_round_radius:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbRoundRadius:I

    .line 85
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_indicator_round_radius:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorRoundRadius:I

    .line 87
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_indicator_width:I

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 88
    .local v1, "indicatorWidth":F
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_indicator_height:I

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 89
    .local v2, "indicatorHeight":F
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingStart:F

    .line 90
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaddingTop:F

    .line 92
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_indicator_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorColors:Landroid/content/res/ColorStateList;

    .line 93
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorColors:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_1

    .line 94
    const v3, -0xd85092

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorColors:Landroid/content/res/ColorStateList;

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSwitchThumbDrawable_switch_thumb_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbColors:Landroid/content/res/ColorStateList;

    .line 99
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbColors:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_2

    .line 100
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbColors:Landroid/content/res/ColorStateList;

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->initAnimator()V

    .line 105
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 178
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 179
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 8
    .param p1, "state"    # [I

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

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "checked":Z
    const/4 v1, 0x0

    .line 203
    .local v1, "enabled":Z
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v1

    move v1, v0

    move v0, v3

    .end local v0    # "checked":Z
    .local v1, "checked":Z
    .local v4, "enabled":Z
    :goto_0
    if-ge v0, v2, :cond_2

    aget v5, p1, v0

    .line 204
    .local v5, "s":I
    const v6, 0x10100a0

    if-ne v5, v6, :cond_0

    .line 205
    const/4 v1, 0x1

    goto :goto_1

    .line 206
    :cond_0
    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    .line 207
    const/4 v4, 0x1

    .line 203
    .end local v5    # "s":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    .line 211
    .local v0, "checkChanged":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 212
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mChecked:Z

    .line 213
    iput-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnableIndicator:Z

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 216
    const-string v5, "XSwitchThumbDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStateChange: checked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", ignore animation, bounds:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 218
    :cond_4
    const-string v5, "XSwitchThumbDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStateChange: checked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", with animation, bounds:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_5

    .line 220
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 221
    iget-object v5, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 225
    :cond_5
    :goto_3
    iget-boolean v5, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnabled:Z

    if-eq v5, v4, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    .line 226
    .local v2, "enableChanged":Z
    :goto_4
    if-eqz v2, :cond_7

    .line 227
    const-string v3, "XSwitchThumbDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange: enabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput-boolean v4, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mEnabled:Z

    .line 230
    :cond_7
    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 169
    return-void
.end method
