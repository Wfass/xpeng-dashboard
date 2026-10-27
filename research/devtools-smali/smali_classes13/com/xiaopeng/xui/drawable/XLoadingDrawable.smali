.class public Lcom/xiaopeng/xui/drawable/XLoadingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XLoadingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/drawable/XLoadingDrawable$Type;
    }
.end annotation


# static fields
.field private static final ALPHA_MAX:I = 0xff

.field private static final ALPHA_MIN:I = 0x5c

.field private static final COUNT_LARGE:I = 0x5

.field private static final COUNT_MEDIUM:I = 0x5

.field private static final COUNT_SMALL:I = 0x3

.field private static final COUNT_XLARGE:I = 0x7

.field private static final DEFAULT_DEGREE:F = 25.0f

.field private static final DEFAULT_DURATION:J = 0x3e8L

.field private static final DEFAULT_MASK_FILTER:F = 2.0f

.field private static final DEFAULT_RADIANS:D

.field private static final DEFAULT_RECT_RADIUS:F = 1.0f

.field private static final MAX_HEIGHT_LARGE:F = 34.0f

.field private static final MAX_HEIGHT_MEDIUM:F = 22.0f

.field private static final MAX_HEIGHT_SMALL:F = 16.0f

.field private static final MAX_HEIGHT_XLARGE:F = 50.0f

.field private static final MIN_HEIGHT_LARGE:F = 12.0f

.field private static final MIN_HEIGHT_MEDIUM:F = 8.0f

.field private static final MIN_HEIGHT_SMALL:F = 4.0f

.field private static final MIN_HEIGHT_XLARGE:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "xpui-XLoadingDrawable"

.field public static final TYPE_LARGE:I = 0x2

.field public static final TYPE_MEDIUM:I = 0x1

.field public static final TYPE_SMALL:I = 0x0

.field public static final TYPE_XLARGE:I = 0x3

.field private static final WIDTH_LARGE:F = 6.0f

.field private static final WIDTH_MEDIUM:F = 4.0f

.field private static final WIDTH_SMALL:F = 4.0f

.field private static final WIDTH_XLARGE:F = 6.0f

.field private static final X_SPACING_LARGE:F = 8.0f

.field private static final X_SPACING_MEDIUM:F = 5.0f

.field private static final X_SPACING_SMALL:F = 5.0f

.field private static final X_SPACING_XLARGE:F = 19.0f


# instance fields
.field private isAmStarted:Z

.field private isDebug:Z

