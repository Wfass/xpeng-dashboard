.class public abstract Ljm;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Ljq;
.implements Ljw;
.implements Lkh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljm$a;
    }
.end annotation


# instance fields
.field protected final a:Lmq;

.field final b:Landroid/graphics/Paint;

.field c:F

.field private final d:Landroid/graphics/PathMeasure;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/RectF;

.field private final h:Lcom/airbnb/lottie/f;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljm$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:[F

.field private final k:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final n:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lkj;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lmq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLlm;Llk;Ljava/util/List;Llk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/f;",
            "Lmq;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Llm;",
            "Llk;",
            "Ljava/util/List<",
            "Llk;",
            ">;",
            "Llk;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Ljm;->d:Landroid/graphics/PathMeasure;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljm;->e:Landroid/graphics/Path;

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljm;->f:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ljm;->g:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljm;->i:Ljava/util/List;

    .line 50
    new-instance v0, Ljl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljl;-><init>(I)V

    iput-object v0, p0, Ljm;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Ljm;->c:F

    .line 66
    iput-object p1, p0, Ljm;->h:Lcom/airbnb/lottie/f;

    .line 67
    iput-object p2, p0, Ljm;->a:Lmq;

    .line 69
    iget-object p1, p0, Ljm;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object p1, p0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 71
    iget-object p1, p0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 72
    iget-object p1, p0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 74
    invoke-virtual {p6}, Llm;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljm;->l:Lkh;

    .line 75
    invoke-virtual {p7}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljm;->k:Lkh;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Ljm;->n:Lkh;

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p9}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljm;->n:Lkh;

    .line 82
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljm;->m:Ljava/util/List;

    .line 83
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Ljm;->j:[F

    const/4 p1, 0x0

    move p3, p1

    .line 85
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 86
    iget-object p4, p0, Ljm;->m:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Llk;

    invoke-virtual {p5}, Llk;->a()Lkh;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 89
    :cond_1
    iget-object p3, p0, Ljm;->l:Lkh;

    invoke-virtual {p2, p3}, Lmq;->a(Lkh;)V

    .line 90
    iget-object p3, p0, Ljm;->k:Lkh;

    invoke-virtual {p2, p3}, Lmq;->a(Lkh;)V

    move p3, p1

    .line 91
    :goto_2
    iget-object p4, p0, Ljm;->m:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 92
    iget-object p4, p0, Ljm;->m:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkh;

    invoke-virtual {p2, p4}, Lmq;->a(Lkh;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 94
    :cond_2
    iget-object p3, p0, Ljm;->n:Lkh;

    if-eqz p3, :cond_3

    .line 95
    invoke-virtual {p2, p3}, Lmq;->a(Lkh;)V

    .line 98
    :cond_3
    iget-object p3, p0, Ljm;->l:Lkh;

    invoke-virtual {p3, p0}, Lkh;->a(Lkh$a;)V

    .line 99
    iget-object p3, p0, Ljm;->k:Lkh;

    invoke-virtual {p3, p0}, Lkh;->a(Lkh$a;)V

    .line 101
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 102
    iget-object p3, p0, Ljm;->m:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkh;

    invoke-virtual {p3, p0}, Lkh;->a(Lkh$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 104
    :cond_4
    iget-object p1, p0, Ljm;->n:Lkh;

    if-eqz p1, :cond_5

    .line 105
    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 108
    :cond_5
    invoke-virtual {p2}, Lmq;->e()Llx;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 109
    invoke-virtual {p2}, Lmq;->e()Llx;

    move-result-object p1

    invoke-virtual {p1}, Llx;->a()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljm;->p:Lkh;

    .line 110
    iget-object p1, p0, Ljm;->p:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 111
    iget-object p1, p0, Ljm;->p:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 113
    :cond_6
    invoke-virtual {p2}, Lmq;->f()Lnp;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 114
    new-instance p1, Lkj;

    invoke-virtual {p2}, Lmq;->f()Lnp;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lkj;-><init>(Lkh$a;Lmq;Lnp;)V

    iput-object p1, p0, Ljm;->q:Lkj;

    :cond_7
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljm$a;Landroid/graphics/Matrix;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "StrokeContent#applyTrimPath"

    .line 213
    invoke-static {v3}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 214
    invoke-static/range {p2 .. p2}, Ljm$a;->b(Ljm$a;)Lkg;

    move-result-object v4

    if-nez v4, :cond_0

    .line 215
    invoke-static {v3}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void

    .line 218
    :cond_0
    iget-object v4, v0, Ljm;->e:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 219
    invoke-static/range {p2 .. p2}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_1

    .line 220
    iget-object v5, v0, Ljm;->e:Landroid/graphics/Path;

    invoke-static/range {p2 .. p2}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljy;

    invoke-interface {v6}, Ljy;->d()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 222
    :cond_1
    invoke-static/range {p2 .. p2}, Ljm$a;->b(Ljm$a;)Lkg;

    move-result-object v4

    invoke-virtual {v4}, Lkg;->c()Lkh;

    move-result-object v4

    invoke-virtual {v4}, Lkh;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 223
    invoke-static/range {p2 .. p2}, Ljm$a;->b(Ljm$a;)Lkg;

    move-result-object v6

    invoke-virtual {v6}, Lkg;->d()Lkh;

    move-result-object v6

    invoke-virtual {v6}, Lkh;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float/2addr v6, v5

    .line 224
    invoke-static/range {p2 .. p2}, Ljm$a;->b(Ljm$a;)Lkg;

    move-result-object v5

    invoke-virtual {v5}, Lkg;->e()Lkh;

    move-result-object v5

    invoke-virtual {v5}, Lkh;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v5, v7

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_2

    const v7, 0x3f7d70a4    # 0.99f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    .line 228
    iget-object v2, v0, Ljm;->e:Landroid/graphics/Path;

    iget-object v4, v0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    invoke-static {v3}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void

    .line 233
    :cond_2
    iget-object v7, v0, Ljm;->d:Landroid/graphics/PathMeasure;

    iget-object v8, v0, Ljm;->e:Landroid/graphics/Path;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 234
    iget-object v7, v0, Ljm;->d:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    .line 235
    :goto_1
    iget-object v8, v0, Ljm;->d:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 236
    iget-object v8, v0, Ljm;->d:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    add-float/2addr v7, v8

    goto :goto_1

    :cond_3
    mul-float/2addr v5, v7

    mul-float/2addr v4, v7

    add-float/2addr v4, v5

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    add-float v5, v4, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v5, v8

    .line 240
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 243
    invoke-static/range {p2 .. p2}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ltz v6, :cond_b

    .line 244
    iget-object v12, v0, Ljm;->f:Landroid/graphics/Path;

    invoke-static/range {p2 .. p2}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljy;

    invoke-interface {v13}, Ljy;->d()Landroid/graphics/Path;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 245
    iget-object v12, v0, Ljm;->f:Landroid/graphics/Path;

    invoke-virtual {v12, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 246
    iget-object v12, v0, Ljm;->d:Landroid/graphics/PathMeasure;

    iget-object v13, v0, Ljm;->f:Landroid/graphics/Path;

    invoke-virtual {v12, v13, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 247
    iget-object v12, v0, Ljm;->d:Landroid/graphics/PathMeasure;

    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    cmpl-float v13, v5, v7

    if-lez v13, :cond_5

    sub-float v13, v5, v7

    add-float v14, v11, v12

    cmpg-float v14, v13, v14

    if-gez v14, :cond_5

    cmpg-float v14, v11, v13

    if-gez v14, :cond_5

    cmpl-float v14, v4, v7

    if-lez v14, :cond_4

    sub-float v14, v4, v7

    div-float/2addr v14, v12

    goto :goto_3

    :cond_4
    move v14, v10

    :goto_3
    div-float/2addr v13, v12

    .line 258
    invoke-static {v13, v8}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 259
    iget-object v15, v0, Ljm;->f:Landroid/graphics/Path;

    invoke-static {v15, v14, v13, v10}, Lpb;->a(Landroid/graphics/Path;FFF)V

    .line 260
    iget-object v13, v0, Ljm;->f:Landroid/graphics/Path;

    iget-object v14, v0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_5
    add-float v13, v11, v12

    cmpg-float v14, v13, v4

    if-ltz v14, :cond_a

    cmpl-float v14, v11, v5

    if-lez v14, :cond_6

    goto :goto_6

    :cond_6
    cmpg-float v14, v13, v5

    if-gtz v14, :cond_7

    cmpg-float v14, v4, v11

    if-gez v14, :cond_7

    .line 266
    iget-object v13, v0, Ljm;->f:Landroid/graphics/Path;

    iget-object v14, v0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    cmpg-float v14, v4, v11

    if-gez v14, :cond_8

    move v14, v10

    goto :goto_4

    :cond_8
    sub-float v14, v4, v11

    div-float/2addr v14, v12

    :goto_4
    cmpl-float v13, v5, v13

    if-lez v13, :cond_9

    move v13, v8

    goto :goto_5

    :cond_9
    sub-float v13, v5, v11

    div-float/2addr v13, v12

    .line 280
    :goto_5
    iget-object v15, v0, Ljm;->f:Landroid/graphics/Path;

    invoke-static {v15, v14, v13, v10}, Lpb;->a(Landroid/graphics/Path;FFF)V

    .line 281
    iget-object v13, v0, Ljm;->f:Landroid/graphics/Path;

    iget-object v14, v0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    :goto_6
    add-float/2addr v11, v12

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 285
    :cond_b
    invoke-static {v3}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method private a(Landroid/graphics/Matrix;)V
    .locals 5

    const-string v0, "StrokeContent#applyDashPattern"

    .line 314
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Ljm;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void

    .line 320
    :cond_0
    invoke-static {p1}, Lpb;->a(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v1, 0x0

    .line 321
    :goto_0
    iget-object v2, p0, Ljm;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 322
    iget-object v2, p0, Ljm;->j:[F

    iget-object v3, p0, Ljm;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkh;

    invoke-virtual {v3}, Lkh;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v1

    .line 327
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    .line 328
    iget-object v2, p0, Ljm;->j:[F

    aget v3, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 329
    aput v4, v2, v1

    goto :goto_1

    .line 332
    :cond_1
    iget-object v2, p0, Ljm;->j:[F

    aget v3, v2, v1

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 333
    aput v4, v2, v1

    .line 336
    :cond_2
    :goto_1
    iget-object v2, p0, Ljm;->j:[F

    aget v3, v2, v1

    mul-float/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_3
    iget-object v1, p0, Ljm;->n:Lkh;

    if-nez v1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr p1, v1

    .line 339
    :goto_2
    iget-object v1, p0, Ljm;->b:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Ljm;->j:[F

    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 340
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const-string v0, "StrokeContent#draw"

    .line 158
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 159
    invoke-static {p2}, Lpb;->b(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void

    :cond_0
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    .line 163
    iget-object v2, p0, Ljm;->l:Lkh;

    check-cast v2, Lkm;

    invoke-virtual {v2}, Lkm;->i()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p3, v2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 164
    iget-object v1, p0, Ljm;->b:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-static {p3, v3, v2}, Lpa;->a(III)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    iget-object p3, p0, Ljm;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Ljm;->k:Lkh;

    check-cast v1, Lkk;

    invoke-virtual {v1}, Lkk;->i()F

    move-result v1

    invoke-static {p2}, Lpb;->a(Landroid/graphics/Matrix;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object p3, p0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/4 v1, 0x0

    cmpg-float p3, p3, v1

    if-gtz p3, :cond_1

    .line 168
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void

    .line 171
    :cond_1
    invoke-direct {p0, p2}, Ljm;->a(Landroid/graphics/Matrix;)V

    .line 173
    iget-object p3, p0, Ljm;->o:Lkh;

    if-eqz p3, :cond_2

    .line 174
    iget-object v2, p0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 177
    :cond_2
    iget-object p3, p0, Ljm;->p:Lkh;

    if-eqz p3, :cond_5

    .line 178
    invoke-virtual {p3}, Lkh;->g()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float v1, p3, v1

    if-nez v1, :cond_3

    .line 180
    iget-object v1, p0, Ljm;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 181
    :cond_3
    iget v1, p0, Ljm;->c:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Ljm;->a:Lmq;

    invoke-virtual {v1, p3}, Lmq;->b(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    .line 183
    iget-object v2, p0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 185
    :cond_4
    :goto_0
    iput p3, p0, Ljm;->c:F

    .line 187
    :cond_5
    iget-object p3, p0, Ljm;->q:Lkj;

    if-eqz p3, :cond_6

    .line 188
    iget-object v1, p0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Lkj;->a(Landroid/graphics/Paint;)V

    .line 191
    :cond_6
    :goto_1
    iget-object p3, p0, Ljm;->i:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_9

    .line 192
    iget-object p3, p0, Ljm;->i:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljm$a;

    .line 195
    invoke-static {p3}, Ljm$a;->b(Ljm$a;)Lkg;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 196
    invoke-direct {p0, p1, p3, p2}, Ljm;->a(Landroid/graphics/Canvas;Ljm$a;Landroid/graphics/Matrix;)V

    goto :goto_3

    :cond_7
    const-string v1, "StrokeContent#buildPath"

    .line 198
    invoke-static {v1}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Ljm;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 200
    invoke-static {p3}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_8

    .line 201
    iget-object v4, p0, Ljm;->e:Landroid/graphics/Path;

    invoke-static {p3}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljy;

    invoke-interface {v5}, Ljy;->d()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 203
    :cond_8
    invoke-static {v1}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    const-string p3, "StrokeContent#drawPath"

    .line 204
    invoke-static {p3}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Ljm;->e:Landroid/graphics/Path;

    iget-object v2, p0, Ljm;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 206
    invoke-static {p3}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    :cond_9
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 6

    const-string p3, "StrokeContent#getBounds"

    .line 289
    invoke-static {p3}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Ljm;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    move v1, v0

    .line 291
    :goto_0
    iget-object v2, p0, Ljm;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    iget-object v2, p0, Ljm;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljm$a;

    move v3, v0

    .line 293
    :goto_1
    invoke-static {v2}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 294
    iget-object v4, p0, Ljm;->e:Landroid/graphics/Path;

    invoke-static {v2}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljy;

    invoke-interface {v5}, Ljy;->d()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_1
    iget-object p2, p0, Ljm;->e:Landroid/graphics/Path;

    iget-object v1, p0, Ljm;->g:Landroid/graphics/RectF;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 299
    iget-object p2, p0, Ljm;->k:Lkh;

    check-cast p2, Lkk;

    invoke-virtual {p2}, Lkk;->i()F

    move-result p2

    .line 300
    iget-object v0, p0, Ljm;->g:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget-object v2, p0, Ljm;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p2

    iget-object v3, p0, Ljm;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iget-object v4, p0, Ljm;->g:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 302
    iget-object p2, p0, Ljm;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 304
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 310
    invoke-static {p3}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public a(Ljava/lang/Object;Lpe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lpe<",
            "TT;>;)V"
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/airbnb/lottie/k;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 353
    iget-object p1, p0, Ljm;->l:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto/16 :goto_0

    .line 354
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/k;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 355
    iget-object p1, p0, Ljm;->k:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto/16 :goto_0

    .line 356
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/k;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    .line 357
    iget-object p1, p0, Ljm;->o:Lkh;

    if-eqz p1, :cond_2

    .line 358
    iget-object v0, p0, Ljm;->a:Lmq;

    invoke-virtual {v0, p1}, Lmq;->b(Lkh;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    .line 362
    iput-object p1, p0, Ljm;->o:Lkh;

    goto/16 :goto_0

    .line 364
    :cond_3
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Ljm;->o:Lkh;

    .line 366
    iget-object p1, p0, Ljm;->o:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 367
    iget-object p1, p0, Ljm;->a:Lmq;

    iget-object p2, p0, Ljm;->o:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    goto :goto_0

    .line 369
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/k;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 370
    iget-object p1, p0, Ljm;->p:Lkh;

    if-eqz p1, :cond_5

    .line 371
    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 373
    :cond_5
    new-instance p1, Lkx;

    invoke-direct {p1, p2}, Lkx;-><init>(Lpe;)V

    iput-object p1, p0, Ljm;->p:Lkh;

    .line 375
    iget-object p1, p0, Ljm;->p:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 376
    iget-object p1, p0, Ljm;->a:Lmq;

    iget-object p2, p0, Ljm;->p:Lkh;

    invoke-virtual {p1, p2}, Lmq;->a(Lkh;)V

    goto :goto_0

    .line 378
    :cond_6
    sget-object v0, Lcom/airbnb/lottie/k;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Ljm;->q:Lkj;

    if-eqz v0, :cond_7

    .line 379
    invoke-virtual {v0, p2}, Lkj;->a(Lpe;)V

    goto :goto_0

    .line 380
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/k;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Ljm;->q:Lkj;

    if-eqz v0, :cond_8

    .line 381
    invoke-virtual {v0, p2}, Lkj;->b(Lpe;)V

    goto :goto_0

    .line 382
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/k;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Ljm;->q:Lkj;

    if-eqz v0, :cond_9

    .line 383
    invoke-virtual {v0, p2}, Lkj;->c(Lpe;)V

    goto :goto_0

    .line 384
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/k;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Ljm;->q:Lkj;

    if-eqz v0, :cond_a

    .line 385
    invoke-virtual {v0, p2}, Lkj;->d(Lpe;)V

    goto :goto_0

    .line 386
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/k;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Ljm;->q:Lkj;

    if-eqz p1, :cond_b

    .line 387
    invoke-virtual {p1, p2}, Lkj;->e(Lpe;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljo;

    .line 126
    instance-of v4, v3, Lkg;

    if-eqz v4, :cond_0

    check-cast v3, Lkg;

    .line 127
    invoke-virtual {v3}, Lkg;->b()Lmp$a;

    move-result-object v4

    sget-object v5, Lmp$a;->INDIVIDUALLY:Lmp$a;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v2, p0}, Lkg;->a(Lkh$a;)V

    .line 136
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v0, v1

    :goto_1
    if-ltz p1, :cond_7

    .line 137
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljo;

    .line 138
    instance-of v4, v3, Lkg;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lkg;

    .line 139
    invoke-virtual {v4}, Lkg;->b()Lmp$a;

    move-result-object v5

    sget-object v6, Lmp$a;->INDIVIDUALLY:Lmp$a;

    if-ne v5, v6, :cond_4

    if-eqz v0, :cond_3

    .line 141
    iget-object v3, p0, Ljm;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_3
    new-instance v0, Ljm$a;

    invoke-direct {v0, v4, v1}, Ljm$a;-><init>(Lkg;Ljm$1;)V

    .line 144
    invoke-virtual {v4, p0}, Lkg;->a(Lkh$a;)V

    goto :goto_2

    .line 145
    :cond_4
    instance-of v4, v3, Ljy;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    .line 147
    new-instance v0, Ljm$a;

    invoke-direct {v0, v2, v1}, Ljm$a;-><init>(Lkg;Ljm$1;)V

    .line 149
    :cond_5
    invoke-static {v0}, Ljm$a;->a(Ljm$a;)Ljava/util/List;

    move-result-object v4

    check-cast v3, Ljy;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 153
    iget-object p1, p0, Ljm;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
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

    .line 345
    invoke-static {p1, p2, p3, p4, p0}, Lpa;->a(Lle;ILjava/util/List;Lle;Ljw;)V

    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .line 119
    iget-object v0, p0, Ljm;->h:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method
