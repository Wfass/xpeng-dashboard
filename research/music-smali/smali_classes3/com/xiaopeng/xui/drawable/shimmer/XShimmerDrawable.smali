.class public Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "XShimmerDrawable.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

.field private final mDrawRect:Landroid/graphics/Rect;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

.field private final mShimmerPaint:Landroid/graphics/Paint;

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    new-instance v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable$1;-><init>(Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private offset(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method private saveShimmerBuilder(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    return-void
.end method

.method private updateShader()V
    .locals 19

    move-object/from16 v0, p0

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 256
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 257
    iget-object v3, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 260
    :cond_0
    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->width(I)I

    move-result v2

    .line 261
    iget-object v3, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->height(I)I

    move-result v1

    .line 264
    iget-object v3, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v3, v3, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->shape:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    .line 267
    iget-object v3, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v3, v3, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    iget-object v3, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v3, v3, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    move v2, v5

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v5

    .line 272
    :goto_1
    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v2

    int-to-float v7, v1

    iget-object v1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v8, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->colors:[I

    iget-object v1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v9, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_2

    .line 277
    :cond_5
    new-instance v3, Landroid/graphics/RadialGradient;

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v13, v4, v5

    int-to-float v4, v1

    div-float v14, v4, v5

    .line 281
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v1, v4

    double-to-float v15, v1

    iget-object v1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->colors:[I

    iget-object v2, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v2, v2, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 288
    :goto_2
    iget-object v1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_6
    :goto_3
    return-void
.end method

.method private updateValueAnimator()V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    .line 236
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    .line 242
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-wide v4, v4, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatDelay:J

    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-wide v6, v6, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->animationDuration:J

    div-long/2addr v4, v6

    long-to-float v4, v4

    add-float/2addr v4, v3

    aput v4, v2, v1

    .line 243
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 244
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v2, v2, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatMode:I

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v2, v2, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatCount:I

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 246
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-wide v2, v2, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->animationDuration:J

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-wide v4, v4, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatDelay:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v0, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->tilt:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 110
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 114
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v4, v4, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    neg-float v1, v2

    .line 117
    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->offset(FFF)F

    move-result v0

    goto :goto_2

    :cond_2
    neg-float v2, v1

    .line 130
    invoke-direct {p0, v1, v2, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->offset(FFF)F

    move-result v0

    goto :goto_1

    :cond_3
    neg-float v1, v2

    .line 121
    invoke-direct {p0, v2, v1, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->offset(FFF)F

    move-result v0

    goto :goto_2

    :cond_4
    neg-float v2, v1

    .line 126
    invoke-direct {p0, v2, v1, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->offset(FFF)F

    move-result v0

    :goto_1
    move v7, v3

    move v3, v0

    move v0, v7

    .line 134
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v2, v2, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->tilt:F

    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v1, v2, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->clipToChildren:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->alphaShimmer:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 66
    invoke-virtual {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->parseShimmer(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->setShimmer(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)V

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public isShimmerStarted()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeStartShimmer()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->autoStart:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->updateShader()V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->maybeStartShimmer()V

    return-void
.end method

.method public parseShimmer(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
    .locals 1

    if-nez p2, :cond_0

    .line 74
    new-instance p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;

    invoke-direct {p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 80
    sget-object p1, Lbyg$n;->XShimmerDrawable:[I

    invoke-virtual {p3, p2, p1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_1
    sget-object p3, Lbyg$n;->XShimmerDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    :goto_0
    :try_start_0
    sget p2, Lbyg$n;->XShimmerDrawable_shimmer_colored:I

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lbyg$n;->XShimmerDrawable_shimmer_colored:I

    .line 89
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    invoke-direct {p2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;

    invoke-direct {p2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;-><init>()V

    .line 93
    :goto_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->saveShimmerBuilder(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;)V

    .line 94
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    throw p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public setAlpha(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setHighlightAlpha(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->setShimmer(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColorHighlight(II)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setHighlightColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setBaseColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->setShimmer(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)V

    return-void
.end method

.method public setShimmer(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-eqz p1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->updateShader()V

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->updateValueAnimator()V

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    if-nez p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->stopShimmer()V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->maybeStartShimmer()V

    .line 183
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public startShimmer()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->isShimmerStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stopShimmer()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->isShimmerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