.field private mAlphas:[I

.field private mAnimations:[Landroid/animation/ValueAnimator;

.field private mCenterX:F

.field private mCenterY:F

.field private mColor:I

.field private mColorId:I

.field private mCount:I

.field private mDelayFactor:F

.field private mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaskFilter:Landroid/graphics/MaskFilter;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRectHeights:[F

.field private mRectTopXs:[F

.field private mRectTopYs:[F

.field private mRectWidth:F

.field private mSpacingX:F

.field private maxHeight:F

.field private minHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->DEFAULT_RADIANS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 148
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_text_01:I

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mColorId:I

    .line 135
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 143
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mDuration:J

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isDebug:Z

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 153
    return-void
.end method

.method private initParams()V
    .locals 6

    .line 321
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    if-nez v0, :cond_0

    .line 322
    const-string v0, "xpui-XLoadingDrawable"

    const-string v1, "You must setType or config loading_type first"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    .line 327
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopXs:[F

    .line 328
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 329
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    if-ge v1, v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopXs:[F

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    iget v5, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_1
    return-void
.end method

.method public static synthetic lambda$makeAnimations$0(Lcom/xiaopeng/xui/drawable/XLoadingDrawable;IILandroid/animation/ValueAnimator;)V
    .locals 4

    .line 242
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAlphas:[I

    const/high16 v1, 0x43230000    # 163.0f

    mul-float/2addr v1, p3

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x5c

    aput v1, v0, p1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectHeights:[F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    aput v1, v0, p1

    .line 245
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopYs:[F

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectHeights:[F

    aget v1, v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    int-to-float v1, p2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    sub-float/2addr v1, v2

    sget-wide v2, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->DEFAULT_RADIANS:D

    .line 247
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p3, p1

    .line 249
    if-ne p1, p2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->invalidateSelf()V

    .line 252
    :cond_0
    return-void
.end method

.method private makeAnimations()V
    .locals 5

    .line 229
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 230
    new-array v1, v0, [Landroid/animation/ValueAnimator;

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    .line 231
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectHeights:[F

    .line 232
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopYs:[F

    .line 233
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAlphas:[I

    .line 234
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 235
    nop

    .line 236
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 238
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 239
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    iget-wide v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mDuration:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    aget-object v2, v2, v1

    new-instance v3, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$DpLV3pscnQdWTddtu4oa-Sye8L4;-><init>(Lcom/xiaopeng/xui/drawable/XLoadingDrawable;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setBlurEffect(Landroid/content/res/Resources;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mMaskFilter:Landroid/graphics/MaskFilter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/c/a;->a(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mMaskFilter:Landroid/graphics/MaskFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_2
    :goto_1
    return-void
.end method

.method private startAnimations()V
    .locals 6

    .line 220
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->makeAnimations()V

    .line 221
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mDelayFactor:F

    add-int/lit8 v4, v0, 0x1

    int-to-float v5, v4

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 221
    move v0, v4

    goto :goto_0

    .line 225
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isAmStarted:Z

    .line 226
    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 259
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 260
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isAmStarted:Z

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    .line 266
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->initParams()V

    .line 288
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isAmStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->startAnimations()V

    .line 290
    return-void

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isDebug:Z

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    iget v9, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    const/4 v10, 0x0

    iget v11, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v12, v0

    iget-object v13, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 299
    :cond_1
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 300
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    if-ge v0, v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAlphas:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 303
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopXs:[F

    aget v3, v1, v0

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopYs:[F

    aget v4, v1, v0

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopXs:[F

    aget v1, v1, v0

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    add-float v5, v1, v2

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopYs:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectHeights:[F

    aget v2, v2, v0

    add-float v6, v1, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_2
    return-void
.end method

.method public getDelayFactor()F
    .locals 1

    .line 216
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mDelayFactor:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 357
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
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

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 160
    sget-object p2, Lcom/xiaopeng/xpui/R$styleable;->XLoadingDrawable:[I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 161
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XLoadingDrawable_loading_color:I

    sget v0, Lcom/xiaopeng/xpui/R$color;->x_theme_text_01:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mColorId:I

    .line 162
    iget p3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mColorId:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mColor:I

    .line 163
    sget p3, Lcom/xiaopeng/xpui/R$styleable;->XLoadingDrawable_loading_type:I

    const/4 p4, 0x3

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 164
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setBlurEffect(Landroid/content/res/Resources;)V

    .line 166
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 2

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mColorId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mColor:I

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setBlurEffect(Landroid/content/res/Resources;)V

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->invalidateSelf()V

    .line 272
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 338
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 343
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isDebug:Z

    .line 207
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 211
    iput-wide p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mDuration:J

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->invalidateSelf()V

    .line 213
    return-void
.end method

.method public setType(I)V
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 170
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v2, 0x5

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x40800000    # 4.0f

    packed-switch p1, :pswitch_data_0

    .line 194
    const/4 p1, 0x7

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 195
    iput v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    .line 196
    const/high16 p1, 0x41980000    # 19.0f

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    .line 197
    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    .line 198
    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    goto :goto_0

    .line 186
    :pswitch_0
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 187
    iput v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    .line 188
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    .line 189
    const/high16 p1, 0x42080000    # 34.0f

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    .line 190
    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    .line 191
    goto :goto_0

    .line 179
    :pswitch_1
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 180
    iput v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    .line 181
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    .line 182
    const/high16 p1, 0x41b00000    # 22.0f

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    .line 183
    iput v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    .line 184
    goto :goto_0

    .line 172
    :pswitch_2
    const/4 p1, 0x3

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 173
    iput v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    .line 174
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    .line 175
    const/high16 p1, 0x41800000    # 16.0f

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    .line 176
    iput v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    .line 177
    nop

    .line 201
    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mDelayFactor:F

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->invalidateSelf()V

    .line 203
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVisible(ZZ)Z
    .locals 0

    .line 276
    if-nez p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 279
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method
