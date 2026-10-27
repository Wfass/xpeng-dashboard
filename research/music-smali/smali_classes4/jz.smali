.class public Ljz;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Ljw;
.implements Ljy;
.implements Lkh$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/airbnb/lottie/f;

.field private final d:Lmg$a;

.field private final e:Z

.field private final f:Z

.field private final g:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lkh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljn;

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lmq;Lmg;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ljz;->a:Landroid/graphics/Path;

    .line 45
    new-instance v0, Ljn;

    invoke-direct {v0}, Ljn;-><init>()V

    iput-object v0, p0, Ljz;->n:Ljn;

    .line 50
    iput-object p1, p0, Ljz;->c:Lcom/airbnb/lottie/f;

    .line 52
    invoke-virtual {p3}, Lmg;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljz;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {p3}, Lmg;->b()Lmg$a;

    move-result-object p1

    iput-object p1, p0, Ljz;->d:Lmg$a;

    .line 54
    invoke-virtual {p3}, Lmg;->j()Z

    move-result p1

    iput-boolean p1, p0, Ljz;->e:Z

    .line 55
    invoke-virtual {p3}, Lmg;->k()Z

    move-result p1

    iput-boolean p1, p0, Ljz;->f:Z

    .line 56
    invoke-virtual {p3}, Lmg;->c()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljz;->g:Lkh;

    .line 57
    invoke-virtual {p3}, Lmg;->d()Llv;

    move-result-object p1

    invoke-interface {p1}, Llv;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljz;->h:Lkh;

    .line 58
    invoke-virtual {p3}, Lmg;->e()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljz;->i:Lkh;

    .line 59
    invoke-virtual {p3}, Lmg;->g()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljz;->k:Lkh;

    .line 60
    invoke-virtual {p3}, Lmg;->i()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljz;->m:Lkh;

    .line 61
    iget-object p1, p0, Ljz;->d:Lmg$a;

    sget-object v0, Lmg$a;->STAR:Lmg$a;

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p3}, Lmg;->f()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljz;->j:Lkh;

    .line 63
    invoke-virtual {p3}, Lmg;->h()Llk;

    move-result-object p1

    invoke-virtual {p1}, Llk;->a()Lkh;

    move-result-object p1

    iput-object p1, p0, Ljz;->l:Lkh;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Ljz;->j:Lkh;

    .line 66
    iput-object p1, p0, Ljz;->l:Lkh;

    .line 69
    :goto_0
    iget-object p1, p0, Ljz;->g:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 70
    iget-object p1, p0, Ljz;->h:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 71
    iget-object p1, p0, Ljz;->i:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 72
    iget-object p1, p0, Ljz;->k:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 73
    iget-object p1, p0, Ljz;->m:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 74
    iget-object p1, p0, Ljz;->d:Lmg$a;

    sget-object p3, Lmg$a;->STAR:Lmg$a;

    if-ne p1, p3, :cond_1

    .line 75
    iget-object p1, p0, Ljz;->j:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 76
    iget-object p1, p0, Ljz;->l:Lkh;

    invoke-virtual {p2, p1}, Lmq;->a(Lkh;)V

    .line 79
    :cond_1
    iget-object p1, p0, Ljz;->g:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 80
    iget-object p1, p0, Ljz;->h:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 81
    iget-object p1, p0, Ljz;->i:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 82
    iget-object p1, p0, Ljz;->k:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 83
    iget-object p1, p0, Ljz;->m:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 84
    iget-object p1, p0, Ljz;->d:Lmg$a;

    sget-object p2, Lmg$a;->STAR:Lmg$a;

    if-ne p1, p2, :cond_2

    .line 85
    iget-object p1, p0, Ljz;->j:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    .line 86
    iget-object p1, p0, Ljz;->l:Lkh;

    invoke-virtual {p1, p0}, Lkh;->a(Lkh$a;)V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Ljz;->o:Z

    .line 96
    iget-object v0, p0, Ljz;->c:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method

