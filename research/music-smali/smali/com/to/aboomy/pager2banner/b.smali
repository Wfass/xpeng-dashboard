.class public Lcom/to/aboomy/pager2banner/b;
.super Landroid/view/View;
.source "IndicatorView.java"

# interfaces
.implements Lcom/to/aboomy/pager2banner/a;


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/graphics/Path;

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/RectF;

.field private k:Landroid/widget/RelativeLayout$LayoutParams;

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/to/aboomy/pager2banner/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/to/aboomy/pager2banner/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/b;->a:Landroid/view/animation/Interpolator;

    const p1, -0x777778

    .line 33
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->g:I

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->h:I

    const/high16 p1, 0x40600000    # 3.5f

    .line 48
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/b;->c(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/to/aboomy/pager2banner/b;->m:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 49
    iput p2, p0, Lcom/to/aboomy/pager2banner/b;->n:F

    .line 50
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/b;->c(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    .line 51
    iput p2, p0, Lcom/to/aboomy/pager2banner/b;->p:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 52
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/b;->c(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->q:F

    .line 79
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    return-void
.end method

.method private a()F
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->a:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->d:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 5

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/to/aboomy/pager2banner/b;->f(Landroid/graphics/Canvas;F)V

    .line 194
    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    invoke-direct {p0, v0}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v0

    .line 195
    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/to/aboomy/pager2banner/b;->f:I

    rem-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v1

    .line 196
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioSelectedRadius()F

    move-result v2

    sub-float v3, v0, v2

    add-float/2addr v0, v2

    sub-float v4, v1, v2

    add-float/2addr v1, v2

    sub-float/2addr v4, v3

    .line 201
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->a()F

    move-result v2

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v1, v0

    .line 202
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->a()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 203
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v2, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    sub-float v4, p2, v2

    add-float/2addr p2, v2

    invoke-virtual {v1, v3, v4, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 204
    iget-object p2, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->h:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object p2, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;F)V
    .locals 9

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/to/aboomy/pager2banner/b;->f(Landroid/graphics/Canvas;F)V

    .line 210
    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    invoke-direct {p0, v0}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v0

    .line 211
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioSelectedRadius()F

    move-result v1

    sub-float v2, v0, v1

    add-float/2addr v0, v1

    .line 214
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->a()F

    move-result v3

    .line 215
    iget v4, p0, Lcom/to/aboomy/pager2banner/b;->q:F

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioRadius()F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v1, v5

    add-float/2addr v4, v1

    .line 218
    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/to/aboomy/pager2banner/b;->f:I

    rem-int/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    if-nez v6, :cond_0

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v4, v1

    mul-float v1, v4, v3

    mul-float/2addr v1, v5

    .line 220
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v2, v1

    sub-float/2addr v3, v8

    mul-float/2addr v4, v3

    mul-float/2addr v4, v5

    .line 221
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    sub-float v1, v3, v8

    mul-float/2addr v1, v4

    mul-float/2addr v1, v5

    .line 223
    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v2, v1

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    .line 224
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    .line 226
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v3, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    sub-float v4, p2, v3

    add-float/2addr p2, v3

    invoke-virtual {v1, v2, v4, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 227
    iget-object p2, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->h:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object p2, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(F)I
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private c(Landroid/graphics/Canvas;F)V
    .locals 12

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/to/aboomy/pager2banner/b;->f(Landroid/graphics/Canvas;F)V

    .line 233
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->b:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/to/aboomy/pager2banner/b;->b:Landroid/view/animation/Interpolator;

    .line 235
    :cond_1
    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    invoke-direct {p0, v0}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v0

    .line 236
    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/to/aboomy/pager2banner/b;->f:I

    rem-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v1

    sub-float/2addr v1, v0

    .line 237
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/b;->b:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/to/aboomy/pager2banner/b;->d:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    .line 238
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->a()F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 239
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioSelectedRadius()F

    move-result v1

    .line 240
    iget v3, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    const v4, 0x3f11eb85    # 0.57f

    mul-float/2addr v3, v4

    .line 241
    iget v4, p0, Lcom/to/aboomy/pager2banner/b;->p:F

    mul-float/2addr v4, v3

    sub-float v5, v4, v1

    .line 242
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->a()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sub-float/2addr v1, v4

    .line 243
    iget-object v6, p0, Lcom/to/aboomy/pager2banner/b;->b:Landroid/view/animation/Interpolator;

    iget v7, p0, Lcom/to/aboomy/pager2banner/b;->d:F

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v1, v6

    add-float/2addr v4, v1

    .line 244
    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    sub-float/2addr v1, v3

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->a()F

    move-result v6

    mul-float/2addr v1, v6

    .line 245
    iget v6, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    sub-float/2addr v6, v3

    iget-object v7, p0, Lcom/to/aboomy/pager2banner/b;->b:Landroid/view/animation/Interpolator;

    iget v8, p0, Lcom/to/aboomy/pager2banner/b;->d:F

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    .line 246
    iget-object v7, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    iget v8, p0, Lcom/to/aboomy/pager2banner/b;->h:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v7, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    sub-float v8, v2, v5

    iget v9, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    sub-float v10, p2, v9

    add-float/2addr v10, v1

    add-float v11, v2, v5

    add-float/2addr v9, p2

    sub-float/2addr v9, v1

    invoke-virtual {v7, v8, v10, v11, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 248
    iget-object v7, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 249
    iget-object v5, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    sub-float v7, v0, v4

    sub-float v8, p2, v3

    sub-float/2addr v8, v6

    add-float v9, v0, v4

    add-float/2addr v3, p2

    add-float/2addr v3, v6

    invoke-virtual {v5, v7, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 250
    iget-object v5, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 251
    iget-object v4, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 252
    iget-object v4, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    invoke-virtual {v4, v0, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 253
    iget-object v4, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    invoke-virtual {v4, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    iget-object v4, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    sub-float v5, v2, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    iget v6, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    sub-float v6, p2, v6

    add-float/2addr v6, v1

    invoke-virtual {v4, v5, p2, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 255
    iget-object v4, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    iget v6, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    add-float/2addr v6, p2

    sub-float/2addr v6, v1

    invoke-virtual {v4, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v5, p2, v0, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 257
    iget-object p2, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 258
    iget-object p2, p0, Lcom/to/aboomy/pager2banner/b;->c:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/to/aboomy/pager2banner/b;->a()F

    move-result v2

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/to/aboomy/pager2banner/b;->getRatioSelectedRadius()F

    move-result v3

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/to/aboomy/pager2banner/b;->getRatioRadius()F

    move-result v4

    sub-float v5, v3, v4

    mul-float v6, v5, v2

    .line 268
    iget v7, v0, Lcom/to/aboomy/pager2banner/b;->e:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iget v9, v0, Lcom/to/aboomy/pager2banner/b;->f:I

    rem-int/2addr v7, v9

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    .line 270
    :goto_0
    iget-object v11, v0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    iget v12, v0, Lcom/to/aboomy/pager2banner/b;->g:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    :goto_1
    iget v11, v0, Lcom/to/aboomy/pager2banner/b;->f:I

    if-ge v9, v11, :cond_3

    .line 272
    invoke-direct {v0, v9}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v11

    if-eqz v10, :cond_1

    add-float/2addr v11, v6

    :cond_1
    sub-float v12, v11, v4

    .line 275
    iget v13, v0, Lcom/to/aboomy/pager2banner/b;->m:F

    sub-float v14, p2, v13

    add-float/2addr v11, v4

    add-float v13, p2, v13

    .line 278
    iget v15, v0, Lcom/to/aboomy/pager2banner/b;->e:I

    add-int/2addr v15, v8

    if-gt v15, v9, :cond_2

    .line 279
    iget-object v15, v0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    add-float/2addr v12, v5

    add-float/2addr v11, v5

    invoke-virtual {v15, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 281
    :cond_2
    iget-object v15, v0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v15, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 283
    :goto_2
    iget-object v11, v0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v12, v0, Lcom/to/aboomy/pager2banner/b;->m:F

    iget-object v13, v0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 285
    :cond_3
    iget-object v4, v0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    iget v8, v0, Lcom/to/aboomy/pager2banner/b;->h:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x3f7d70a4    # 0.99f

    cmpg-float v4, v2, v4

    const/high16 v8, 0x40000000    # 2.0f

    if-gez v4, :cond_5

    .line 288
    iget v4, v0, Lcom/to/aboomy/pager2banner/b;->e:I

    invoke-direct {v0, v4}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v4

    sub-float/2addr v4, v3

    if-eqz v10, :cond_4

    add-float/2addr v4, v6

    :cond_4
    mul-float v9, v3, v8

    add-float/2addr v9, v4

    add-float/2addr v9, v5

    sub-float/2addr v9, v6

    .line 291
    iget-object v11, v0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v12, v0, Lcom/to/aboomy/pager2banner/b;->o:F

    sub-float v13, p2, v12

    add-float v12, p2, v12

    invoke-virtual {v11, v4, v13, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 292
    iget-object v4, v0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v9, v0, Lcom/to/aboomy/pager2banner/b;->o:F

    iget-object v11, v0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v9, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    .line 295
    invoke-direct {v0, v7}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v2

    add-float/2addr v2, v3

    if-eqz v10, :cond_6

    move v5, v6

    :cond_6
    add-float/2addr v2, v5

    mul-float/2addr v3, v8

    sub-float v3, v2, v3

    sub-float/2addr v3, v6

    .line 297
    iget-object v4, v0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v5, v0, Lcom/to/aboomy/pager2banner/b;->o:F

    sub-float v6, p2, v5

    add-float v5, p2, v5

    invoke-virtual {v4, v3, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 298
    iget-object v2, v0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v3, v0, Lcom/to/aboomy/pager2banner/b;->o:F

    iget-object v4, v0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method private e(Landroid/graphics/Canvas;F)V
    .locals 10

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/to/aboomy/pager2banner/b;->f(Landroid/graphics/Canvas;F)V

    .line 304
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->a()F

    move-result v0

    .line 305
    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    invoke-direct {p0, v1}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v1

    .line 306
    iget v2, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/to/aboomy/pager2banner/b;->f:I

    rem-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v2

    .line 307
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioRadius()F

    move-result v3

    .line 308
    iget v4, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    .line 309
    iget v5, p0, Lcom/to/aboomy/pager2banner/b;->p:F

    mul-float/2addr v5, v4

    sub-float v6, v5, v3

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    add-float/2addr v3, v6

    .line 312
    iget v6, p0, Lcom/to/aboomy/pager2banner/b;->m:F

    sub-float v6, v4, v6

    mul-float/2addr v6, v0

    .line 313
    iget-object v7, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    iget v8, p0, Lcom/to/aboomy/pager2banner/b;->h:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const v7, 0x3f7d70a4    # 0.99f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    sub-float v7, p2, v4

    add-float/2addr v7, v6

    sub-float v8, v1, v5

    add-float/2addr v1, v5

    add-float/2addr v4, p2

    sub-float/2addr v4, v6

    .line 319
    iget-object v9, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v9, v8, v7, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 320
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 323
    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->m:F

    sub-float v1, p2, v0

    sub-float/2addr v1, v6

    sub-float v4, v2, v3

    add-float/2addr v2, v3

    add-float/2addr p2, v0

    add-float/2addr p2, v6

    .line 327
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 328
    iget-object p2, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private f(I)I
    .locals 4

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioSelectedRadius()F

    move-result p1

    .line 139
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioRadius()F

    move-result v0

    .line 140
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/to/aboomy/pager2banner/b;->f:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    .line 141
    iget v3, p0, Lcom/to/aboomy/pager2banner/b;->q:F

    mul-float/2addr v2, v3

    sub-float/2addr p1, v0

    add-float/2addr v1, v2

    add-float/2addr v1, p1

    .line 143
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->getPaddingRight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    float-to-int p1, v1

    :cond_1
    :goto_0
    return p1
.end method

.method private f(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 334
    :goto_0
    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->f:I

    if-ge v0, v1, :cond_0

    .line 335
    invoke-direct {p0, v0}, Lcom/to/aboomy/pager2banner/b;->h(I)F

    move-result v1

    .line 336
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioRadius()F

    move-result v2

    sub-float v3, v1, v2

    .line 338
    iget v4, p0, Lcom/to/aboomy/pager2banner/b;->m:F

    sub-float v5, p2, v4

    add-float/2addr v1, v2

    add-float/2addr v4, p2

    .line 341
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/b;->j:Landroid/graphics/RectF;

    iget v2, p0, Lcom/to/aboomy/pager2banner/b;->m:F

    iget-object v3, p0, Lcom/to/aboomy/pager2banner/b;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(I)I
    .locals 2

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 153
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioSelectedRadius()F

    move-result p1

    .line 162
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioRadius()F

    move-result v0

    .line 163
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 164
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method private getRatioRadius()F
    .locals 2

    .line 360
    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->m:F

    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->n:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRatioSelectedRadius()F
    .locals 2

    .line 363
    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->p:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private h(I)F
    .locals 5

    .line 347
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioRadius()F

    move-result v0

    .line 348
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/b;->getRatioSelectedRadius()F

    move-result v1

    .line 349
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    .line 350
    iget v4, p0, Lcom/to/aboomy/pager2banner/b;->q:F

    add-float/2addr v3, v4

    .line 351
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    add-float/2addr v4, v3

    .line 356
    iget p1, p0, Lcom/to/aboomy/pager2banner/b;->l:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v0

    div-float p1, v1, v2

    :goto_0
    add-float/2addr v4, p1

    return v4
.end method


# virtual methods
.method public a(F)Lcom/to/aboomy/pager2banner/b;
    .locals 2

    .line 379
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/b;->c(F)I

    move-result p1

    .line 380
    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->m:F

    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p1

    .line 381
    iput v0, p0, Lcom/to/aboomy/pager2banner/b;->o:F

    :cond_0
    int-to-float p1, p1

    .line 383
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->m:F

    return-object p0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IFI)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->e:I

    .line 109
    iput p2, p0, Lcom/to/aboomy/pager2banner/b;->d:F

    .line 110
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->invalidate()V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->f:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Lcom/to/aboomy/pager2banner/b;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->requestLayout()V

    return-void
.end method

.method public b(F)Lcom/to/aboomy/pager2banner/b;
    .locals 0

    .line 417
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->p:F

    return-object p0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)Lcom/to/aboomy/pager2banner/b;
    .locals 0

    .line 432
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->l:I

    return-object p0
.end method

.method public d(I)Lcom/to/aboomy/pager2banner/b;
    .locals 0

    .line 437
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->g:I

    return-object p0
.end method

.method public e(I)Lcom/to/aboomy/pager2banner/b;
    .locals 0

    .line 442
    iput p1, p0, Lcom/to/aboomy/pager2banner/b;->h:I

    return-object p0
.end method

.method public getParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->k:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/to/aboomy/pager2banner/b;->k:Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->k:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->k:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->k:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lcom/to/aboomy/pager2banner/b;->c(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/b;->k:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 174
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 175
    iget v0, p0, Lcom/to/aboomy/pager2banner/b;->f:I

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/b;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 179
    iget v1, p0, Lcom/to/aboomy/pager2banner/b;->l:I

    if-nez v1, :cond_1

    .line 180
    invoke-direct {p0, p1, v0}, Lcom/to/aboomy/pager2banner/b;->a(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/to/aboomy/pager2banner/b;->b(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/to/aboomy/pager2banner/b;->c(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/to/aboomy/pager2banner/b;->d(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/to/aboomy/pager2banner/b;->e(Landroid/graphics/Canvas;F)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/b;->f(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/to/aboomy/pager2banner/b;->g(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/to/aboomy/pager2banner/b;->setMeasuredDimension(II)V

    return-void
.end method
