.class public final Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XIndicatorDrawable.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;
    }
.end annotation


# static fields
.field private static final HOR_ORIENTATION:I = 0x0

.field private static final INDICATOR_TYPE_LINE:I = 0x1

.field private static final INDICATOR_TYPE_RECT:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final VER_ORIENTATION:I = 0x1


# instance fields
.field private mAnimIndicatorBottom:F

.field private mAnimIndicatorEnd:F

.field private mAnimIndicatorStart:F

.field private mAnimIndicatorTop:F

.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mCurrentSelection:I

.field private mDefaultColor:I

.field private mEnable:Z

.field private mIndicatorAnimSpeed:F

.field private mIndicatorBottom:F

.field private mIndicatorBottomAnimSpeed:F

.field private mIndicatorBottomDistance:F

.field private mIndicatorColorRes:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private mIndicatorCount:I

.field private mIndicatorEnd:F

.field private mIndicatorEndAnimSpeed:F

.field private mIndicatorEndDistance:F

.field private mIndicatorHeight:F

.field private mIndicatorPadding:F

.field private mIndicatorPaddingBottom:F

.field private mIndicatorPercent:F

.field private mIndicatorRadius:F

.field private final mIndicatorRect:Landroid/graphics/RectF;

.field private mIndicatorStart:F

.field private mIndicatorStartAnimSpeed:F

.field private mIndicatorStartDistance:F

.field private mIndicatorTop:F

.field private mIndicatorTopDistance:F

.field private mIndicatorType:I

.field private mIsHorOrientation:Z

.field private mOnAnimationListener:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;

.field private mOrientation:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mSecondIndicatorEnd:F

.field private mSecondIndicatorEndAnimSpeed:F

.field private mSecondIndicatorStart:F

