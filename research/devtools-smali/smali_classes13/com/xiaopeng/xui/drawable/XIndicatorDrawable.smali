.class public final Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XIndicatorDrawable.java"


# static fields
.field private static final INDICATOR_TYPE_LINE:I = 0x1

.field private static final INDICATOR_TYPE_RECT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimIndicatorEnd:F

.field private mAnimIndicatorStart:F

.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mCurrentSelection:I

.field private mDefaultColor:I

.field private mEnable:Z

.field private mIndicatorColorRes:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private mIndicatorCount:I

.field private mIndicatorEnd:F

.field private mIndicatorEndAnimSpeed:F

.field private mIndicatorHeight:F

.field private mIndicatorPaddingBottom:F

.field private mIndicatorPercent:F

.field private mIndicatorRadius:F

.field private final mIndicatorRect:Landroid/graphics/RectF;

.field private mIndicatorStart:F

.field private mIndicatorStartAnimSpeed:F

.field private mIndicatorType:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mEnable:Z

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XIndicatorDrawable$RF3IRyape-IxJ1hs8nfgdCdiWyU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XIndicatorDrawable$RF3IRyape-IxJ1hs8nfgdCdiWyU;-><init>(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;-><init>(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    return p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    return p0
.end method

.method private dp(Landroid/content/res/Resources;I)F
    .locals 1

    .line 308
    int-to-float p2, p2

    .line 309
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 308
    const/4 v0, 0x1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 66
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 70
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    mul-float/2addr v0, p1

    .line 71
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 72
    nop

    .line 74
    move v0, v1

    :cond_0
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    .line 75
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndAnimSpeed:F

    mul-float/2addr p1, v0

    .line 76
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 77
    nop

    .line 79
    move p1, v1

    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->invalidateSelf()V

    .line 81
    return-void
.end method

.method private setPaintColor()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 150
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mEnable:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->getState()[I

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mDefaultColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mDefaultColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    :cond_1
    :goto_0
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .line 249
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 250
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    .line 251
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndAnimSpeed:F

    goto :goto_0

    .line 252
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 253
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    .line 254
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndAnimSpeed:F

    goto :goto_0

    .line 256
    :cond_1
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    .line 257
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndAnimSpeed:F

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 260
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 130
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRadius:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRadius:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 204
    return-void
.end method

.method public inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 263
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 265
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 266
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSegmented:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 269
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSegmented:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 271
    :goto_0
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_indicator_color:I

    sget v2, Lcom/xiaopeng/xpui/R$color;->x_segment_indicator_color:I

    .line 272
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorColorRes:I

    .line 274
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_indicator_type:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    .line 276
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->onConfigurationChanged(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 278
    iget p3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 279
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_line_width_percent:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPercent:F

    .line 281
    const/4 p3, 0x4

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->dp(Landroid/content/res/Resources;I)F

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorHeight:F

    .line 282
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_line_padding_bottom:I

    const/4 v1, 0x6

    .line 284
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->dp(Landroid/content/res/Resources;I)F

    move-result p1

    .line 283
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPaddingBottom:F

    .line 285
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPercent:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 286
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPercent:F

    .line 289
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    :cond_2
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 110
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPaddingBottom:F

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorHeight:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRadius:F

    .line 121
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setSelection(IIZ)V

    .line 122
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 294
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorColorRes:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 295
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_segment_indicator_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mDefaultColor:I

    .line 296
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setPaintColor()V

    .line 297
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xui/c/a;->a(Landroid/content/res/Configuration;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 299
    new-instance p2, Landroid/graphics/BlurMaskFilter;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->dp(Landroid/content/res/Resources;I)F

    move-result p1

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p2, p1, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_0

    .line 302
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->invalidateSelf()V

    .line 305
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setPaintColor()V

    .line 143
    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 169
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mEnable:Z

    if-eq p1, v0, :cond_0

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mEnable:Z

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setPaintColor()V

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->invalidateSelf()V

    .line 164
    :cond_0
    return-void
.end method

.method public setSelection(IIZ)V
    .locals 1

    .line 207
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    .line 208
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 210
    iget p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    if-le p2, v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-lez p2, :cond_5

    .line 211
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 212
    iget-object p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    .line 215
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    int-to-float p2, p2

    div-float p2, p1, p2

    .line 218
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    .line 219
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    .line 220
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 221
    const/high16 p1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPercent:F

    sub-float/2addr p1, v0

    mul-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    .line 222
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    .line 223
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    .line 231
    :cond_2
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    iget p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    .line 232
    return-void

    .line 234
    :cond_3
    if-eqz p3, :cond_4

    .line 235
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->startAnimation()V

    goto :goto_0

    .line 237
    :cond_4
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    .line 238
    iget p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->invalidateSelf()V

    .line 246
    :cond_5
    :goto_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    .line 188
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method