.method private c()V
    .locals 42

    move-object/from16 v0, p0

    .line 145
    iget-object v1, v0, Ljz;->g:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 146
    iget-object v2, v0, Ljz;->i:Lkh;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lkh;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 153
    iget-boolean v5, v0, Ljz;->f:Z

    if-eqz v5, :cond_1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    div-float v8, v4, v5

    float-to-int v9, v1

    int-to-float v9, v9

    sub-float/2addr v1, v9

    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    if-eqz v10, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v1

    mul-float/2addr v11, v8

    float-to-double v11, v11

    add-double/2addr v2, v11

    .line 162
    :cond_2
    iget-object v11, v0, Ljz;->k:Lkh;

    invoke-virtual {v11}, Lkh;->g()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 164
    iget-object v12, v0, Ljz;->j:Lkh;

    invoke-virtual {v12}, Lkh;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 167
    iget-object v13, v0, Ljz;->l:Lkh;

    const/high16 v14, 0x42c80000    # 100.0f

    if-eqz v13, :cond_3

    .line 168
    invoke-virtual {v13}, Lkh;->g()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v14

    goto :goto_1

    :cond_3
    move v13, v9

    .line 171
    :goto_1
    iget-object v15, v0, Ljz;->m:Lkh;

    if-eqz v15, :cond_4

    .line 172
    invoke-virtual {v15}, Lkh;->g()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    div-float v14, v15, v14

    goto :goto_2

    :cond_4
    move v14, v9

    :goto_2
    if-eqz v10, :cond_5

    sub-float v15, v11, v12

    mul-float/2addr v15, v1

    add-float/2addr v15, v12

    move/from16 v17, v10

    float-to-double v9, v15

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v20, v6

    mul-double v5, v9, v18

    double-to-float v5, v5

    .line 183
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v9, v9, v18

    double-to-float v6, v9

    .line 184
    iget-object v9, v0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v9, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v9, v7

    float-to-double v9, v9

    add-double/2addr v2, v9

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v6

    move/from16 v17, v10

    float-to-double v5, v11

    .line 187
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v5

    double-to-float v9, v9

    .line 188
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v5, v5, v18

    double-to-float v6, v5

    .line 189
    iget-object v5, v0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v10, v6

    float-to-double v5, v8

    add-double/2addr v2, v5

    move v5, v9

    move v6, v10

    const/4 v15, 0x0

    .line 195
    :goto_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v9, v9, v18

    const/16 v20, 0x0

    move-wide/from16 v21, v2

    move v3, v8

    move/from16 v2, v20

    :goto_4
    int-to-double v7, v2

    cmpg-double v24, v7, v9

    if-gez v24, :cond_10

    if-eqz v20, :cond_6

    move/from16 v24, v11

    goto :goto_5

    :cond_6
    move/from16 v24, v12

    :goto_5
    const/16 v16, 0x0

    cmpl-float v25, v15, v16

    if-eqz v25, :cond_7

    sub-double v26, v9, v18

    cmpl-double v26, v7, v26

    if-nez v26, :cond_7

    mul-float v26, v4, v1

    const/high16 v23, 0x40000000    # 2.0f

    div-float v26, v26, v23

    move/from16 v41, v26

    move/from16 v26, v3

    move/from16 v3, v41

    goto :goto_6

    :cond_7
    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v26, v3

    :goto_6
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    if-eqz v25, :cond_8

    sub-double v29, v9, v27

    cmpl-double v25, v7, v29

    if-nez v25, :cond_8

    move/from16 v25, v4

    move/from16 v24, v11

    move/from16 v29, v12

    move v4, v15

    goto :goto_7

    :cond_8
    move/from16 v25, v4

    move/from16 v29, v12

    move/from16 v4, v24

    move/from16 v24, v11

    :goto_7
    float-to-double v11, v4

    .line 207
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    move/from16 v32, v3

    mul-double v3, v11, v30

    double-to-float v3, v3

    .line 208
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v11, v11, v30

    double-to-float v4, v11

    const/4 v11, 0x0

    cmpl-float v12, v13, v11

    if-nez v12, :cond_9

    cmpl-float v12, v14, v11

    if-nez v12, :cond_9

    .line 211
    iget-object v5, v0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v40, v4

    move/from16 v30, v13

    move/from16 v31, v14

    move v12, v15

    :goto_8
    move/from16 v4, v32

    goto/16 :goto_e

    :cond_9
    float-to-double v11, v6

    move/from16 v30, v13

    move/from16 v31, v14

    float-to-double v13, v5

    .line 213
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v11, v13

    double-to-float v11, v11

    float-to-double v11, v11

    .line 214
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 215
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    move v12, v15

    float-to-double v14, v4

    move/from16 v40, v4

    move/from16 v35, v5

    float-to-double v4, v3

    .line 217
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v14

    double-to-float v4, v4

    float-to-double v4, v4

    .line 218
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    if-eqz v20, :cond_a

    move/from16 v5, v30

    goto :goto_9

    :cond_a
    move/from16 v5, v31

    :goto_9
    if-eqz v20, :cond_b

    move/from16 v15, v31

    goto :goto_a

    :cond_b
    move/from16 v15, v30

    :goto_a
    if-eqz v20, :cond_c

    move/from16 v33, v29

    goto :goto_b

    :cond_c
    move/from16 v33, v24

    :goto_b
    if-eqz v20, :cond_d

    move/from16 v34, v24

    goto :goto_c

    :cond_d
    move/from16 v34, v29

    :goto_c
    mul-float v33, v33, v5

    const v5, 0x3ef4e26d    # 0.47829f

    mul-float v33, v33, v5

    mul-float v13, v13, v33

    mul-float v33, v33, v11

    mul-float v34, v34, v15

    mul-float v34, v34, v5

    mul-float v14, v14, v34

    mul-float v34, v34, v4

    if-eqz v17, :cond_f

    if-nez v2, :cond_e

    mul-float/2addr v13, v1

    mul-float v33, v33, v1

    goto :goto_d

    :cond_e
    sub-double v4, v9, v27

    cmpl-double v4, v7, v4

    if-nez v4, :cond_f

    mul-float/2addr v14, v1

    mul-float v34, v34, v1

    .line 240
    :cond_f
    :goto_d
    iget-object v4, v0, Ljz;->a:Landroid/graphics/Path;

    sub-float v5, v35, v13

    sub-float v35, v6, v33

    add-float v36, v3, v14

    add-float v37, v40, v34

    move-object/from16 v33, v4

    move/from16 v34, v5

    move/from16 v38, v3

    move/from16 v39, v40

    invoke-virtual/range {v33 .. v39}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_8

    :goto_e
    float-to-double v4, v4

    add-double v21, v21, v4

    xor-int/lit8 v20, v20, 0x1

    add-int/lit8 v2, v2, 0x1

    move v5, v3

    move v15, v12

    move/from16 v11, v24

    move/from16 v4, v25

    move/from16 v3, v26

    move/from16 v12, v29

    move/from16 v13, v30

    move/from16 v14, v31

    move/from16 v6, v40

    goto/16 :goto_4

    .line 248
    :cond_10
    iget-object v1, v0, Ljz;->h:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 249
    iget-object v2, v0, Ljz;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 250
    iget-object v1, v0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private e()V
    .locals 31

    move-object/from16 v0, p0

    .line 254
    iget-object v1, v0, Ljz;->g:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 255
    iget-object v2, v0, Ljz;->i:Lkh;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lkh;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    :goto_0
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 259
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v1

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 263
    iget-object v4, v0, Ljz;->m:Lkh;

    invoke-virtual {v4}, Lkh;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 264
    iget-object v5, v0, Ljz;->k:Lkh;

    invoke-virtual {v5}, Lkh;->g()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v8, v5

    .line 269
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-float v10, v10

    .line 270
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    double-to-float v11, v11

    .line 271
    iget-object v12, v0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v12, v1

    add-double/2addr v2, v12

    .line 274
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    const/4 v1, 0x0

    :goto_1
    int-to-double v14, v1

    cmpg-double v14, v14, v6

    if-gez v14, :cond_2

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v8

    double-to-float v14, v14

    .line 279
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-wide/from16 v23, v6

    mul-double v6, v8, v15

    double-to-float v6, v6

    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_1

    move-wide/from16 v25, v8

    float-to-double v7, v11

    move v9, v1

    move-wide/from16 v27, v2

    float-to-double v1, v10

    .line 282
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, v7

    double-to-float v1, v1

    float-to-double v1, v1

    .line 283
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 284
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v7, v6

    move-wide/from16 v29, v12

    float-to-double v12, v14

    .line 286
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v7, v12

    double-to-float v2, v7

    float-to-double v7, v2

    .line 287
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 288
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v8, v5, v4

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v8, v12

    mul-float/2addr v3, v8

    mul-float/2addr v1, v8

    mul-float/2addr v2, v8

    mul-float/2addr v8, v7

    .line 294
    iget-object v7, v0, Ljz;->a:Landroid/graphics/Path;

    sub-float v17, v10, v3

    sub-float v18, v11, v1

    add-float v19, v14, v2

    add-float v20, v6, v8

    move-object/from16 v16, v7

    move/from16 v21, v14

    move/from16 v22, v6

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_1
    move-wide/from16 v27, v2

    move-wide/from16 v25, v8

    move-wide/from16 v29, v12

    move v9, v1

    .line 296
    iget-object v1, v0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-double v2, v27, v29

    add-int/lit8 v1, v9, 0x1

    move v11, v6

    move v10, v14

    move-wide/from16 v6, v23

    move-wide/from16 v8, v25

    move-wide/from16 v12, v29

    goto/16 :goto_1

    .line 302
    :cond_2
    iget-object v1, v0, Ljz;->h:Lkh;

    invoke-virtual {v1}, Lkh;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 303
    iget-object v2, v0, Ljz;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 304
    iget-object v1, v0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Ljz;->b:Ljava/lang/String;

    return-object v0
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

    .line 315
    sget-object v0, Lcom/airbnb/lottie/k;->w:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 316
    iget-object p1, p0, Ljz;->g:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 317
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/k;->x:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 318
    iget-object p1, p0, Ljz;->i:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/k;->n:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 320
    iget-object p1, p0, Ljz;->h:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 321
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/k;->y:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Ljz;->j:Lkh;

    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {v0, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 323
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/k;->z:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 324
    iget-object p1, p0, Ljz;->k:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 325
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/k;->A:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Ljz;->l:Lkh;

    if-eqz v0, :cond_5

    .line 326
    invoke-virtual {v0, p2}, Lkh;->a(Lpe;)V

    goto :goto_0

    .line 327
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/k;->B:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 328
    iget-object p1, p0, Ljz;->m:Lkh;

    invoke-virtual {p1, p2}, Lkh;->a(Lpe;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const/4 p2, 0x0

    .line 100
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 101
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljo;

    .line 102
    instance-of v1, v0, Lkg;

    if-eqz v1, :cond_0

    check-cast v0, Lkg;

    .line 103
    invoke-virtual {v0}, Lkg;->b()Lmp$a;

    move-result-object v1

    sget-object v2, Lmp$a;->SIMULTANEOUSLY:Lmp$a;

    if-ne v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Ljz;->n:Ljn;

    invoke-virtual {v1, v0}, Ljn;->a(Lkg;)V

    .line 106
    invoke-virtual {v0, p0}, Lkg;->a(Lkh$a;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

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

    .line 309
    invoke-static {p1, p2, p3, p4, p0}, Lpa;->a(Lle;ILjava/util/List;Lle;Ljw;)V

    return-void
.end method

.method public d()Landroid/graphics/Path;
    .locals 3

    .line 112
    iget-boolean v0, p0, Ljz;->o:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Ljz;->a:Landroid/graphics/Path;

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 118
    iget-boolean v0, p0, Ljz;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 119
    iput-boolean v1, p0, Ljz;->o:Z

    .line 120
    iget-object v0, p0, Ljz;->a:Landroid/graphics/Path;

    return-object v0

    .line 123
    :cond_1
    sget-object v0, Ljz$1;->a:[I

    iget-object v2, p0, Ljz;->d:Lmg$a;

    invoke-virtual {v2}, Lmg$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    invoke-direct {p0}, Ljz;->e()V

    goto :goto_0

    .line 125
    :cond_3
    invoke-direct {p0}, Ljz;->c()V

    .line 132
    :goto_0
    iget-object v0, p0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 134
    iget-object v0, p0, Ljz;->n:Ljn;

    iget-object v2, p0, Ljz;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Ljn;->a(Landroid/graphics/Path;)V

    .line 136
    iput-boolean v1, p0, Ljz;->o:Z

    .line 137
    iget-object v0, p0, Ljz;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method public onValueChanged()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljz;->b()V

    return-void
.end method
