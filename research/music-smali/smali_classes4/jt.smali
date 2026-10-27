.class public Ljt;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Ljq;
.implements Ljw;
.implements Lkh$a;


# instance fields
.field a:F

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lmq;

.field private final e:Landroidx/collection/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/c<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/collection/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/c<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/RectF;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljy;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lmd;

.field private final l:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Lma;",
            "Lma;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lkx;

.field private final r:Lcom/airbnb/lottie/f;

.field private final s:I

.field private t:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lkj;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lmq;Lmb;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/collection/c;

    invoke-direct {v0}, Landroidx/collection/c;-><init>()V

    iput-object v0, p0, Ljt;->e:Landroidx/collection/c;

    .line 49
    new-instance v0, Landroidx/collection/c;

    invoke-direct {v0}, Landroidx/collection/c;-><init>()V

    iput-object v0, p0, Ljt;->f:Landroidx/collection/c;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljt;->g:Landroid/graphics/Path;

    .line 51
    new-instance v0, Ljl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljl;-><init>(I)V

    iput-object v0, p0, Ljt;->h:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ljt;->i:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljt;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Ljt;->a:F

    .line 68
    iput-object p2, p0, Ljt;->d:Lmq;

    .line 69
    invoke-virtual {p3}, Lmb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljt;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {p3}, Lmb;->h()Z

    move-result v0

    iput-boolean v0, p0, Ljt;->c:Z

    .line 71
    iput-object p1, p0, Ljt;->r:Lcom/airbnb/lottie/f;

    .line 72
    invoke-virtual {p3}, Lmb;->b()Lmd;

    move-result-object v0

    iput-object v0, p0, Ljt;->k:Lmd;

    .line 73
    iget-object v0, p0, Ljt;->g:Landroid/graphics/Path;

    invoke-virtual {p3}, Lmb;->c()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 74
    invoke-virtual {p1}, Lcom/airbnb/lottie/f;->getComposition()Lcom/airbnb/lottie/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/d;->e()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Ljt;->s:I

    .line 76
    invoke-virtual {p3}, Lmb;->d()Lll;

    move-result-object p1

    invoke-virtual {p1}, Lll;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljt;->l:Lkh;

    .line 77
    iget-object p1, p0, Ljt;->l:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 78
    iget-object p1, p0, Ljt;->l:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 80
    invoke-virtual {p3}, Lmb;->e()Llm;

    move-result-object p1

    invoke-virtual {p1}, Llm;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljt;->m:Lkh;

    .line 81
    iget-object p1, p0, Ljt;->m:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 82
    iget-object p1, p0, Ljt;->m:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 84
    invoke-virtual {p3}, Lmb;->f()Llo;

    move-result-object p1

    invoke-virtual {p1}, Llo;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljt;->n:Lkh;

    .line 85
    iget-object p1, p0, Ljt;->n:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 86
    iget-object p1, p0, Ljt;->n:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 88
    invoke-virtual {p3}, Lmb;->g()Llo;

    move-result-object p1

    invoke-virtual {p1}, Llo;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljt;->o:Lkh;

    .line 89
    iget-object p1, p0, Ljt;->o:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 90
    iget-object p1, p0, Ljt;->o:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 92
    invoke-virtual {p2}, Lmq;->e()Llx;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p2}, Lmq;->e()Llx;

    move-result-object p1

    invoke-virtual {p1}, Llx;->a()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljt;->t:Lkh;

    .line 94
    iget-object p1, p0, Ljt;->t:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 95
    iget-object p1, p0, Ljt;->t:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 97
    :cond_0
    invoke-virtual {p2}, Lmq;->f()Lnp;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    new-instance p1, Lkj;

    invoke-virtual {p2}, Lmq;->f()Lnp;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lkj;-><init>(Lkh$a;Lmq;Lnp;)V

    iput-object p1, p0, Ljt;->u:Lkj;

    :cond_1
    return-void
.end method

