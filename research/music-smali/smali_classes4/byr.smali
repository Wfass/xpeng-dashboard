.class public abstract Lbyr;
.super Lbyl;
.source "RectDrawer.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private b:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lbyu;)V
    .locals 1

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lbyl;-><init>(Lbyu;)V

    .line 36
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lbyr;->b:Landroid/graphics/RectF;

    return-void
.end method

.method private final a(Landroid/graphics/Canvas;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 59
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->f()I

    move-result v3

    .line 60
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->g()F

    move-result v4

    .line 61
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->h()F

    move-result v5

    .line 62
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->k()I

    move-result v6

    .line 63
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v7

    invoke-virtual {v7}, Lbyu;->i()F

    move-result v7

    .line 64
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v8

    invoke-virtual {v8}, Lbyu;->j()F

    move-result v8

    .line 65
    invoke-virtual/range {p0 .. p0}, Lbyr;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v9

    if-nez v9, :cond_0

    .line 66
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v9}, Lbyr;->a(Landroid/animation/ArgbEvaluator;)V

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v2, v6, :cond_2

    .line 70
    invoke-virtual/range {p0 .. p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v11

    invoke-virtual {v11}, Lbyu;->e()I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->d()I

    move-result v3

    sub-int/2addr v3, v10

    if-ne v6, v3, :cond_1

    int-to-float v2, v2

    mul-float v3, v2, v7

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    sub-float/2addr v8, v7

    .line 72
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->l()F

    move-result v2

    mul-float/2addr v8, v2

    add-float/2addr v3, v8

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    mul-float v3, v2, v7

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    .line 76
    :goto_0
    iget-object v2, v0, Lbyr;->b:Landroid/graphics/RectF;

    add-float/2addr v7, v3

    invoke-virtual {v2, v3, v9, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    invoke-virtual {v0, v1, v5, v5}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    goto/16 :goto_6

    :cond_2
    if-ne v2, v6, :cond_e

    .line 81
    invoke-virtual/range {p0 .. p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v11

    invoke-virtual {v11}, Lbyu;->l()F

    move-result v11

    .line 83
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v12

    invoke-virtual {v12}, Lbyu;->d()I

    move-result v12

    sub-int/2addr v12, v10

    const-string v13, "null cannot be cast to non-null type kotlin.Int"

    if-ne v6, v12, :cond_5

    .line 84
    invoke-virtual/range {p0 .. p0}, Lbyr;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v15

    invoke-virtual {v15}, Lbyu;->e()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 85
    invoke-virtual {v12, v11, v14, v15}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 88
    invoke-virtual/range {p0 .. p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v14

    if-eqz v12, :cond_3

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    new-instance v1, Lkotlin/p;

    invoke-direct {v1, v13}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v12

    invoke-virtual {v12}, Lbyu;->d()I

    move-result v12

    sub-int/2addr v12, v10

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v14

    invoke-virtual {v14}, Lbyu;->g()F

    move-result v14

    add-float/2addr v14, v7

    mul-float/2addr v12, v14

    add-float/2addr v12, v8

    sub-float v14, v12, v8

    sub-float v15, v8, v7

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    .line 93
    iget-object v15, v0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual {v15, v14, v9, v12, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    invoke-virtual {v0, v1, v5, v5}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_3

    :cond_5
    int-to-float v12, v10

    cmpg-float v14, v11, v12

    if-gez v14, :cond_8

    .line 97
    invoke-virtual/range {p0 .. p0}, Lbyr;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lbyu;->e()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 98
    invoke-virtual {v14, v11, v15, v10}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 101
    invoke-virtual/range {p0 .. p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v14

    if-eqz v10, :cond_6

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_6
    new-instance v1, Lkotlin/p;

    invoke-direct {v1, v13}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_2
    int-to-float v10, v2

    mul-float v14, v10, v7

    mul-float/2addr v10, v4

    add-float/2addr v14, v10

    add-float v10, v14, v7

    sub-float v15, v8, v7

    sub-float/2addr v12, v11

    mul-float/2addr v15, v12

    add-float/2addr v10, v15

    .line 105
    iget-object v12, v0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual {v12, v14, v9, v10, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    invoke-virtual {v0, v1, v5, v5}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    .line 110
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v10

    invoke-virtual {v10}, Lbyu;->d()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    const/4 v14, 0x0

    if-ne v6, v10, :cond_b

    int-to-float v2, v14

    cmpl-float v2, v11, v2

    if-lez v2, :cond_10

    .line 112
    invoke-virtual/range {p0 .. p0}, Lbyr;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    if-eqz v2, :cond_a

    int-to-float v4, v12

    sub-float/2addr v4, v11

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 113
    invoke-virtual {v2, v4, v3, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    invoke-virtual/range {p0 .. p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v3

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_9
    new-instance v1, Lkotlin/p;

    invoke-direct {v1, v13}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_4
    add-float v2, v7, v9

    sub-float/2addr v8, v7

    mul-float/2addr v8, v11

    add-float/2addr v2, v8

    .line 121
    iget-object v3, v0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual {v3, v9, v9, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    invoke-virtual {v0, v1, v5, v5}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    goto/16 :goto_6

    :cond_b
    int-to-float v6, v14

    cmpl-float v6, v11, v6

    if-lez v6, :cond_10

    .line 126
    invoke-virtual/range {p0 .. p0}, Lbyr;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v6

    if-eqz v6, :cond_d

    const/4 v10, 0x1

    int-to-float v10, v10

    sub-float/2addr v10, v11

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v12

    invoke-virtual {v12}, Lbyu;->e()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 127
    invoke-virtual {v6, v10, v3, v12}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    invoke-virtual/range {p0 .. p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v6

    if-eqz v3, :cond_c

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    :cond_c
    new-instance v1, Lkotlin/p;

    invoke-direct {v1, v13}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_5
    int-to-float v2, v2

    mul-float v3, v2, v7

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    add-float/2addr v3, v7

    add-float/2addr v4, v8

    add-float/2addr v3, v4

    sub-float v2, v3, v7

    sub-float/2addr v8, v7

    mul-float/2addr v8, v11

    sub-float/2addr v2, v8

    .line 135
    iget-object v4, v0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v9, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    invoke-virtual {v0, v1, v5, v5}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_6

    :cond_e
    move v3, v10

    add-int/2addr v6, v3

    if-ne v6, v2, :cond_f

    .line 142
    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->l()F

    move-result v3

    cmpg-float v3, v3, v9

    if-nez v3, :cond_10

    .line 143
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lbyr;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->e()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v2

    .line 144
    invoke-virtual/range {p0 .. p0}, Lbyr;->b()F

    move-result v3

    mul-float/2addr v3, v2

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Lbyr;->b()F

    move-result v2

    sub-float/2addr v8, v2

    add-float/2addr v3, v8

    .line 145
    iget-object v2, v0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lbyr;->b()F

    move-result v4

    add-float/2addr v4, v3

    invoke-virtual {v2, v3, v9, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 146
    invoke-virtual {v0, v1, v5, v5}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    :cond_10
    :goto_6
    return-void
.end method

.method private final b(Landroid/graphics/Canvas;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lbyr;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-direct {p0, p1}, Lbyr;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0, p1}, Lbyr;->e(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private final b(Landroid/graphics/Canvas;I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 156
    invoke-virtual {p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v0

    .line 157
    invoke-virtual {p0}, Lbyr;->a()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->g()F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lbyr;->a()F

    move-result v1

    invoke-virtual {p0}, Lbyr;->b()F

    move-result v3

    sub-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 158
    iget-object v1, p0, Lbyr;->b:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbyr;->b()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->h()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 159
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->h()F

    move-result v1

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->h()F

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final c(Landroid/graphics/Canvas;)V
    .locals 8

    .line 187
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->k()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->l()F

    move-result v1

    int-to-float v2, v0

    .line 189
    invoke-virtual {p0}, Lbyr;->b()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->g()F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    .line 190
    invoke-virtual {p0}, Lbyr;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    if-nez v2, :cond_0

    .line 191
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p0, v2}, Lbyr;->a(Landroid/animation/ArgbEvaluator;)V

    :cond_0
    float-to-double v4, v1

    const-wide v6, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v2, v4, v6

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    const/4 v5, 0x0

    if-gez v2, :cond_3

    .line 194
    invoke-virtual {p0}, Lbyr;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v7

    invoke-virtual {v7}, Lbyu;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 195
    invoke-virtual {v2, v1, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v6

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/p;

    invoke-direct {p1, v4}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_2
    :goto_0
    iget-object v2, p0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lbyr;->b()F

    move-result v6

    add-float/2addr v6, v3

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v7

    invoke-virtual {v7}, Lbyu;->h()F

    move-result v7

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 201
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->h()F

    move-result v2

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->h()F

    move-result v6

    invoke-virtual {p0, p1, v2, v6}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    .line 204
    :cond_3
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->g()F

    move-result v2

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->i()F

    move-result v2

    add-float/2addr v2, v3

    .line 205
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->d()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-ne v0, v3, :cond_4

    move v2, v5

    .line 209
    :cond_4
    invoke-virtual {p0}, Lbyr;->d()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    if-eqz v0, :cond_6

    int-to-float v3, v6

    sub-float/2addr v3, v1

    .line 211
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 210
    invoke-virtual {v0, v3, v1, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_5
    new-instance p1, Lkotlin/p;

    invoke-direct {p1, v4}, Lkotlin/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_6
    :goto_1
    iget-object v0, p0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lbyr;->b()F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->h()F

    move-result v3

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->h()F

    move-result v0

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->h()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method private final c(Landroid/graphics/Canvas;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 168
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->k()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lbyr;->a()F

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lbyr;->b()F

    move-result v3

    .line 170
    :goto_1
    invoke-virtual {p0}, Lbyr;->c()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->k()I

    move-result v5

    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->f()I

    move-result v5

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->e()I

    move-result v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v4, p0, Lbyr;->b:Landroid/graphics/RectF;

    add-float v5, v2, v3

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v6

    invoke-virtual {v6}, Lbyu;->h()F

    move-result v6

    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->h()F

    move-result v4

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v5

    invoke-virtual {v5}, Lbyu;->h()F

    move-result v5

    invoke-virtual {p0, p1, v4, v5}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    .line 173
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->g()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final d(Landroid/graphics/Canvas;)V
    .locals 9

    .line 220
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->h()F

    move-result v0

    .line 221
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->l()F

    move-result v1

    .line 222
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->k()I

    move-result v2

    .line 223
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v3

    invoke-virtual {v3}, Lbyu;->g()F

    move-result v3

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v4

    invoke-virtual {v4}, Lbyu;->i()F

    move-result v4

    add-float/2addr v3, v4

    .line 225
    sget-object v4, Lbyv;->a:Lbyv;

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v5

    invoke-virtual {p0}, Lbyr;->a()F

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Lbyv;->a(Lbyu;FI)F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v1, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/4 v6, 0x0

    .line 226
    invoke-static {v4, v6}, Lkotlin/ranges/f;->a(FF)F

    move-result v4

    add-float/2addr v4, v2

    .line 228
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v7

    invoke-virtual {v7}, Lbyu;->i()F

    move-result v7

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    mul-float/2addr v1, v3

    mul-float/2addr v1, v5

    .line 229
    invoke-static {v1, v3}, Lkotlin/ranges/f;->b(FF)F

    move-result v1

    add-float/2addr v2, v1

    .line 231
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->i()F

    move-result v1

    div-float/2addr v1, v8

    add-float/2addr v2, v1

    .line 232
    iget-object v1, p0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v6, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 233
    invoke-virtual {p0, p1, v0, v0}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method private final e(Landroid/graphics/Canvas;)V
    .locals 5

    .line 237
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->k()I

    move-result v0

    .line 238
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->g()F

    move-result v1

    .line 239
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->h()F

    move-result v2

    int-to-float v0, v0

    .line 241
    invoke-virtual {p0}, Lbyr;->a()F

    move-result v3

    mul-float/2addr v3, v0

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lbyr;->a()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->l()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 242
    iget-object v0, p0, Lbyr;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lbyr;->a()F

    move-result v1

    add-float/2addr v1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 243
    invoke-virtual {p0, p1, v2, v2}, Lbyr;->a(Landroid/graphics/Canvas;FF)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v0

    invoke-virtual {v0}, Lbyu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v2

    invoke-virtual {v2}, Lbyu;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v0, v1, :cond_3

    .line 41
    :cond_0
    invoke-virtual {p0}, Lbyr;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->c()I

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-direct {p0, p1, v0}, Lbyr;->b(Landroid/graphics/Canvas;I)V

    .line 43
    invoke-direct {p0, p1}, Lbyr;->b(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lbyr;->g()Lbyu;

    move-result-object v1

    invoke-virtual {v1}, Lbyu;->c()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 47
    invoke-direct {p0, p1, v1}, Lbyr;->a(Landroid/graphics/Canvas;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-direct {p0, p1, v0}, Lbyr;->c(Landroid/graphics/Canvas;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;FF)V
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 1

    .line 36
    iget-object v0, p0, Lbyr;->b:Landroid/graphics/RectF;

    return-object v0
.end method
