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

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    .line 116
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

    const-wide/16 v0, 0x3e8

    .line 143
    iput-wide v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mDuration:J

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isDebug:Z

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-void
.end method

.method private initParams()V
    .locals 6

    .line 323
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "xpui-XLoadingDrawable"

    const-string v1, "You must setType or config loading_type first"

    .line 324
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    .line 328
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    .line 329
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopXs:[F

    .line 330
    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    int-to-float v3, v0

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/4 v0, 0x0

    .line 331
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    if-ge v0, v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopXs:[F

    int-to-float v3, v0

    iget v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    iget v5, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

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

    new-instance v3, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$7JxianTfjXpK-B_79kQgsAEg0T8;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaopeng/xui/drawable/-$$Lambda$XLoadingDrawable$7JxianTfjXpK-B_79kQgsAEg0T8;-><init>(Lcom/xiaopeng/xui/drawable/XLoadingDrawable;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setBlurEffect(Landroid/content/res/Resources;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mMaskFilter:Landroid/graphics/MaskFilter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNight(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mMaskFilter:Landroid/graphics/MaskFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_2
    :goto_0
    return-void
.end method

.method private startAnimations()V
    .locals 6

    .line 220
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->makeAnimations()V

    const/4 v0, 0x0

    .line 221
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

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isAmStarted:Z

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
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 259
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 260
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isAmStarted:Z

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAnimations:[Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 285
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->initParams()V

    .line 287
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isAmStarted:Z

    if-nez v0, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->startAnimations()V

    return-void

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isDebug:Z

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    .line 298
    iget v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 299
    iget v11, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v12, v0

    iget-object v13, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    move v9, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    const/high16 v0, 0x41c80000    # 25.0f

    .line 301
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterX:F

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v0, 0x0

    .line 302
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    if-ge v0, v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mAlphas:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 305
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopXs:[F

    aget v3, v1, v0

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopYs:[F

    aget v4, v2, v0

    aget v1, v1, v0

    iget v5, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    add-float/2addr v5, v1

    aget v1, v2, v0

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectHeights:[F

    aget v2, v2, v0

    add-float v6, v1, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
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

    .line 354
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

    .line 349
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

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
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

    return-void
.end method

.method public synthetic lambda$makeAnimations$0$XLoadingDrawable(IILandroid/animation/ValueAnimator;)V
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

    sub-float/2addr v2, v1

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    aput v1, v0, p1

    .line 245
    iget-object p3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectTopYs:[F

    iget v1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCenterY:F

    aget v0, v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    add-int/lit8 p2, p2, -0x1

    int-to-float v0, p2

    mul-float/2addr v0, v2

    int-to-float v2, p1

    sub-float/2addr v0, v2

    sget-wide v2, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->DEFAULT_RADIANS:D

    .line 247
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    iget v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    aput v1, p3, p1

    if-ne p1, p2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->invalidateSelf()V

    :cond_0
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

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->isDebug:Z

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

    return-void
.end method

.method public setType(I)V
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    const/high16 v0, 0x40a00000    # 5.0f

    const/4 v1, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz p1, :cond_2

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v4, 0x5

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    const/high16 v2, 0x40c00000    # 6.0f

    if-eq p1, v0, :cond_0

    const/4 p1, 0x7

    .line 194
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 195
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    const/high16 p1, 0x41980000    # 19.0f

    .line 196
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 197
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 198
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    goto :goto_0

    .line 186
    :cond_0
    iput v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 187
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    .line 188
    iput v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    const/high16 p1, 0x42080000    # 34.0f

    .line 189
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    const/high16 p1, 0x41400000    # 12.0f

    .line 190
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    goto :goto_0

    .line 179
    :cond_1
    iput v4, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 180
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    .line 181
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    const/high16 p1, 0x41b00000    # 22.0f

    .line 182
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    .line 183
    iput v3, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 172
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    .line 173
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mRectWidth:F

    .line 174
    iput v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mSpacingX:F

    const/high16 p1, 0x41800000    # 16.0f

    .line 175
    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->maxHeight:F

    .line 176
    iput v2, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->minHeight:F

    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 201
    iget v0, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mCount:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->mDelayFactor:F

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    if-nez p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    .line 279
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method