.method private a([I)[I
    .locals 4

    .line 240
    iget-object v0, p0, Ljt;->q:Lkx;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Lkx;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 242
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 243
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 244
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 248
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 249
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private b()Landroid/graphics/LinearGradient;
    .locals 14

    .line 182
    invoke-direct {p0}, Ljt;->d()I

    move-result v0

    .line 183
    iget-object v1, p0, Ljt;->e:Landroidx/collection/c;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Ljt;->n:Lkh;

    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 188
    iget-object v1, p0, Ljt;->o:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 189
    iget-object v4, p0, Ljt;->l:Lkh;

    invoke-virtual {v4}, Lkh;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lma;

    .line 190
    invoke-virtual {v4}, Lma;->b()[I

    move-result-object v5

    invoke-direct {p0, v5}, Ljt;->a([I)[I

    move-result-object v11

    .line 191
    invoke-virtual {v4}, Lma;->a()[F

    move-result-object v12

    .line 192
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 194
    iget-object v0, p0, Ljt;->e:Landroidx/collection/c;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/collection/c;->b(JLjava/lang/Object;)V

    return-object v4
.end method

.method private c()Landroid/graphics/RadialGradient;
    .locals 13

    .line 199
    invoke-direct {p0}, Ljt;->d()I

    move-result v0

    .line 200
    iget-object v1, p0, Ljt;->f:Landroidx/collection/c;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/c;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Ljt;->n:Lkh;

    invoke-virtual {v0}, Lkh;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 205
    iget-object v1, p0, Ljt;->o:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 206
    iget-object v4, p0, Ljt;->l:Lkh;

    invoke-virtual {v4}, Lkh;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lma;

    .line 207
    invoke-virtual {v4}, Lma;->b()[I

    move-result-object v5

    invoke-direct {p0, v5}, Ljt;->a([I)[I

    move-result-object v10

    .line 208
    invoke-virtual {v4}, Lma;->a()[F

    move-result-object v11

    .line 209
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 210
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 211
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 212
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    .line 213
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const v0, 0x3a83126f    # 0.001f

    :cond_1
    move v9, v0

    .line 217
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 218
    iget-object v1, p0, Ljt;->f:Landroidx/collection/c;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/c;->b(JLjava/lang/Object;)V

    return-object v0
.end method

.method private d()I
    .locals 4

    .line 223
    iget-object v0, p0, Ljt;->n:Lkh;

    invoke-virtual {v0}, Lkh;->h()F

    move-result v0

    iget v1, p0, Ljt;->s:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 224
    iget-object v1, p0, Ljt;->o:Lkh;

    invoke-virtual {v1}, Lkh;->h()F

    move-result v1

    iget v2, p0, Ljt;->s:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 225
    iget-object v2, p0, Ljt;->l:Lkh;

    invoke-virtual {v2}, Lkh;->h()F

    move-result v2

    iget v3, p0, Ljt;->s:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    const/16 v3, 0x20f

    mul-int/2addr v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v2

    :cond_2
    return v3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Ljt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 116
    iget-boolean v0, p0, Ljt;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GradientFillContent#draw"

    .line 119
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Ljt;->g:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    move v2, v1

    .line 121
    :goto_0
    iget-object v3, p0, Ljt;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 122
    iget-object v3, p0, Ljt;->g:Landroid/graphics/Path;

    iget-object v4, p0, Ljt;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljy;

    invoke-interface {v4}, Ljy;->d()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Ljt;->g:Landroid/graphics/Path;

    iget-object v3, p0, Ljt;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 128
    iget-object v2, p0, Ljt;->k:Lmd;

    sget-object v3, Lmd;->LINEAR:Lmd;

    if-ne v2, v3, :cond_2

    .line 129
    invoke-direct {p0}, Ljt;->b()Landroid/graphics/LinearGradient;

    move-result-object v2

    goto :goto_1

    .line 131
    :cond_2
    invoke-direct {p0}, Ljt;->c()Landroid/graphics/RadialGradient;

    move-result-object v2

    .line 133
    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 134
    iget-object p2, p0, Ljt;->h:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 136
    iget-object p2, p0, Ljt;->p:Lkh;

    if-eqz p2, :cond_3

    .line 137
    iget-object v2, p0, Ljt;->h:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lkh;->g()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 140
    :cond_3
    iget-object p2, p0, Ljt;->t:Lkh;

    if-eqz p2, :cond_6

    .line 141
    invoke-virtual {p2}, Lkh;->g()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_4

    .line 143
    iget-object v2, p0, Ljt;->h:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    .line 144
    :cond_4
    iget v2, p0, Ljt;->a:F

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_5

    .line 145
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, p2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 146
    iget-object v3, p0, Ljt;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 148
    :cond_5
    :goto_2
    iput p2, p0, Ljt;->a:F

    .line 150
    :cond_6
    iget-object p2, p0, Ljt;->u:Lkj;

    if-eqz p2, :cond_7

    .line 151
    iget-object v2, p0, Ljt;->h:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Lkj;->a(Landroid/graphics/Paint;)V

    :cond_7
    int-to-float p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    .line 154
    iget-object v2, p0, Ljt;->m:Lkh;

    invoke-virtual {v2}, Lkh;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 155
    iget-object p3, p0, Ljt;->h:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lpa;->a(III)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    iget-object p2, p0, Ljt;->g:Landroid/graphics/Path;

    iget-object p3, p0, Ljt;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 158
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 162
    iget-object p3, p0, Ljt;->g:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 163
    :goto_0
    iget-object v1, p0, Ljt;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Ljt;->g:Landroid/graphics/Path;

    iget-object v2, p0, Ljt;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljy;

    invoke-interface {v2}, Ljy;->d()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object p2, p0, Ljt;->g:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 169
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lpe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lpe<",
            "TT;>;)V"
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/airbnb/lottie/k;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 265
    iget-object p1, p0, Ljt;->m:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto/16 :goto_0

    .line 266
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/k;->K:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 267
    iget-object p1, p0, Ljt;->p:Lkh;

    if-eqz p1, :cond_1

    .line 268
    iget-object v0, p0, Ljt;->d:Lmq;

    invoke-virtual {v0, p1}, Lmq;->b(Lkh;)V

    :cond_1
    if-nez p2, :cond_2

    .line 272
    iput-object v1, p0, Ljt;->p:Lkh;

    goto/16 :goto_0

    .line 274
    :cond_2
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Ljt;->p:Lkh;

    .line 276
    iget-object p1, p0, Ljt;->p:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 277
    iget-object p1, p0, Ljt;->d:Lmq;

    iget-object p2, p0, Ljt;->p:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    goto/16 :goto_0

    .line 279
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/k;->L:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_6

    .line 280
    iget-object p1, p0, Ljt;->q:Lkx;

    if-eqz p1, :cond_4

    .line 281
    iget-object v0, p0, Ljt;->d:Lmq;

    invoke-virtual {v0, p1}, Lmq;->b(Lkh;)V

    :cond_4
    if-nez p2, :cond_5

    .line 285
    iput-object v1, p0, Ljt;->q:Lkx;

    goto/16 :goto_0

    .line 287
    :cond_5
    iget-object p1, p0, Ljt;->e:Landroidx/collection/c;

    invoke-virtual {p1}, Landroidx/collection/c;->d()V

    .line 288
    iget-object p1, p0, Ljt;->f:Landroidx/collection/c;

    invoke-virtual {p1}, Landroidx/collection/c;->d()V

    .line 289
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Ljt;->q:Lkx;

    .line 290
    iget-object p1, p0, Ljt;->q:Lkx;

    invoke-virtual {p1, p0}, Lkx;->a(Lkh$a;)V

    .line 291
    iget-object p1, p0, Ljt;->d:Lmq;

    iget-object p2, p0, Ljt;->q:Lkx;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    goto :goto_0

    .line 293
    :cond_6
    sget-object v0, Lcom/airbnb/lottie/k;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 294
    iget-object p1, p0, Ljt;->t:Lkh;

    if-eqz p1, :cond_7

    .line 295
    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 297
    :cond_7
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Ljt;->t:Lkh;

    .line 299
    iget-object p1, p0, Ljt;->t:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 300
    iget-object p1, p0, Ljt;->d:Lmq;

    iget-object p2, p0, Ljt;->t:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    goto :goto_0

    .line 302
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/k;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Ljt;->u:Lkj;

    if-eqz v0, :cond_9

    .line 303
    invoke-virtual {v0, p2}, Lkj;->a(Lpe;)V

    goto :goto_0

    .line 304
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/k;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Ljt;->u:Lkj;

    if-eqz v0, :cond_a

    .line 305
    invoke-virtual {v0, p2}, Lkj;->b(Lpe;)V

    goto :goto_0

    .line 306
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/k;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Ljt;->u:Lkj;

    if-eqz v0, :cond_b

    .line 307
    invoke-virtual {v0, p2}, Lkj;->c(Lpe;)V

    goto :goto_0

    .line 308
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/k;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Ljt;->u:Lkj;

    if-eqz v0, :cond_c

    .line 309
    invoke-virtual {v0, p2}, Lkj;->d(Lpe;)V

    goto :goto_0

    .line 310
    :cond_c
    sget-object v0, Lcom/airbnb/lottie/k;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Ljt;->u:Lkj;

    if-eqz p1, :cond_d

    .line 311
    invoke-virtual {p1, p2}, Lkj;->e(Lpe;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljo;",
            ">;",
            "Ljava/util/List<",
            "Ljo;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 107
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 108
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljo;

    .line 109
    instance-of v1, v0, Ljy;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Ljt;->j:Ljava/util/List;

    check-cast v0, Ljy;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lle;ILjava/util/List;Lle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lle;",
            "I",
            "Ljava/util/List<",
            "Lle;",
            ">;",
            "Lle;",
            ")V"
        }
    .end annotation

    .line 258
    invoke-static {p1, p2, p3, p4, p0}, Lpa;->a(Lle;ILjava/util/List;Lle;Ljw;)V

    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .line 103
    iget-object v0, p0, Ljt;->r:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method
