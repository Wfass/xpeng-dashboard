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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mShimmerPaint:Landroid/graphics/Paint;

.field private final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mValueAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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

    .line 55
    return-void
.end method

.method private offset(FFF)F
    .locals 1
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "percent"    # F

    .line 292
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private saveShimmerBuilder(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 198
    return-void
.end method

.method private updateShader()V
    .locals 18

    .line 254
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 255
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 256
    .local v2, "boundsWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 257
    .local v3, "boundsHeight":I
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 260
    :cond_0
    iget-object v4, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->width(I)I

    move-result v4

    .line 261
    .local v4, "width":I
    iget-object v5, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    invoke-virtual {v5, v3}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->height(I)I

    move-result v5

    .line 264
    .local v5, "height":I
    iget-object v6, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v6, v6, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->shape:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 267
    iget-object v6, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v6, v6, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    const/4 v8, 0x0

    if-eq v6, v7, :cond_2

    iget-object v6, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v6, v6, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    goto :goto_0

    :cond_1
    move v7, v8

    nop

    :cond_2
    :goto_0
    move v6, v7

    .line 270
    .local v6, "vertical":Z
    if-eqz v6, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v4

    .line 271
    .local v7, "endX":I
    :goto_1
    if-eqz v6, :cond_4

    move v8, v5

    nop

    .line 272
    .local v8, "endY":I
    :cond_4
    new-instance v17, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v12, v7

    int-to-float v13, v8

    iget-object v9, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v14, v9, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->colors:[I

    iget-object v9, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v15, v9, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 275
    .local v9, "shader":Landroid/graphics/Shader;
    nop

    .line 281
    move-object v6, v9

    goto :goto_2

    .line 277
    .end local v6    # "vertical":Z
    .end local v7    # "endX":I
    .end local v8    # "endY":I
    .end local v9    # "shader":Landroid/graphics/Shader;
    :cond_5
    new-instance v6, Landroid/graphics/RadialGradient;

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v11, v7, v8

    int-to-float v7, v5

    div-float v12, v7, v8

    .line 281
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    double-to-float v13, v7

    iget-object v7, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v14, v7, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->colors:[I

    iget-object v7, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-object v15, v7, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->positions:[F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 288
    .local v6, "shader":Landroid/graphics/Shader;
    :goto_2
    iget-object v7, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 289
    return-void

    .line 258
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "shader":Landroid/graphics/Shader;
    :cond_6
    :goto_3
    return-void
.end method

.method private updateValueAnimator()V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-nez v0, :cond_0

    .line 230
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    .line 236
    .local v0, "started":Z
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_0

    .line 239
    .end local v0    # "started":Z
    :cond_1
    move v0, v1

    .line 242
    .restart local v0    # "started":Z
    :goto_0
    const/4 v2, 0x2

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

    add-float/2addr v3, v4

    aput v3, v2, v1

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

    .line 248
    if-eqz v0, :cond_2

    .line 249
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 251
    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

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
    .local v0, "tiltTan":F
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
    .local v1, "translateHeight":F
    iget-object v2, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 113
    .local v2, "translateWidth":F
    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 114
    .local v3, "animatedValue":F
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v4, v4, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    packed-switch v4, :pswitch_data_0

    .line 117
    neg-float v4, v2

    invoke-direct {p0, v4, v2, v3}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->offset(FFF)F

    move-result v4

    .line 118
    .local v4, "dx":F
    const/4 v5, 0x0

    .line 119
    .local v5, "dy":F
    goto :goto_1

    .line 129
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    :pswitch_0
    const/4 v4, 0x0

    .line 130
    .restart local v4    # "dx":F
    neg-float v5, v1

    invoke-direct {p0, v1, v5, v3}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->offset(FFF)F

    move-result v5

    goto :goto_1

    .line 121
    .end local v4    # "dx":F
    :pswitch_1
    neg-float v4, v2

    invoke-direct {p0, v2, v4, v3}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->offset(FFF)F

    move-result v4

    .line 122
    .restart local v4    # "dx":F
    const/4 v5, 0x0

    .line 123
    .restart local v5    # "dy":F
    goto :goto_1

    .line 125
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    :pswitch_2
    const/4 v4, 0x0

    .line 126
    .restart local v4    # "dx":F
    neg-float v5, v1

    invoke-direct {p0, v5, v1, v3}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->offset(FFF)F

    move-result v5

    .line 127
    .restart local v5    # "dy":F
    nop

    .line 130
    :goto_1
    nop

    .line 134
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v7, v7, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->tilt:F

    iget-object v8, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget-object v10, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    invoke-virtual {v6, v7, v8, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 136
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 137
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 138
    iget-object v6, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 139
    return-void

    .line 105
    .end local v0    # "tiltTan":F
    .end local v1    # "translateHeight":F
    .end local v2    # "translateWidth":F
    .end local v3    # "animatedValue":F
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOpacity()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

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
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 62
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
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
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p3, p4}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->parseShimmer(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->setShimmer(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)V

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 68
    return-void
.end method

.method public isShimmerStarted()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

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

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 202
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->autoStart:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 162
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->updateShader()V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->maybeStartShimmer()V

    .line 166
    return-void
.end method

.method public parseShimmer(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 79
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 80
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable:[I

    invoke-virtual {p3, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "typedArray":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 83
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_1
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 87
    .restart local v1    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    :try_start_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_colored:I

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_colored:I

    .line 89
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$ColorHighlightBuilder;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$AlphaHighlightBuilder;-><init>()V

    .line 93
    .local v0, "shimmerBuilder":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->saveShimmerBuilder(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return-object v2

    .line 96
    .end local v0    # "shimmerBuilder":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    throw v0

    .line 99
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .line 143
    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 144
    .local v0, "alphaPercent":F
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setHighlightAlpha(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->setShimmer(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)V

    .line 146
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 151
    return-void
.end method

.method public setColorHighlight(II)V
    .locals 1
    .param p1, "colorHighlight"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "colorBase"    # I

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setHighlightColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setBaseColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mBuilder:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->setShimmer(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)V

    .line 173
    return-void
.end method

.method public setShimmer(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)V
    .locals 1
    .param p1, "shimmer"    # Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->updateShader()V

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->updateValueAnimator()V

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmerDrawable;->invalidateSelf()V

    .line 194
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 178
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

    move-result v0

    return v0
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

    .line 215
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

    .line 221
    :cond_0
    return-void
.end method
