.class public final Lbym;
.super Lbyl;
.source "CircleDrawer.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final b:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lbyu;)V
    .locals 1

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lbyl;-><init>(Lbyu;)V

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lbym;->b:Landroid/graphics/RectF;

    return-void
.end method

.method private final a(Landroid/graphics/Canvas;FFF)V
    .locals 1

    const/4 v0, 0x3

    int-to-float v0, v0

    add-float/2addr p2, v0

    add-float/2addr p3, v0

    .line 165
    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v0

    .line 164
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final b(Landroid/graphics/Canvas;)V
    .locals 6

    .line 36
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->i()F

    move-result v0

    .line 37
    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->d()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    sget-object v3, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v4

    invoke-virtual {p0}, Lbym;->a()F

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lbyv;->a(Lbyu;FI)F

    move-result v3

    .line 40
    sget-object v4, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->a()F

    move-result v5

    invoke-virtual {v4, v5}, Lbyv;->b(F)F

    move-result v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float v5, v0, v5

    .line 41
    invoke-direct {p0, p1, v3, v4, v5}, Lbym;->a(Landroid/graphics/Canvas;FFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final c(Landroid/graphics/Canvas;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->c()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lbym;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0, p1}, Lbym;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lbym;->g(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 48
    :cond_3
    invoke-direct {p0, p1}, Lbym;->f(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private final d(Landroid/graphics/Canvas;)V
    .locals 10

    .line 56
    invoke-virtual {p0}, Lbym;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p0, v0}, Lbym;->a(Landroid/animation/ArgbEvaluator;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->k()I

    move-result v0

    .line 60
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->l()F

    move-result v1

    .line 61
    sget-object v2, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v3

    invoke-virtual {p0}, Lbym;->a()F

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lbyv;->a(Lbyu;FI)F

    move-result v2

    .line 62
    sget-object v3, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->a()F

    move-result v4

    invoke-virtual {v3, v4}, Lbyv;->b(F)F

    move-result v3

    .line 64
    invoke-virtual {p0}, Lbym;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v4, :cond_2

    .line 66
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v7

    invoke-virtual {v7}, Lbyu;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 65
    invoke-virtual {v4, v1, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v6

    if-eqz v4, :cond_1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/p;

    invoke-direct {p1, v5}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->i()F

    move-result v4

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-direct {p0, p1, v2, v3, v4}, Lbym;->a(Landroid/graphics/Canvas;FFF)V

    .line 72
    invoke-virtual {p0}, Lbym;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v4

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    int-to-float v8, v7

    sub-float/2addr v8, v1

    .line 75
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v9

    invoke-virtual {v9}, Lbyu;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 74
    invoke-virtual {v4, v8, v1, v9}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v4

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/p;

    invoke-direct {p1, v5}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->d()I

    move-result v1

    sub-int/2addr v1, v7

    if-ne v0, v1, :cond_5

    .line 80
    sget-object v0, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {p0}, Lbym;->a()F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lbyv;->a(Lbyu;FI)F

    move-result v0

    goto :goto_2

    .line 82
    :cond_5
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->g()F

    move-result v0

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->i()F

    move-result v0

    add-float/2addr v0, v2

    .line 84
    :goto_2
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->j()F

    move-result v1

    div-float/2addr v1, v6

    invoke-direct {p0, p1, v0, v3, v1}, Lbym;->a(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private final e(Landroid/graphics/Canvas;)V
    .locals 11

    .line 88
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->k()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->l()F

    move-result v1

    .line 90
    sget-object v2, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v3

    invoke-virtual {p0}, Lbym;->a()F

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lbyv;->a(Lbyu;FI)F

    move-result v2

    .line 91
    sget-object v3, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->a()F

    move-result v4

    invoke-virtual {v3, v4}, Lbyv;->b(F)F

    move-result v3

    .line 92
    invoke-virtual {p0}, Lbym;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v4

    if-nez v4, :cond_0

    .line 93
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p0, v4}, Lbym;->a(Landroid/animation/ArgbEvaluator;)V

    :cond_0
    const/4 v4, 0x1

    int-to-float v5, v4

    cmpg-float v5, v1, v5

    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    const/4 v7, 0x2

    if-gez v5, :cond_3

    .line 96
    invoke-virtual {p0}, Lbym;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 98
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v8

    invoke-virtual {v8}, Lbyu;->f()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v9

    invoke-virtual {v9}, Lbyu;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 97
    invoke-virtual {v5, v1, v8, v9}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 100
    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v8

    if-eqz v5, :cond_1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/p;

    invoke-direct {p1, v6}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->j()F

    move-result v5

    int-to-float v8, v7

    div-float/2addr v5, v8

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v9

    invoke-virtual {v9}, Lbyu;->j()F

    move-result v9

    div-float/2addr v9, v8

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v10

    invoke-virtual {v10}, Lbyu;->i()F

    move-result v10

    div-float/2addr v10, v8

    sub-float/2addr v9, v10

    mul-float/2addr v9, v1

    sub-float/2addr v5, v9

    .line 104
    invoke-direct {p0, p1, v2, v3, v5}, Lbym;->a(Landroid/graphics/Canvas;FFF)V

    .line 107
    :cond_3
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->d()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    if-ne v0, v5, :cond_6

    .line 108
    invoke-virtual {p0}, Lbym;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 108
    invoke-virtual {v0, v1, v2, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 111
    :cond_4
    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v4, :cond_5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p0}, Lbym;->a()F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    .line 113
    invoke-virtual {p0}, Lbym;->b()F

    move-result v4

    div-float/2addr v4, v2

    invoke-virtual {p0}, Lbym;->a()F

    move-result v5

    div-float/2addr v5, v2

    invoke-virtual {p0}, Lbym;->b()F

    move-result v6

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    .line 114
    invoke-direct {p0, p1, v0, v3, v4}, Lbym;->a(Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_1

    .line 111
    :cond_5
    new-instance p1, Lkotlin/p;

    invoke-direct {p1, v6}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 v0, 0x0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_9

    .line 117
    invoke-virtual {p0}, Lbym;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 118
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 117
    invoke-virtual {v0, v1, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 120
    :cond_7
    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v4, :cond_8

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->g()F

    move-result v0

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->i()F

    move-result v0

    add-float/2addr v2, v0

    .line 124
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->i()F

    move-result v0

    int-to-float v4, v7

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->j()F

    move-result v5

    div-float/2addr v5, v4

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->i()F

    move-result v6

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v0, v5

    .line 125
    invoke-direct {p0, p1, v2, v3, v0}, Lbym;->a(Landroid/graphics/Canvas;FFF)V

    goto :goto_1

    .line 120
    :cond_8
    new-instance p1, Lkotlin/p;

    invoke-direct {p1, v6}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_1
    return-void
.end method

.method private final f(Landroid/graphics/Canvas;)V
    .locals 6

    .line 131
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->k()I

    move-result v0

    .line 133
    sget-object v1, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v2

    invoke-virtual {p0}, Lbym;->a()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lbyv;->a(Lbyu;FI)F

    move-result v1

    .line 134
    sget-object v2, Lbyv;->a:Lbyv;

    .line 135
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v3

    invoke-virtual {p0}, Lbym;->a()F

    move-result v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->d()I

    move-result v5

    rem-int/2addr v0, v5

    .line 134
    invoke-virtual {v2, v3, v4, v0}, Lbyv;->a(Lbyu;FI)F

    move-result v0

    sub-float/2addr v0, v1

    .line 138
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->l()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 139
    sget-object v0, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->a()F

    move-result v2

    invoke-virtual {v0, v2}, Lbyv;->b(F)F

    move-result v0

    .line 140
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->j()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 141
    invoke-direct {p0, p1, v1, v0, v2}, Lbym;->a(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private final g(Landroid/graphics/Canvas;)V
    .locals 8

    .line 145
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->i()F

    move-result v0

    .line 146
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->l()F

    move-result v1

    .line 147
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->k()I

    move-result v2

    .line 148
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->g()F

    move-result v3

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->i()F

    move-result v4

    add-float/2addr v3, v4

    .line 150
    sget-object v4, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v5

    invoke-virtual {p0}, Lbym;->a()F

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Lbyv;->a(Lbyu;FI)F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v1, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/4 v6, 0x0

    .line 151
    invoke-static {v4, v6}, Lkotlin/ranges/f;->a(FF)F

    move-result v4

    add-float/2addr v4, v2

    .line 153
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->i()F

    move-result v6

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    const/4 v6, 0x3

    int-to-float v6, v6

    add-float/2addr v4, v6

    mul-float/2addr v1, v3

    mul-float/2addr v1, v5

    .line 154
    invoke-static {v1, v3}, Lkotlin/ranges/f;->b(FF)F

    move-result v1

    add-float/2addr v2, v1

    .line 156
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->i()F

    move-result v1

    div-float/2addr v1, v7

    add-float/2addr v2, v1

    add-float/2addr v2, v6

    .line 157
    iget-object v1, p0, Lbym;->b:Landroid/graphics/RectF;

    add-float v3, v0, v6

    invoke-virtual {v1, v4, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 158
    iget-object v1, p0, Lbym;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lbym;->c()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lbym;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lbym;->b(Landroid/graphics/Canvas;)V

    .line 31
    invoke-direct {p0, p1}, Lbym;->c(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected f()I
    .locals 1

    .line 24
    invoke-virtual {p0}, Lbym;->a()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method
