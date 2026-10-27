.class public Lcom/dinuscxj/progressbar/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dinuscxj/progressbar/CircleProgressBar$SavedState;,
        Lcom/dinuscxj/progressbar/CircleProgressBar$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/BlurMaskFilter$Blur;

.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Lcom/dinuscxj/progressbar/CircleProgressBar$a;

.field private w:I

.field private x:I

.field private y:Landroid/graphics/Paint$Cap;

.field private z:I


# direct methods
.method private a()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->A:Landroid/graphics/BlurMaskFilter$Blur;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->z:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 193
    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->z:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->A:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 10

    .line 259
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->v:Lcom/dinuscxj/progressbar/CircleProgressBar$a;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    invoke-interface {v0, v1, v2}, Lcom/dinuscxj/progressbar/CircleProgressBar$a;->a(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 265
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->f:Landroid/graphics/Paint;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v5, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v5, 0x0

    .line 273
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    iget-object v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v8, v0, v1

    iget-object v9, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->f:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b()V
    .locals 17

    move-object/from16 v0, p0

    .line 205
    iget v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    iget v6, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->q:I

    const/4 v1, 0x0

    if-eq v5, v6, :cond_4

    .line 207
    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->x:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_1

    .line 224
    :cond_0
    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    float-to-double v1, v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v5

    iget v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    float-to-double v5, v5

    div-double/2addr v1, v5

    double-to-float v1, v1

    .line 225
    iget-object v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->y:Landroid/graphics/Paint$Cap;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v2, v5, :cond_1

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:I

    if-ne v2, v4, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    float-to-double v1, v1

    .line 226
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    :goto_0
    neg-double v1, v1

    double-to-float v1, v1

    .line 228
    new-instance v2, Landroid/graphics/SweepGradient;

    iget v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    iget v6, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    new-array v7, v4, [I

    const/4 v8, 0x0

    iget v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    aput v9, v7, v8

    iget v8, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->q:I

    aput v8, v7, v3

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-direct {v2, v5, v6, v7, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 230
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 231
    iget v4, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    iget v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 232
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object v1, v2

    goto :goto_1

    .line 218
    :cond_2
    new-instance v8, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    iget v4, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    .line 209
    :cond_3
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    iget v14, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    iget v15, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->q:I

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 212
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x42b40000    # 90.0f

    .line 213
    iget v4, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    iget v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 214
    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 239
    :goto_1
    iget-object v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 241
    :cond_4
    iget-object v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 242
    iget-object v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2

    .line 277
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 279
    :cond_1
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->d(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 295
    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->l:I

    int-to-double v2, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v2

    double-to-float v2, v4

    .line 296
    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    .line 297
    iget v4, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    sub-float v4, v3, v4

    .line 299
    iget v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    int-to-float v5, v5

    iget v6, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v1, v1

    mul-float/2addr v5, v1

    float-to-int v1, v5

    const/4 v5, 0x0

    .line 301
    :goto_0
    iget v6, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->l:I

    if-ge v5, v6, :cond_3

    int-to-float v6, v5

    neg-float v7, v2

    mul-float/2addr v6, v7

    .line 304
    iget v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v6, v10

    mul-float/2addr v6, v4

    add-float/2addr v6, v7

    .line 305
    iget v7, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v4

    sub-float/2addr v7, v10

    .line 307
    iget v10, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v3

    add-float v16, v10, v11

    .line 308
    iget v10, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v8, v10, v8

    .line 310
    iget-boolean v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:Z

    if-eqz v9, :cond_0

    if-lt v5, v1, :cond_1

    .line 312
    iget-object v15, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    move/from16 v13, v16

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 315
    :cond_0
    iget-object v15, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    move/from16 v13, v16

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    if-ge v5, v1, :cond_2

    .line 319
    iget-object v15, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    move/from16 v13, v16

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 328
    iget-boolean v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_0

    .line 329
    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    int-to-float v3, v3

    div-float v6, v1, v3

    sub-float v7, v2, v6

    .line 331
    iget-object v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v11, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v14, 0x1

    iget-object v15, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 335
    :goto_0
    iget-object v4, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    int-to-float v2, v2

    div-float v6, v1, v2

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 342
    iget-boolean v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_0

    .line 343
    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v3, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    int-to-float v3, v3

    div-float v6, v1, v3

    sub-float v7, v2, v6

    .line 345
    iget-object v5, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v11, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 349
    :goto_0
    iget-object v4, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget v1, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    int-to-float v2, v2

    div-float v6, v1, v2

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 503
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->t:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    iget v2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 252
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->b(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 255
    invoke-direct {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 389
    check-cast p1, Lcom/dinuscxj/progressbar/CircleProgressBar$SavedState;

    .line 390
    invoke-virtual {p1}, Lcom/dinuscxj/progressbar/CircleProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 392
    iget p1, p1, Lcom/dinuscxj/progressbar/CircleProgressBar$SavedState;->a:I

    invoke-virtual {p0, p1}, Lcom/dinuscxj/progressbar/CircleProgressBar;->setProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 379
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 380
    new-instance v1, Lcom/dinuscxj/progressbar/CircleProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/dinuscxj/progressbar/CircleProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 382
    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    iput v0, v1, Lcom/dinuscxj/progressbar/CircleProgressBar$SavedState;->a:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 358
    iget-object p3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getPaddingLeft()I

    move-result p4

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 359
    iget-object p3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getPaddingTop()I

    move-result p4

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 360
    iget-object p3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 361
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 363
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->h:F

    .line 364
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->i:F

    .line 366
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->g:F

    .line 368
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 370
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->b()V

    .line 372
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    iget p3, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    div-float p4, p3, p2

    div-float/2addr p3, p2

    invoke-virtual {p1, p4, p3}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->z:I

    .line 460
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->a()V

    .line 461
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setBlurStyle(Landroid/graphics/BlurMaskFilter$Blur;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->A:Landroid/graphics/BlurMaskFilter$Blur;

    .line 466
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->a()V

    .line 467
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 477
    iput-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->y:Landroid/graphics/Paint$Cap;

    .line 478
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 479
    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 480
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setDrawBackgroundOutsideProgress(Z)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->u:Z

    .line 490
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setLineCount(I)V
    .locals 0

    .line 442
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->l:I

    .line 443
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->m:F

    .line 448
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 507
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->k:I

    .line 508
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 498
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->j:I

    .line 499
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 1

    .line 436
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->s:I

    .line 437
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->s:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressEndColor(I)V
    .locals 0

    .line 425
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->q:I

    .line 426
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->b()V

    .line 427
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressFormatter(Lcom/dinuscxj/progressbar/CircleProgressBar$a;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->v:Lcom/dinuscxj/progressbar/CircleProgressBar$a;

    .line 398
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressStartColor(I)V
    .locals 0

    .line 419
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->p:I

    .line 420
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->b()V

    .line 421
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressStrokeWidth(F)V
    .locals 3

    .line 402
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    .line 404
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 406
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->b()V

    .line 408
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->a:Landroid/graphics/RectF;

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->n:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 410
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->r:I

    .line 432
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->o:F

    .line 415
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setShader(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->x:I

    .line 472
    invoke-direct {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->b()V

    .line 473
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setStartDegree(I)V
    .locals 0

    .line 484
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->t:I

    .line 485
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 2

    .line 452
    iput p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:I

    .line 453
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->d:Landroid/graphics/Paint;

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 454
    iget-object p1, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/dinuscxj/progressbar/CircleProgressBar;->w:I

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 455
    invoke-virtual {p0}, Lcom/dinuscxj/progressbar/CircleProgressBar;->invalidate()V

    return-void
.end method