.field private mStrokePaint:Landroid/graphics/Paint;

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 85
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottomAnimSpeed:F

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mEnable:Z

    .line 86
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    .line 91
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 92
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/xiaopeng/xui/view/animation/XBesselCurve3Interpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/-$$Lambda$XIndicatorDrawable$RF3IRyape-IxJ1hs8nfgdCdiWyU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XIndicatorDrawable$RF3IRyape-IxJ1hs8nfgdCdiWyU;-><init>(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;-><init>(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mOnAnimationListener:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;
    .param p1, "x1"    # F

    .line 39
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 39
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    return v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;
    .param p1, "x1"    # F

    .line 39
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 39
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;
    .param p1, "x1"    # F

    .line 39
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 39
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTop:F

    return v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;
    .param p1, "x1"    # F

    .line 39
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 39
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottom:F

    return v0
.end method

.method private dp(Landroid/content/res/Resources;I)F
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .line 424
    int-to-float v0, p2

    .line 425
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 424
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 97
    .local v0, "value":F
    sget-object v1, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XSegmented :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mIndicatorStartAnimSpeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mIndicatorEndAnimSpeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndAnimSpeed:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move v1, v0

    .line 102
    .local v1, "progress":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 103
    const/high16 v1, 0x3f800000    # 1.0f

    .line 105
    :cond_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    const-wide/16 v4, 0x6e

    if-eqz v3, :cond_3

    .line 106
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    :goto_0
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartDistance:F

    sub-float v5, v2, v1

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    .line 114
    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    .line 115
    const/high16 v1, 0x3f800000    # 1.0f

    .line 117
    :cond_2
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndDistance:F

    sub-float/2addr v2, v1

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    goto :goto_2

    .line 119
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 122
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 124
    :goto_1
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTopDistance:F

    sub-float v5, v2, v1

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTop:F

    .line 126
    cmpl-float v3, v1, v2

    if-lez v3, :cond_5

    .line 127
    const/high16 v1, 0x3f800000    # 1.0f

    .line 129
    :cond_5
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottomDistance:F

    sub-float/2addr v2, v1

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottom:F

    .line 131
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->invalidateSelf()V

    .line 132
    return-void
.end method

.method private setPaintColor()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 223
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mEnable:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->getState()[I

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mDefaultColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mDefaultColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    :cond_1
    :goto_0
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .line 352
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

    .line 353
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    .line 354
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndAnimSpeed:F

    goto :goto_0

    .line 355
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 356
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    .line 357
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndAnimSpeed:F

    goto :goto_0

    .line 359
    :cond_1
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    .line 360
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndAnimSpeed:F

    .line 362
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    if-nez v0, :cond_2

    .line 363
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartAnimSpeed:F

    .line 365
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStartDistance:F

    .line 366
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEndDistance:F

    .line 367
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTop:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTopDistance:F

    .line 368
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottomDistance:F

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 370
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 194
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRadius:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRadius:F

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 210
    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 269
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
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

    .line 275
    invoke-virtual {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 277
    return-void
.end method

.method public inflateAttrs(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 373
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_segment_stroke:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 377
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSegmented:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "typedArray":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 380
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSegmented:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 382
    .restart local v1    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_orientation:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mOrientation:I

    .line 383
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mOrientation:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    .line 384
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_indicator_color:I

    sget v4, Lcom/xiaopeng/xpui/R$color;->x_segment_indicator_color:I

    .line 385
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorColorRes:I

    .line 387
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_indicator_type:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    .line 389
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->onConfigurationChanged(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 391
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    if-ne v0, v3, :cond_2

    .line 392
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_line_width_percent:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPercent:F

    .line 394
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->dp(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorHeight:F

    .line 395
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_line_padding_bottom:I

    const/4 v3, 0x6

    .line 397
    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->dp(Landroid/content/res/Resources;I)F

    move-result v3

    .line 396
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPaddingBottom:F

    .line 398
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPercent:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 399
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPercent:F

    goto :goto_2

    .line 402
    :cond_2
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSegmented_segment_indicator_padding:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    .line 404
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 406
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_4
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 166
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 167
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRadius:F

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPaddingBottom:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorHeight:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 172
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->dp(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRadius:F

    goto :goto_0

    .line 175
    :cond_1
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRadius:F

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 183
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setSelection(IIZ)V

    .line 184
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 409
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorColorRes:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 410
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_segment_indicator_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mDefaultColor:I

    .line 411
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setPaintColor()V

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_segment_stroke:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 413
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 415
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->dp(Landroid/content/res/Resources;I)F

    move-result v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_0

    .line 418
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 420
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->invalidateSelf()V

    .line 421
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 214
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 215
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setPaintColor()V

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 242
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 247
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 232
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mEnable:Z

    if-eq p1, v0, :cond_0

    .line 233
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mEnable:Z

    .line 234
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->setPaintColor()V

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->invalidateSelf()V

    .line 237
    :cond_0
    return-void
.end method

.method public setOnAnimationListener(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;)V
    .locals 0
    .param p1, "onAnimationListener"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;

    .line 431
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mOnAnimationListener:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;

    .line 432
    return-void
.end method

.method public setOrientation(Z)V
    .locals 0
    .param p1, "isHorOrientation"    # Z

    .line 435
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    .line 436
    return-void
.end method

.method public setSelection(IIZ)V
    .locals 7
    .param p1, "indicatorCount"    # I
    .param p2, "selection"    # I
    .param p3, "animation"    # Z

    .line 280
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    .line 281
    iput p2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 283
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    if-le v1, v2, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_b

    .line 284
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 288
    .local v1, "segmentLength":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 289
    .local v2, "segmentHigh":F
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    if-eqz v3, :cond_2

    .line 290
    iget-boolean v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    int-to-float v4, v4

    div-float v1, v3, v4

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 296
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 298
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorCount:I

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    .line 299
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    sub-float/2addr v3, v1

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    goto :goto_1

    .line 301
    :cond_3
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    .line 302
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    add-float/2addr v3, v1

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    mul-float/2addr v6, v5

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    .line 304
    :goto_1
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    .line 305
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    sub-float v3, v2, v3

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    goto :goto_2

    .line 307
    :cond_4
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mCurrentSelection:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    .line 308
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    add-float/2addr v3, v2

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    mul-float/2addr v6, v5

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    .line 309
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    .line 310
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPadding:F

    sub-float v3, v1, v3

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    .line 312
    :goto_2
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorType:I

    if-ne v3, v4, :cond_5

    .line 313
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPercent:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    div-float/2addr v3, v5

    .line 314
    .local v3, "padding":F
    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    add-float/2addr v4, v3

    iput v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    .line 315
    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    .line 316
    iget-boolean v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    if-eqz v4, :cond_5

    .line 317
    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorPaddingBottom:F

    sub-float v4, v2, v4

    iput v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    .line 318
    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    iget v5, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorHeight:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    .line 321
    .end local v3    # "padding":F
    :cond_5
    iget-boolean v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    .line 322
    if-nez p3, :cond_6

    .line 323
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTop:F

    .line 324
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottom:F

    .line 326
    :cond_6
    return-void

    .line 328
    :cond_7
    iget-boolean v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIsHorOrientation:Z

    if-nez v3, :cond_9

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTop:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottom:F

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    .line 329
    if-nez p3, :cond_8

    .line 330
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    .line 331
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    .line 333
    :cond_8
    return-void

    .line 335
    :cond_9
    if-eqz p3, :cond_a

    .line 336
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->startAnimation()V

    goto :goto_3

    .line 338
    :cond_a
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorTop:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorTop:F

    .line 339
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorBottom:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorBottom:F

    .line 340
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorStart:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorStart:F

    .line 341
    iget v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mAnimIndicatorEnd:F

    iput v3, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->mIndicatorEnd:F

    .line 342
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->invalidateSelf()V

    .line 349
    .end local v1    # "segmentLength":F
    .end local v2    # "segmentHigh":F
    :cond_b
    :goto_3
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 261
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
