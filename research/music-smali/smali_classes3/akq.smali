.class public Lakq;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakq$c;,
        Lakq$b;,
        Lakq$a;
    }
.end annotation


# instance fields
.field private final a:[Lakr;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private final g:Lakr;

.field private final h:[F

.field private final i:[F

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Path;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 55
    new-array v1, v0, [Lakr;

    iput-object v1, p0, Lakq;->a:[Lakr;

    .line 56
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    .line 57
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lakq;->c:[Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lakq;->d:Landroid/graphics/PointF;

    .line 61
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lakq;->e:Landroid/graphics/Path;

    .line 62
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lakq;->f:Landroid/graphics/Path;

    .line 63
    new-instance v1, Lakr;

    invoke-direct {v1}, Lakr;-><init>()V

    iput-object v1, p0, Lakq;->g:Lakr;

    const/4 v1, 0x2

    .line 64
    new-array v2, v1, [F

    iput-object v2, p0, Lakq;->h:[F

    .line 65
    new-array v1, v1, [F

    iput-object v1, p0, Lakq;->i:[F

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lakq;->j:Landroid/graphics/Path;

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lakq;->k:Landroid/graphics/Path;

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lakq;->l:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lakq;->a:[Lakr;

    new-instance v3, Lakr;

    invoke-direct {v3}, Lakr;-><init>()V

    aput-object v3, v2, v1

    .line 74
    iget-object v2, p0, Lakq;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 75
    iget-object v2, p0, Lakq;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;I)F
    .locals 4

    .line 247
    iget-object v0, p0, Lakq;->h:[F

    iget-object v1, p0, Lakq;->a:[Lakr;

    aget-object v1, v1, p2

    iget v1, v1, Lakr;->c:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 248
    iget-object v0, p0, Lakq;->h:[F

    iget-object v1, p0, Lakq;->a:[Lakr;

    aget-object v1, v1, p2

    iget v1, v1, Lakr;->d:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 249
    iget-object v0, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lakq;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq p2, v3, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object p2, p0, Lakq;->h:[F

    aget p2, p2, v3

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lakq;->h:[F

    aget p2, p2, v2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method private a(ILakp;)Lakg;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 272
    invoke-virtual {p2}, Lakp;->c()Lakg;

    move-result-object p1

    return-object p1

    .line 269
    :cond_0
    invoke-virtual {p2}, Lakp;->b()Lakg;

    move-result-object p1

    return-object p1

    .line 267
    :cond_1
    invoke-virtual {p2}, Lakp;->e()Lakg;

    move-result-object p1

    return-object p1

    .line 265
    :cond_2
    invoke-virtual {p2}, Lakp;->d()Lakg;

    move-result-object p1

    return-object p1
.end method

.method public static a()Lakq;
    .locals 1

    .line 83
    sget-object v0, Lakq$a;->a:Lakq;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .line 160
    iget-object v0, p0, Lakq;->h:[F

    iget-object v1, p0, Lakq;->a:[Lakr;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lakr;->d()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 161
    iget-object v0, p0, Lakq;->h:[F

    iget-object v1, p0, Lakq;->a:[Lakr;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lakr;->e()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 162
    iget-object v0, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Lakq;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 163
    invoke-direct {p0, p1}, Lakq;->b(I)F

    move-result v0

    .line 164
    iget-object v1, p0, Lakq;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 165
    iget-object v1, p0, Lakq;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Lakq;->h:[F

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 166
    iget-object v1, p0, Lakq;->c:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private a(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 319
    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 315
    :cond_0
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 312
    :cond_1
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 309
    :cond_2
    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return-void
.end method

.method private a(Lakq$c;I)V
    .locals 7

    .line 148
    iget-object v0, p1, Lakq$c;->a:Lakp;

    invoke-direct {p0, p2, v0}, Lakq;->b(ILakp;)Lakf;

    move-result-object v6

    .line 149
    iget-object v0, p1, Lakq$c;->a:Lakp;

    invoke-direct {p0, p2, v0}, Lakq;->a(ILakp;)Lakg;

    move-result-object v1

    iget-object v0, p0, Lakq;->a:[Lakr;

    aget-object v2, v0, p2

    iget v4, p1, Lakq$c;->e:F

    iget-object v5, p1, Lakq$c;->c:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    .line 150
    invoke-virtual/range {v1 .. v6}, Lakg;->a(Lakr;FFLandroid/graphics/RectF;Lakf;)V

    .line 152
    invoke-direct {p0, p2}, Lakq;->b(I)F

    move-result v0

    .line 153
    iget-object v1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 154
    iget-object p1, p1, Lakq$c;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lakq;->d:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1, v1}, Lakq;->a(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 155
    iget-object p1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    iget-object v1, p0, Lakq;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lakq;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 156
    iget-object p1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private a(Landroid/graphics/Path;I)Z
    .locals 3

    .line 234
    iget-object v0, p0, Lakq;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 235
    iget-object v0, p0, Lakq;->a:[Lakr;

    aget-object v0, v0, p2

    iget-object v1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object p2, v1, p2

    iget-object v1, p0, Lakq;->k:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v1}, Lakr;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 237
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 239
    iget-object v1, p0, Lakq;->k:Landroid/graphics/Path;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 240
    iget-object v1, p0, Lakq;->k:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 241
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 243
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private b(I)F
    .locals 0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    return p1
.end method

.method private b(ILakp;)Lakf;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 287
    invoke-virtual {p2}, Lakp;->g()Lakf;

    move-result-object p1

    return-object p1

    .line 284
    :cond_0
    invoke-virtual {p2}, Lakp;->f()Lakf;

    move-result-object p1

    return-object p1

    .line 282
    :cond_1
    invoke-virtual {p2}, Lakp;->i()Lakf;

    move-result-object p1

    return-object p1

    .line 280
    :cond_2
    invoke-virtual {p2}, Lakp;->h()Lakf;

    move-result-object p1

    return-object p1
.end method

.method private b(Lakq$c;I)V
    .locals 4

    .line 170
    iget-object v0, p0, Lakq;->h:[F

    iget-object v1, p0, Lakq;->a:[Lakr;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lakr;->b()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 171
    iget-object v0, p0, Lakq;->h:[F

    iget-object v1, p0, Lakq;->a:[Lakr;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lakr;->c()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 172
    iget-object v0, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lakq;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez p2, :cond_0

    .line 174
    iget-object v0, p1, Lakq$c;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lakq;->h:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p1, Lakq$c;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lakq;->h:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    :goto_0
    iget-object v0, p0, Lakq;->a:[Lakr;

    aget-object v0, v0, p2

    iget-object v1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lakq$c;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lakr;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 179
    iget-object v0, p1, Lakq$c;->d:Lakq$b;

    if-eqz v0, :cond_1

    .line 180
    iget-object p1, p1, Lakq$c;->d:Lakq$b;

    iget-object v0, p0, Lakq;->a:[Lakr;

    aget-object v0, v0, p2

    iget-object v1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Lakq$b;->a(Lakr;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method private c(ILakp;)Laki;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 302
    invoke-virtual {p2}, Lakp;->l()Laki;

    move-result-object p1

    return-object p1

    .line 299
    :cond_0
    invoke-virtual {p2}, Lakp;->k()Laki;

    move-result-object p1

    return-object p1

    .line 297
    :cond_1
    invoke-virtual {p2}, Lakp;->j()Laki;

    move-result-object p1

    return-object p1

    .line 295
    :cond_2
    invoke-virtual {p2}, Lakp;->m()Laki;

    move-result-object p1

    return-object p1
.end method

.method private c(Lakq$c;I)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 185
    rem-int/lit8 v0, v0, 0x4

    .line 186
    iget-object v1, p0, Lakq;->h:[F

    iget-object v2, p0, Lakq;->a:[Lakr;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lakr;->d()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 187
    iget-object v1, p0, Lakq;->h:[F

    iget-object v2, p0, Lakq;->a:[Lakr;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lakr;->e()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 188
    iget-object v1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lakq;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    iget-object v1, p0, Lakq;->i:[F

    iget-object v2, p0, Lakq;->a:[Lakr;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lakr;->b()F

    move-result v2

    aput v2, v1, v3

    .line 191
    iget-object v1, p0, Lakq;->i:[F

    iget-object v2, p0, Lakq;->a:[Lakr;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lakr;->c()F

    move-result v2

    aput v2, v1, v4

    .line 192
    iget-object v1, p0, Lakq;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Lakq;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    iget-object v1, p0, Lakq;->h:[F

    aget v2, v1, v3

    iget-object v5, p0, Lakq;->i:[F

    aget v6, v5, v3

    sub-float/2addr v2, v6

    float-to-double v6, v2

    aget v1, v1, v4

    aget v2, v5, v4

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 196
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 197
    iget-object v5, p1, Lakq$c;->c:Landroid/graphics/RectF;

    invoke-direct {p0, v5, p2}, Lakq;->a(Landroid/graphics/RectF;I)F

    move-result v5

    .line 198
    iget-object v6, p0, Lakq;->g:Lakr;

    invoke-virtual {v6, v2, v2}, Lakr;->a(FF)V

    .line 199
    iget-object v2, p1, Lakq$c;->a:Lakp;

    invoke-direct {p0, p2, v2}, Lakq;->c(ILakp;)Laki;

    move-result-object v2

    .line 200
    iget v6, p1, Lakq$c;->e:F

    iget-object v7, p0, Lakq;->g:Lakr;

    invoke-virtual {v2, v1, v5, v6, v7}, Laki;->a(FFFLakr;)V

    .line 201
    iget-object v1, p0, Lakq;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 202
    iget-object v1, p0, Lakq;->g:Lakr;

    iget-object v5, p0, Lakq;->c:[Landroid/graphics/Matrix;

    aget-object v5, v5, p2

    iget-object v6, p0, Lakq;->j:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v6}, Lakr;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 204
    iget-boolean v1, p0, Lakq;->l:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v1, v5, :cond_1

    .line 206
    invoke-virtual {v2}, Laki;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lakq;->j:Landroid/graphics/Path;

    .line 207
    invoke-direct {p0, v1, p2}, Lakq;->a(Landroid/graphics/Path;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lakq;->j:Landroid/graphics/Path;

    .line 208
    invoke-direct {p0, v1, v0}, Lakq;->a(Landroid/graphics/Path;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lakq;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lakq;->f:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 216
    iget-object v0, p0, Lakq;->h:[F

    iget-object v1, p0, Lakq;->g:Lakr;

    invoke-virtual {v1}, Lakr;->b()F

    move-result v1

    aput v1, v0, v3

    .line 217
    iget-object v0, p0, Lakq;->h:[F

    iget-object v1, p0, Lakq;->g:Lakr;

    invoke-virtual {v1}, Lakr;->c()F

    move-result v1

    aput v1, v0, v4

    .line 218
    iget-object v0, p0, Lakq;->c:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lakq;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 219
    iget-object v0, p0, Lakq;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lakq;->h:[F

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 222
    iget-object v0, p0, Lakq;->g:Lakr;

    iget-object v1, p0, Lakq;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lakq;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lakr;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lakq;->g:Lakr;

    iget-object v1, p0, Lakq;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lakq$c;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lakr;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 227
    :goto_0
    iget-object v0, p1, Lakq$c;->d:Lakq$b;

    if-eqz v0, :cond_2

    .line 228
    iget-object p1, p1, Lakq$c;->d:Lakq$b;

    iget-object v0, p0, Lakq;->g:Lakr;

    iget-object v1, p0, Lakq;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Lakq$b;->b(Lakr;Landroid/graphics/Matrix;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lakp;FLandroid/graphics/RectF;Lakq$b;Landroid/graphics/Path;)V
    .locals 8

    .line 118
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 119
    iget-object v0, p0, Lakq;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 120
    iget-object v0, p0, Lakq;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 121
    iget-object v0, p0, Lakq;->f:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 122
    new-instance v0, Lakq$c;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lakq$c;-><init>(Lakp;FLandroid/graphics/RectF;Lakq$b;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    .line 129
    invoke-direct {p0, v0, p2}, Lakq;->a(Lakq$c;I)V

    .line 130
    invoke-direct {p0, p2}, Lakq;->a(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_1

    .line 134
    invoke-direct {p0, v0, p1}, Lakq;->b(Lakq$c;I)V

    .line 135
    invoke-direct {p0, v0, p1}, Lakq;->c(Lakq$c;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 139
    iget-object p1, p0, Lakq;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 142
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lakq;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 143
    iget-object p1, p0, Lakq;->e:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p5, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    return-void
.end method

.method public a(Lakp;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 99
    invoke-virtual/range {v0 .. v5}, Lakq;->a(Lakp;FLandroid/graphics/RectF;Lakq$b;Landroid/graphics/Path;)V

    return-void
.end method
