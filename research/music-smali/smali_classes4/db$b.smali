.class Ldb$b;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:[F

.field b:[I

.field c:[F

.field d:Landroid/graphics/Path;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Paint;

.field g:Landroid/graphics/Paint;

.field h:Landroid/graphics/Paint;

.field i:Landroid/graphics/Paint;

.field final j:I

.field final k:I

.field final l:I

.field final m:I

.field final n:I

.field o:Landroid/graphics/DashPathEffect;

.field p:I

.field q:Landroid/graphics/Rect;

.field r:Z

.field s:I

.field final synthetic t:Ldb;

.field private u:[F


# direct methods
.method public constructor <init>(Ldb;)V
    .locals 6

    .line 3133
    iput-object p1, p0, Ldb$b;->t:Ldb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x55cd

    .line 3122
    iput v0, p0, Ldb$b;->j:I

    const v1, -0x1f8a66

    .line 3123
    iput v1, p0, Ldb$b;->k:I

    const v2, -0xcc5600

    .line 3124
    iput v2, p0, Ldb$b;->l:I

    const/high16 v3, 0x77000000

    .line 3125
    iput v3, p0, Ldb$b;->m:I

    const/16 v3, 0xa

    .line 3126
    iput v3, p0, Ldb$b;->n:I

    .line 3129
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Ldb$b;->q:Landroid/graphics/Rect;

    const/4 v3, 0x0

    .line 3130
    iput-boolean v3, p0, Ldb$b;->r:Z

    const/4 v3, 0x1

    .line 3131
    iput v3, p0, Ldb$b;->s:I

    .line 3134
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Ldb$b;->e:Landroid/graphics/Paint;

    .line 3135
    iget-object v4, p0, Ldb$b;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3136
    iget-object v4, p0, Ldb$b;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3137
    iget-object v0, p0, Ldb$b;->e:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3138
    iget-object v0, p0, Ldb$b;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldb$b;->f:Landroid/graphics/Paint;

    .line 3141
    iget-object v0, p0, Ldb$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3142
    iget-object v0, p0, Ldb$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3143
    iget-object v0, p0, Ldb$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3144
    iget-object v0, p0, Ldb$b;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldb$b;->g:Landroid/graphics/Paint;

    .line 3147
    iget-object v0, p0, Ldb$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3148
    iget-object v0, p0, Ldb$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3149
    iget-object v0, p0, Ldb$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3150
    iget-object v0, p0, Ldb$b;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldb$b;->h:Landroid/graphics/Paint;

    .line 3153
    iget-object v0, p0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3154
    iget-object v0, p0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3155
    iget-object v0, p0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ldb;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 p1, 0x8

    .line 3156
    new-array p1, p1, [F

    iput-object p1, p0, Ldb$b;->u:[F

    .line 3157
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldb$b;->i:Landroid/graphics/Paint;

    .line 3158
    iget-object p1, p0, Ldb$b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3159
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Ldb$b;->o:Landroid/graphics/DashPathEffect;

    .line 3160
    iget-object p1, p0, Ldb$b;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Ldb$b;->o:Landroid/graphics/DashPathEffect;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 p1, 0x64

    .line 3161
    new-array p1, p1, [F

    iput-object p1, p0, Ldb$b;->c:[F

    const/16 p1, 0x32

    .line 3162
    new-array p1, p1, [I

    iput-object p1, p0, Ldb$b;->b:[I

    .line 3164
    iget-boolean p1, p0, Ldb$b;->r:Z

    if-eqz p1, :cond_0

    .line 3165
    iget-object p1, p0, Ldb$b;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3166
    iget-object p1, p0, Ldb$b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3167
    iget-object p1, p0, Ldb$b;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x4

    .line 3168
    iput p1, p0, Ldb$b;->s:I

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 3242
    iget-object v0, p0, Ldb$b;->a:[F

    iget-object v1, p0, Ldb$b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 12

    .line 3335
    iget-object v0, p0, Ldb$b;->a:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    .line 3336
    aget v3, v0, v2

    .line 3337
    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aget v4, v0, v4

    .line 3338
    array-length v5, v0

    sub-int/2addr v5, v2

    aget v0, v0, v5

    sub-float v2, v1, v4

    float-to-double v5, v2

    sub-float v2, v3, v0

    float-to-double v7, v2

    .line 3339
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float v5, p2, v1

    sub-float/2addr v4, v1

    mul-float/2addr v5, v4

    sub-float v6, p3, v3

    sub-float/2addr v0, v3

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    mul-float v6, v2, v2

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v9, v1, v4

    mul-float/2addr v5, v0

    add-float v10, v3, v5

    .line 3344
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 3345
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3346
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v0, v9, p2

    float-to-double v0, v0

    sub-float v3, v10, p3

    float-to-double v3, v3

    .line 3347
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 3348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v0, v3

    div-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3349
    iget-object v1, p0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v1}, Ldb$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3350
    iget-object v1, p0, Ldb$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v6, v0, v1

    .line 3351
    iget-object v8, p0, Ldb$b;->h:Landroid/graphics/Paint;

    const/high16 v7, -0x3e600000    # -20.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 3352
    iget-object v11, p0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFF)V
    .locals 13

    move-object v0, p0

    .line 3306
    iget-object v6, v0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3307
    iget-object v12, v0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 3407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    sub-float v2, p2, v2

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v2, v9

    iget-object v3, v0, Ldb$b;->t:Ldb;

    invoke-virtual {v3}, Ldb;->getWidth()I

    move-result v3

    sub-int v3, v3, p4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v10

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3408
    iget-object v2, v0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Ldb$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    const/high16 v12, 0x40000000    # 2.0f

    div-float v2, p2, v12

    .line 3409
    iget-object v3, v0, Ldb$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v13, 0x0

    add-float/2addr v2, v13

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float v3, p3, v3

    .line 3410
    iget-object v4, v0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v14, 0x3f800000    # 1.0f

    .line 3412
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v6, v0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p3

    .line 3411
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v2, p5, 0x2

    int-to-float v2, v2

    sub-float v2, p3, v2

    mul-float/2addr v2, v9

    iget-object v3, v0, Ldb$b;->t:Ldb;

    invoke-virtual {v3}, Ldb;->getHeight()I

    move-result v3

    sub-int v3, v3, p5

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v10

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3416
    iget-object v2, v0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Ldb$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    div-float v2, p3, v12

    .line 3417
    iget-object v3, v0, Ldb$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float v3, p2, v3

    sub-float v2, v13, v2

    .line 3418
    iget-object v4, v0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3420
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    .line 3419
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcx;)V
    .locals 6

    .line 3424
    iget-object v0, p0, Ldb$b;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x32

    if-gt v1, v2, :cond_0

    int-to-float v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 3428
    iget-object v2, p0, Ldb$b;->u:[F

    invoke-virtual {p2, v3, v2, v0}, Lcx;->a(F[FI)V

    .line 3429
    iget-object v2, p0, Ldb$b;->d:Landroid/graphics/Path;

    iget-object v3, p0, Ldb$b;->u:[F

    aget v4, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3430
    iget-object v2, p0, Ldb$b;->d:Landroid/graphics/Path;

    iget-object v3, p0, Ldb$b;->u:[F

    const/4 v4, 0x2

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v3, v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3431
    iget-object v2, p0, Ldb$b;->d:Landroid/graphics/Path;

    iget-object v3, p0, Ldb$b;->u:[F

    const/4 v4, 0x4

    aget v4, v3, v4

    const/4 v5, 0x5

    aget v3, v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3432
    iget-object v2, p0, Ldb$b;->d:Landroid/graphics/Path;

    iget-object v3, p0, Ldb$b;->u:[F

    const/4 v4, 0x6

    aget v4, v3, v4

    const/4 v5, 0x7

    aget v3, v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3433
    iget-object v2, p0, Ldb$b;->d:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3435
    :cond_0
    iget-object p2, p0, Ldb$b;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x44000000    # 512.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 3436
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3437
    iget-object p2, p0, Ldb$b;->d:Landroid/graphics/Path;

    iget-object v0, p0, Ldb$b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 p2, -0x40000000    # -2.0f

    .line 3439
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3440
    iget-object p2, p0, Ldb$b;->e:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3441
    iget-object p2, p0, Ldb$b;->d:Landroid/graphics/Path;

    iget-object v0, p0, Ldb$b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    .line 3311
    iget-object v0, p0, Ldb$b;->a:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget v5, v0, v2

    array-length v2, v0

    sub-int/2addr v2, v1

    aget v6, v0, v2

    iget-object v7, p0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 3372
    iget-object v1, v0, Ldb$b;->a:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 3373
    aget v8, v1, v3

    .line 3374
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget v4, v1, v4

    .line 3375
    array-length v5, v1

    sub-int/2addr v5, v3

    aget v9, v1, v5

    .line 3376
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 3377
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 3378
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, p2, v3

    .line 3379
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v11, v5, p3

    .line 3381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float v6, v3, v13

    sub-float v14, v4, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    div-float/2addr v6, v14

    float-to-double v14, v6

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v6, v14

    int-to-float v6, v6

    div-float/2addr v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3382
    iget-object v6, v0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6}, Ldb$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v3, v14

    .line 3383
    iget-object v6, v0, Ldb$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    add-float/2addr v3, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v1, p3, v1

    .line 3384
    iget-object v6, v0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v3, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3386
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v6, v0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p3

    .line 3385
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v2, v11, v13

    sub-float v3, v9, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double v2, v2, v16

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3390
    iget-object v2, v0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Ldb$b;->a(Ljava/lang/String;Landroid/graphics/Paint;)V

    div-float/2addr v11, v14

    .line 3391
    iget-object v2, v0, Ldb$b;->q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v11, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float v2, p2, v2

    sub-float/2addr v10, v11

    .line 3392
    iget-object v3, v0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3394
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p2

    .line 3393
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;IILcx;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    .line 3248
    iget-object v0, v9, Lcx;->b:Landroid/view/View;

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 3249
    iget-object v0, v9, Lcx;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3250
    iget-object v1, v9, Lcx;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v11, v0

    move v12, v1

    goto :goto_0

    :cond_0
    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x1

    move v14, v13

    :goto_1
    add-int/lit8 v0, p3, -0x1

    const/4 v15, 0x2

    if-ge v14, v0, :cond_9

    const/4 v0, 0x4

    if-ne v8, v0, :cond_1

    .line 3253
    iget-object v1, v6, Ldb$b;->b:[I

    add-int/lit8 v2, v14, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 3258
    :cond_1
    iget-object v1, v6, Ldb$b;->c:[F

    mul-int/lit8 v2, v14, 0x2

    aget v5, v1, v2

    add-int/2addr v2, v13

    .line 3259
    aget v4, v1, v2

    .line 3260
    iget-object v1, v6, Ldb$b;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 3261
    iget-object v1, v6, Ldb$b;->d:Landroid/graphics/Path;

    const/high16 v2, 0x41200000    # 10.0f

    add-float v3, v4, v2

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3262
    iget-object v1, v6, Ldb$b;->d:Landroid/graphics/Path;

    add-float v3, v5, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3263
    iget-object v1, v6, Ldb$b;->d:Landroid/graphics/Path;

    sub-float v3, v4, v2

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3264
    iget-object v1, v6, Ldb$b;->d:Landroid/graphics/Path;

    sub-float v2, v5, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3265
    iget-object v1, v6, Ldb$b;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    add-int/lit8 v1, v14, -0x1

    .line 3267
    invoke-virtual {v9, v1}, Lcx;->a(I)Ldc;

    const/16 v16, 0x0

    if-ne v8, v0, :cond_5

    .line 3272
    iget-object v0, v6, Ldb$b;->b:[I

    aget v2, v0, v1

    if-ne v2, v13, :cond_3

    sub-float v0, v5, v16

    sub-float v1, v4, v16

    .line 3273
    invoke-direct {v6, v7, v0, v1}, Ldb$b;->a(Landroid/graphics/Canvas;FF)V

    :cond_2
    :goto_2
    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_3

    .line 3274
    :cond_3
    aget v2, v0, v1

    if-nez v2, :cond_4

    sub-float v0, v5, v16

    sub-float v1, v4, v16

    .line 3275
    invoke-direct {v6, v7, v0, v1}, Ldb$b;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    .line 3276
    :cond_4
    aget v0, v0, v1

    if-ne v0, v15, :cond_2

    sub-float v2, v5, v16

    sub-float v3, v4, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v17, v4

    move v4, v11

    move/from16 v18, v5

    move v5, v12

    .line 3277
    invoke-direct/range {v0 .. v5}, Ldb$b;->a(Landroid/graphics/Canvas;FFII)V

    .line 3280
    :goto_3
    iget-object v0, v6, Ldb$b;->d:Landroid/graphics/Path;

    iget-object v1, v6, Ldb$b;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    move/from16 v17, v4

    move/from16 v18, v5

    :goto_4
    if-ne v8, v15, :cond_6

    sub-float v5, v18, v16

    sub-float v4, v17, v16

    .line 3283
    invoke-direct {v6, v7, v5, v4}, Ldb$b;->a(Landroid/graphics/Canvas;FF)V

    :cond_6
    const/4 v0, 0x3

    if-ne v8, v0, :cond_7

    sub-float v5, v18, v16

    sub-float v4, v17, v16

    .line 3286
    invoke-direct {v6, v7, v5, v4}, Ldb$b;->b(Landroid/graphics/Canvas;FF)V

    :cond_7
    const/4 v0, 0x6

    if-ne v8, v0, :cond_8

    sub-float v2, v18, v16

    sub-float v3, v17, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v11

    move v5, v12

    .line 3289
    invoke-direct/range {v0 .. v5}, Ldb$b;->a(Landroid/graphics/Canvas;FFII)V

    .line 3294
    :cond_8
    iget-object v0, v6, Ldb$b;->d:Landroid/graphics/Path;

    iget-object v1, v6, Ldb$b;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 3297
    :cond_9
    iget-object v0, v6, Ldb$b;->a:[F

    array-length v1, v0

    if-le v1, v13, :cond_a

    .line 3299
    aget v1, v0, v10

    aget v0, v0, v13

    iget-object v2, v6, Ldb$b;->f:Landroid/graphics/Paint;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3300
    iget-object v0, v6, Ldb$b;->a:[F

    array-length v1, v0

    sub-int/2addr v1, v15

    aget v1, v0, v1

    array-length v2, v0

    sub-int/2addr v2, v13

    aget v0, v0, v2

    iget-object v2, v6, Ldb$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3318
    :goto_0
    iget v3, p0, Ldb$b;->p:I

    if-ge v0, v3, :cond_2

    .line 3319
    iget-object v3, p0, Ldb$b;->b:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 3322
    :cond_0
    iget-object v3, p0, Ldb$b;->b:[I

    aget v3, v3, v0

    if-nez v3, :cond_1

    move v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 3327
    invoke-direct {p0, p1}, Ldb$b;->b(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 3330
    invoke-direct {p0, p1}, Ldb$b;->d(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 3360
    iget-object v1, v0, Ldb$b;->a:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 3361
    aget v4, v1, v3

    .line 3362
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aget v5, v1, v5

    .line 3363
    array-length v6, v1

    sub-int/2addr v6, v3

    aget v1, v1, v6

    .line 3365
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 3366
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget-object v11, v0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    .line 3365
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3367
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 3368
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    iget-object v1, v0, Ldb$b;->g:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v1

    .line 3367
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IILcx;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 3229
    invoke-direct {p0, p1}, Ldb$b;->c(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 3232
    invoke-direct {p0, p1}, Ldb$b;->b(Landroid/graphics/Canvas;)V

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 3235
    invoke-direct {p0, p1}, Ldb$b;->d(Landroid/graphics/Canvas;)V

    .line 3237
    :cond_2
    invoke-direct {p0, p1}, Ldb$b;->a(Landroid/graphics/Canvas;)V

    .line 3238
    invoke-direct {p0, p1, p2, p3, p4}, Ldb$b;->b(Landroid/graphics/Canvas;IILcx;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcx;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 3175
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3178
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3179
    iget-object v0, p0, Ldb$b;->t:Ldb;

    invoke-virtual {v0}, Ldb;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldb$b;->t:Ldb;

    invoke-virtual {v1}, Ldb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Ldb$b;->t:Ldb;

    invoke-static {v2}, Ldb;->b(Ldb;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldb$b;->t:Ldb;

    invoke-virtual {v1}, Ldb;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    .line 3181
    iget-object v2, p0, Ldb$b;->t:Ldb;

    invoke-virtual {v2}, Ldb;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    iget-object v3, p0, Ldb$b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 3182
    iget-object v2, p0, Ldb$b;->t:Ldb;

    invoke-virtual {v2}, Ldb;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1d

    int-to-float v2, v2

    iget-object v3, p0, Ldb$b;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3184
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx;

    .line 3185
    invoke-virtual {v0}, Lcx;->h()I

    move-result v1

    const/4 v2, 0x1

    if-lez p4, :cond_3

    if-nez v1, :cond_3

    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    .line 3193
    :cond_4
    iget-object v3, p0, Ldb$b;->c:[F

    iget-object v4, p0, Ldb$b;->b:[I

    invoke-virtual {v0, v3, v4}, Lcx;->a([F[I)I

    move-result v3

    iput v3, p0, Ldb$b;->p:I

    if-lt v1, v2, :cond_2

    .line 3197
    div-int/lit8 v2, p3, 0x10

    .line 3198
    iget-object v3, p0, Ldb$b;->a:[F

    if-eqz v3, :cond_5

    array-length v3, v3

    mul-int/lit8 v4, v2, 0x2

    if-eq v3, v4, :cond_6

    :cond_5
    mul-int/lit8 v3, v2, 0x2

    .line 3199
    new-array v3, v3, [F

    iput-object v3, p0, Ldb$b;->a:[F

    .line 3200
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Ldb$b;->d:Landroid/graphics/Path;

    .line 3203
    :cond_6
    iget v3, p0, Ldb$b;->s:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3205
    iget-object v3, p0, Ldb$b;->e:Landroid/graphics/Paint;

    const/high16 v4, 0x77000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3206
    iget-object v3, p0, Ldb$b;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3207
    iget-object v3, p0, Ldb$b;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3208
    iget-object v3, p0, Ldb$b;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3209
    iget-object v3, p0, Ldb$b;->a:[F

    invoke-virtual {v0, v3, v2}, Lcx;->a([FI)V

    .line 3210
    iget v2, p0, Ldb$b;->p:I

    invoke-virtual {p0, p1, v1, v2, v0}, Ldb$b;->a(Landroid/graphics/Canvas;IILcx;)V

    .line 3211
    iget-object v2, p0, Ldb$b;->e:Landroid/graphics/Paint;

    const/16 v3, -0x55cd

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3212
    iget-object v2, p0, Ldb$b;->f:Landroid/graphics/Paint;

    const v3, -0x1f8a66

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3213
    iget-object v2, p0, Ldb$b;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3214
    iget-object v2, p0, Ldb$b;->g:Landroid/graphics/Paint;

    const v3, -0xcc5600

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3216
    iget v2, p0, Ldb$b;->s:I

    neg-int v3, v2

    int-to-float v3, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3217
    iget v2, p0, Ldb$b;->p:I

    invoke-virtual {p0, p1, v1, v2, v0}, Ldb$b;->a(Landroid/graphics/Canvas;IILcx;)V

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 3219
    invoke-direct {p0, p1, v0}, Ldb$b;->a(Landroid/graphics/Canvas;Lcx;)V

    goto/16 :goto_0

    .line 3224
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_1
    return-void
.end method

.method a(Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 3

    .line 3356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ldb$b;->q:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method
