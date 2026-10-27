.class Landroid/support/design/widget/ShadowDrawableWrapper;
.super Landroid/support/v7/graphics/drawable/DrawableWrapper;
.source "ShadowDrawableWrapper.java"


# static fields
.field static final COS_45:D

.field static final SHADOW_BOTTOM_SCALE:F = 1.0f

.field static final SHADOW_HORIZ_SCALE:F = 0.5f

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field static final SHADOW_TOP_SCALE:F = 0.25f


# instance fields
.field private addPaddingForCorners:Z

.field final contentBounds:Landroid/graphics/RectF;

.field cornerRadius:F

.field final cornerShadowPaint:Landroid/graphics/Paint;

.field cornerShadowPath:Landroid/graphics/Path;

.field private dirty:Z

.field final edgeShadowPaint:Landroid/graphics/Paint;

.field maxShadowSize:F

.field private printedShadowClipWarning:Z

.field rawMaxShadowSize:F

.field rawShadowSize:F

.field private rotation:F

.field private final shadowEndColor:I

.field private final shadowMiddleColor:I

.field shadowSize:F

.field private final shadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V
    .locals 1

    .line 81
    invoke-direct {p0, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 72
    iput-boolean p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 77
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    .line 83
    sget v0, Landroid/support/design/widget/R$color;->design_fab_shadow_start_color:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowStartColor:I

    .line 84
    sget v0, Landroid/support/design/widget/R$color;->design_fab_shadow_mid_color:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowMiddleColor:I

    .line 85
    sget v0, Landroid/support/design/widget/R$color;->design_fab_shadow_end_color:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowEndColor:I

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    .line 88
    iget-object p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    iget-object p3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 92
    iget-object p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    invoke-virtual {p0, p4, p5}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 94
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6

    .line 347
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 348
    iget-object v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 354
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    .line 355
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    invoke-direct {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->buildShadowCorners()V

    .line 362
    return-void
.end method

.method private buildShadowCorners()V
    .locals 25

    .line 296
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v2, v2

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v3, v3

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget v5, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 297
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 298
    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    neg-float v3, v3

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 300
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    if-nez v3, :cond_0

    .line 301
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    goto :goto_0

    .line 303
    :cond_0
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 305
    :goto_0
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 306
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 307
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 309
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 311
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v1, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 312
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 314
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v11, v3

    .line 315
    cmpl-float v3, v11, v5

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v15, 0x3

    if-lez v3, :cond_1

    .line 316
    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    div-float/2addr v3, v11

    .line 317
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v3

    .line 318
    iget-object v14, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/RadialGradient;

    const/4 v12, 0x4

    new-array v10, v12, [I

    aput v7, v10, v7

    iget v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowStartColor:I

    aput v8, v10, v6

    iget v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowMiddleColor:I

    aput v8, v10, v4

    iget v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowEndColor:I

    aput v8, v10, v15

    new-array v12, v12, [F

    aput v5, v12, v7

    aput v3, v12, v6

    aput v9, v12, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v12, v15

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v13

    const/4 v5, 0x0

    move v9, v5

    move-object/from16 v16, v10

    const/4 v5, 0x0

    move v10, v5

    move-object v5, v12

    move-object/from16 v12, v16

    move-object v4, v13

    move-object v13, v5

    move-object v5, v14

    move-object v14, v3

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 331
    :cond_1
    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const/16 v18, 0x0

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/16 v20, 0x0

    iget v2, v2, Landroid/graphics/RectF;->top:F

    new-array v5, v15, [I

    iget v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowStartColor:I

    aput v8, v5, v7

    iget v8, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowMiddleColor:I

    aput v8, v5, v6

    iget v6, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowEndColor:I

    const/4 v8, 0x2

    aput v6, v5, v8

    new-array v6, v15, [F

    fill-array-data v6, :array_0

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v4

    move/from16 v19, v1

    move/from16 v21, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 340
    iget-object v0, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 341
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static calculateHorizontalPadding(FFZ)F
    .locals 6

    .line 167
    if-eqz p2, :cond_0

    .line 168
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    .line 170
    :cond_0
    return p0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .locals 6

    .line 158
    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    .line 159
    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/design/widget/ShadowDrawableWrapper;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    .line 161
    :cond_0
    mul-float/2addr p0, v0

    return p0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    .line 208
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 209
    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rotation:F

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 211
    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v1, v1

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    sub-float v9, v1, v2

    .line 212
    iget v10, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    .line 213
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v11, v2, v10

    sub-float/2addr v1, v11

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    .line 214
    move v12, v4

    goto :goto_0

    .line 213
    :cond_0
    nop

    .line 214
    move v12, v3

    :goto_0
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v11

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 216
    move v13, v4

    goto :goto_1

    .line 214
    :cond_1
    nop

    .line 216
    move v13, v3

    :goto_1
    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 217
    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 218
    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    iget v4, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v4, v14

    sub-float/2addr v3, v4

    .line 220
    add-float/2addr v2, v10

    div-float v15, v10, v2

    .line 221
    add-float/2addr v1, v10

    div-float v6, v10, v1

    .line 222
    add-float/2addr v3, v10

    div-float v5, v10, v3

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 226
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v10

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 228
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    if-eqz v12, :cond_2

    .line 231
    div-float v1, v14, v15

    invoke-virtual {v7, v1, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 232
    const/4 v2, 0x0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 235
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v16, v1, v11

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v3, v1

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 232
    move-object/from16 v17, v1

    move-object v1, v7

    move/from16 v18, v3

    move v3, v9

    move v14, v4

    move/from16 v4, v16

    move/from16 v19, v5

    move/from16 v5, v18

    move/from16 v20, v8

    move v8, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 239
    :cond_2
    move v14, v4

    move/from16 v19, v5

    move/from16 v20, v8

    move v8, v6

    :goto_2
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 242
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v10

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    move/from16 v6, v19

    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 244
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 245
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 246
    if-eqz v12, :cond_3

    .line 248
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v15

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 249
    const/4 v2, 0x0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 252
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v1, v1

    iget v3, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    add-float v5, v1, v3

    iget-object v12, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 249
    move-object v1, v7

    move v3, v9

    move/from16 v21, v8

    move v8, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 256
    :cond_3
    move/from16 v21, v8

    move v8, v6

    :goto_3
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 259
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v10

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 260
    invoke-virtual {v7, v15, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 261
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 262
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    if-eqz v13, :cond_4

    .line 265
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v8

    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 266
    const/4 v2, 0x0

    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 269
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v5, v1

    iget-object v6, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 266
    move-object v1, v7

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_4
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 276
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v10

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    move/from16 v10, v21

    invoke-virtual {v7, v15, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 278
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 279
    iget-object v1, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 280
    if-eqz v13, :cond_5

    .line 282
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v10

    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 283
    const/4 v1, 0x0

    iget-object v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->contentBounds:Landroid/graphics/RectF;

    .line 286
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float v3, v2, v11

    iget v2, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    neg-float v4, v2

    iget-object v5, v0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    .line 283
    move-object v0, v7

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 290
    :cond_5
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 292
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 293
    return-void
.end method

.method private static toEven(F)I
    .locals 2

    .line 98
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 99
    rem-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->buildComponents(Landroid/graphics/Rect;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->drawShadow(Landroid/graphics/Canvas;)V

    .line 197
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 198
    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    .line 365
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    return v0
.end method

.method public getMaxShadowSize()F
    .locals 1

    .line 381
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    return v0
.end method

.method public getMinHeight()F
    .locals 5

    .line 390
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 391
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v4

    .line 392
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    mul-float/2addr v1, v3

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public getMinWidth()F
    .locals 4

    .line 385
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 386
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 176
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .line 144
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget-boolean v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 147
    invoke-static {v0, v1, v2}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 148
    iget v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    iget v2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    iget-boolean v3, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 151
    invoke-static {v1, v2, v3}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    .line 150
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 152
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    const/4 p1, 0x1

    return p1
.end method

.method public getShadowSize()F
    .locals 1

    .line 377
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 116
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 117
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->addPaddingForCorners:Z

    .line 104
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    .line 105
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 110
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    iget-object v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->edgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .line 180
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 181
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->cornerRadius:F

    .line 185
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 186
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    .line 187
    return-void
.end method

.method public setMaxShadowSize(F)V
    .locals 1

    .line 373
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 374
    return-void
.end method

.method final setRotation(F)V
    .locals 1

    .line 201
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 202
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rotation:F

    .line 203
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    .line 205
    :cond_0
    return-void
.end method

.method public setShadowSize(F)V
    .locals 1

    .line 369
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/ShadowDrawableWrapper;->setShadowSize(FF)V

    .line 370
    return-void
.end method

.method setShadowSize(FF)V
    .locals 2

    .line 120
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 123
    invoke-static {p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->toEven(F)I

    move-result p1

    int-to-float p1, p1

    .line 124
    invoke-static {p2}, Landroid/support/design/widget/ShadowDrawableWrapper;->toEven(F)I

    move-result p2

    int-to-float p2, p2

    .line 125
    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 126
    nop

    .line 127
    iget-boolean p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    if-nez p1, :cond_0

    .line 128
    iput-boolean v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->printedShadowClipWarning:Z

    .line 131
    :cond_0
    move p1, p2

    :cond_1
    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2

    .line 132
    return-void

    .line 134
    :cond_2
    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawShadowSize:F

    .line 135
    iput p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->rawMaxShadowSize:F

    .line 136
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->shadowSize:F

    .line 137
    iput p2, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->maxShadowSize:F

    .line 138
    iput-boolean v1, p0, Landroid/support/design/widget/ShadowDrawableWrapper;->dirty:Z

    .line 139
    invoke-virtual {p0}, Landroid/support/design/widget/ShadowDrawableWrapper;->invalidateSelf()V

    .line 140
    return-void

    .line 121
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid shadow size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
