.class public Lca;
.super Lce;
.source "HorizontalWidgetRun.java"


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [I

    sput-object v0, Lca;->a:[I

    return-void
.end method

.method public constructor <init>(Lbf;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lce;-><init>(Lbf;)V

    .line 41
    iget-object p1, p0, Lca;->j:Lbu;

    sget-object v0, Lbu$a;->LEFT:Lbu$a;

    iput-object v0, p1, Lbu;->e:Lbu$a;

    .line 42
    iget-object p1, p0, Lca;->k:Lbu;

    sget-object v0, Lbu$a;->RIGHT:Lbu$a;

    iput-object v0, p1, Lbu;->e:Lbu$a;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lca;->h:I

    return-void
.end method

.method private a([IIIIIFI)V
    .locals 2

    sub-int/2addr p3, p2

    sub-int/2addr p5, p4

    const/4 p2, -0x1

    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p7, p2, :cond_2

    if-eqz p7, :cond_1

    if-eq p7, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p3

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 302
    aput p3, p1, p4

    .line 303
    aput p2, p1, v1

    goto :goto_0

    :cond_1
    int-to-float p2, p5

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 296
    aput p2, p1, p4

    .line 297
    aput p5, p1, v1

    goto :goto_0

    :cond_2
    int-to-float p2, p5

    mul-float/2addr p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p7, p3

    div-float/2addr p7, p6

    add-float/2addr p7, v0

    float-to-int p6, p7

    if-gt p2, p3, :cond_3

    if-gt p5, p5, :cond_3

    .line 286
    aput p2, p1, p4

    .line 287
    aput p5, p1, v1

    goto :goto_0

    :cond_3
    if-gt p3, p3, :cond_4

    if-gt p6, p5, :cond_4

    .line 289
    aput p3, p1, p4

    .line 290
    aput p6, p1, v1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lbs;)V
    .locals 16

    move-object/from16 v8, p0

    .line 312
    sget-object v0, Lca$1;->a:[I

    iget-object v1, v8, Lca;->l:Lce$a;

    invoke-virtual {v1}, Lce$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->A:Lbe;

    iget-object v1, v8, Lca;->d:Lbf;

    iget-object v1, v1, Lbf;->C:Lbe;

    move-object/from16 v3, p1

    invoke-virtual {v8, v3, v0, v1, v10}, Lca;->a(Lbs;Lbe;Lbe;I)V

    return-void

    :cond_1
    move-object/from16 v3, p1

    .line 318
    invoke-virtual/range {p0 .. p1}, Lca;->c(Lbs;)V

    goto :goto_0

    :cond_2
    move-object/from16 v3, p1

    .line 314
    invoke-virtual/range {p0 .. p1}, Lca;->b(Lbs;)V

    .line 328
    :goto_0
    iget-object v0, v8, Lca;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez v0, :cond_24

    .line 329
    iget-object v0, v8, Lca;->f:Lbf$a;

    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v3, :cond_24

    .line 330
    iget-object v0, v8, Lca;->d:Lbf;

    iget v0, v0, Lbf;->n:I

    if-eq v0, v1, :cond_23

    if-eq v0, v2, :cond_3

    goto/16 :goto_f

    .line 332
    :cond_3
    iget-object v0, v8, Lca;->d:Lbf;

    iget v0, v0, Lbf;->o:I

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    iget-object v0, v8, Lca;->d:Lbf;

    iget v0, v0, Lbf;->o:I

    if-ne v0, v2, :cond_4

    goto :goto_4

    .line 457
    :cond_4
    iget-object v0, v8, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->T()I

    move-result v0

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_6

    if-eq v0, v9, :cond_5

    move v0, v10

    goto :goto_3

    .line 464
    :cond_5
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    iget v0, v0, Lbv;->g:I

    int-to-float v0, v0

    iget-object v1, v8, Lca;->d:Lbf;

    invoke-virtual {v1}, Lbf;->S()F

    move-result v1

    goto :goto_1

    .line 460
    :cond_6
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    iget v0, v0, Lbv;->g:I

    int-to-float v0, v0

    iget-object v1, v8, Lca;->d:Lbf;

    invoke-virtual {v1}, Lbf;->S()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_2

    .line 468
    :cond_7
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    iget v0, v0, Lbv;->g:I

    int-to-float v0, v0

    iget-object v1, v8, Lca;->d:Lbf;

    invoke-virtual {v1}, Lbf;->S()F

    move-result v1

    :goto_1
    mul-float/2addr v0, v1

    :goto_2
    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 473
    :goto_3
    iget-object v1, v8, Lca;->g:Lbv;

    invoke-virtual {v1, v0}, Lbv;->a(I)V

    goto/16 :goto_f

    .line 334
    :cond_8
    :goto_4
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v12, v0, Lcc;->j:Lbu;

    .line 335
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v13, v0, Lcc;->k:Lbu;

    .line 336
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->A:Lbe;

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_9

    move v0, v9

    goto :goto_5

    :cond_9
    move v0, v10

    .line 337
    :goto_5
    iget-object v2, v8, Lca;->d:Lbf;

    iget-object v2, v2, Lbf;->B:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    if-eqz v2, :cond_a

    move v2, v9

    goto :goto_6

    :cond_a
    move v2, v10

    .line 338
    :goto_6
    iget-object v3, v8, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->C:Lbe;

    iget-object v3, v3, Lbe;->c:Lbe;

    if-eqz v3, :cond_b

    move v3, v9

    goto :goto_7

    :cond_b
    move v3, v10

    .line 339
    :goto_7
    iget-object v4, v8, Lca;->d:Lbf;

    iget-object v4, v4, Lbf;->D:Lbe;

    iget-object v4, v4, Lbe;->c:Lbe;

    if-eqz v4, :cond_c

    move v4, v9

    goto :goto_8

    :cond_c
    move v4, v10

    .line 341
    :goto_8
    iget-object v5, v8, Lca;->d:Lbf;

    invoke-virtual {v5}, Lbf;->T()I

    move-result v14

    if-eqz v0, :cond_15

    if-eqz v2, :cond_15

    if-eqz v3, :cond_15

    if-eqz v4, :cond_15

    .line 344
    iget-object v0, v8, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->S()F

    move-result v15

    .line 345
    iget-boolean v0, v12, Lbu;->j:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v13, Lbu;->j:Z

    if-eqz v0, :cond_f

    .line 346
    iget-object v0, v8, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, v8, Lca;->k:Lbu;

    iget-boolean v0, v0, Lbu;->c:Z

    if-nez v0, :cond_d

    goto :goto_9

    .line 349
    :cond_d
    iget-object v0, v8, Lca;->j:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget v0, v0, Lbu;->g:I

    iget-object v1, v8, Lca;->j:Lbu;

    iget v1, v1, Lbu;->f:I

    add-int v2, v0, v1

    .line 350
    iget-object v0, v8, Lca;->k:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget v0, v0, Lbu;->g:I

    iget-object v1, v8, Lca;->k:Lbu;

    iget v1, v1, Lbu;->f:I

    sub-int v3, v0, v1

    .line 351
    iget v0, v12, Lbu;->g:I

    iget v1, v12, Lbu;->f:I

    add-int v4, v0, v1

    .line 352
    iget v0, v13, Lbu;->g:I

    iget v1, v13, Lbu;->f:I

    sub-int v5, v0, v1

    .line 353
    sget-object v1, Lca;->a:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lca;->a([IIIIIFI)V

    .line 354
    iget-object v0, v8, Lca;->g:Lbv;

    sget-object v1, Lca;->a:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    .line 355
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    sget-object v1, Lca;->a:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    :cond_e
    :goto_9
    return-void

    .line 358
    :cond_f
    iget-object v0, v8, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_12

    iget-object v0, v8, Lca;->k:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_12

    .line 359
    iget-boolean v0, v12, Lbu;->c:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v13, Lbu;->c:Z

    if-nez v0, :cond_10

    goto :goto_a

    .line 362
    :cond_10
    iget-object v0, v8, Lca;->j:Lbu;

    iget v0, v0, Lbu;->g:I

    iget-object v1, v8, Lca;->j:Lbu;

    iget v1, v1, Lbu;->f:I

    add-int v2, v0, v1

    .line 363
    iget-object v0, v8, Lca;->k:Lbu;

    iget v0, v0, Lbu;->g:I

    iget-object v1, v8, Lca;->k:Lbu;

    iget v1, v1, Lbu;->f:I

    sub-int v3, v0, v1

    .line 364
    iget-object v0, v12, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget v0, v0, Lbu;->g:I

    iget v1, v12, Lbu;->f:I

    add-int v4, v0, v1

    .line 365
    iget-object v0, v13, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget v0, v0, Lbu;->g:I

    iget v1, v13, Lbu;->f:I

    sub-int v5, v0, v1

    .line 366
    sget-object v1, Lca;->a:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lca;->a([IIIIIFI)V

    .line 367
    iget-object v0, v8, Lca;->g:Lbv;

    sget-object v1, Lca;->a:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    .line 368
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    sget-object v1, Lca;->a:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    goto :goto_b

    :cond_11
    :goto_a
    return-void

    .line 370
    :cond_12
    :goto_b
    iget-object v0, v8, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->c:Z

    if-eqz v0, :cond_14

    iget-object v0, v8, Lca;->k:Lbu;

    iget-boolean v0, v0, Lbu;->c:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v12, Lbu;->c:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v13, Lbu;->c:Z

    if-nez v0, :cond_13

    goto :goto_c

    .line 375
    :cond_13
    iget-object v0, v8, Lca;->j:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget v0, v0, Lbu;->g:I

    iget-object v1, v8, Lca;->j:Lbu;

    iget v1, v1, Lbu;->f:I

    add-int v2, v0, v1

    .line 376
    iget-object v0, v8, Lca;->k:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget v0, v0, Lbu;->g:I

    iget-object v1, v8, Lca;->k:Lbu;

    iget v1, v1, Lbu;->f:I

    sub-int v3, v0, v1

    .line 377
    iget-object v0, v12, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget v0, v0, Lbu;->g:I

    iget v1, v12, Lbu;->f:I

    add-int v4, v0, v1

    .line 378
    iget-object v0, v13, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget v0, v0, Lbu;->g:I

    iget v1, v13, Lbu;->f:I

    sub-int v5, v0, v1

    .line 379
    sget-object v1, Lca;->a:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lca;->a([IIIIIFI)V

    .line 380
    iget-object v0, v8, Lca;->g:Lbv;

    sget-object v1, Lca;->a:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    .line 381
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    sget-object v1, Lca;->a:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    goto/16 :goto_f

    :cond_14
    :goto_c
    return-void

    :cond_15
    if-eqz v0, :cond_1c

    if-eqz v3, :cond_1c

    .line 383
    iget-object v0, v8, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->c:Z

    if-eqz v0, :cond_1b

    iget-object v0, v8, Lca;->k:Lbu;

    iget-boolean v0, v0, Lbu;->c:Z

    if-nez v0, :cond_16

    goto/16 :goto_d

    .line 386
    :cond_16
    iget-object v0, v8, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->S()F

    move-result v0

    .line 387
    iget-object v2, v8, Lca;->j:Lbu;

    iget-object v2, v2, Lbu;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu;

    iget v2, v2, Lbu;->g:I

    iget-object v3, v8, Lca;->j:Lbu;

    iget v3, v3, Lbu;->f:I

    add-int/2addr v2, v3

    .line 388
    iget-object v3, v8, Lca;->k:Lbu;

    iget-object v3, v3, Lbu;->l:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbu;

    iget v3, v3, Lbu;->g:I

    iget-object v4, v8, Lca;->k:Lbu;

    iget v4, v4, Lbu;->f:I

    sub-int/2addr v3, v4

    if-eq v14, v1, :cond_19

    if-eqz v14, :cond_19

    if-eq v14, v9, :cond_17

    goto/16 :goto_f

    :cond_17
    sub-int/2addr v3, v2

    .line 406
    invoke-virtual {v8, v3, v10}, Lca;->a(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 408
    invoke-virtual {v8, v2, v9}, Lca;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_18

    int-to-float v1, v3

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 412
    :cond_18
    iget-object v0, v8, Lca;->g:Lbv;

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    .line 413
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    invoke-virtual {v0, v3}, Lbv;->a(I)V

    goto/16 :goto_f

    :cond_19
    sub-int/2addr v3, v2

    .line 394
    invoke-virtual {v8, v3, v10}, Lca;->a(II)I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 396
    invoke-virtual {v8, v2, v9}, Lca;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_1a

    int-to-float v1, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 400
    :cond_1a
    iget-object v0, v8, Lca;->g:Lbv;

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    .line 401
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    invoke-virtual {v0, v3}, Lbv;->a(I)V

    goto/16 :goto_f

    :cond_1b
    :goto_d
    return-void

    :cond_1c
    if-eqz v2, :cond_24

    if-eqz v4, :cond_24

    .line 419
    iget-boolean v0, v12, Lbu;->c:Z

    if-eqz v0, :cond_22

    iget-boolean v0, v13, Lbu;->c:Z

    if-nez v0, :cond_1d

    goto :goto_e

    .line 422
    :cond_1d
    iget-object v0, v8, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->S()F

    move-result v0

    .line 423
    iget-object v2, v12, Lbu;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbu;

    iget v2, v2, Lbu;->g:I

    iget v3, v12, Lbu;->f:I

    add-int/2addr v2, v3

    .line 424
    iget-object v3, v13, Lbu;->l:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbu;

    iget v3, v3, Lbu;->g:I

    iget v4, v13, Lbu;->f:I

    sub-int/2addr v3, v4

    if-eq v14, v1, :cond_20

    if-eqz v14, :cond_1e

    if-eq v14, v9, :cond_20

    goto :goto_f

    :cond_1e
    sub-int/2addr v3, v2

    .line 442
    invoke-virtual {v8, v3, v9}, Lca;->a(II)I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 444
    invoke-virtual {v8, v2, v10}, Lca;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_1f

    int-to-float v1, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 448
    :cond_1f
    iget-object v0, v8, Lca;->g:Lbv;

    invoke-virtual {v0, v3}, Lbv;->a(I)V

    .line 449
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    goto :goto_f

    :cond_20
    sub-int/2addr v3, v2

    .line 430
    invoke-virtual {v8, v3, v9}, Lca;->a(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 432
    invoke-virtual {v8, v2, v10}, Lca;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_21

    int-to-float v1, v3

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 436
    :cond_21
    iget-object v0, v8, Lca;->g:Lbv;

    invoke-virtual {v0, v3}, Lbv;->a(I)V

    .line 437
    iget-object v0, v8, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    goto :goto_f

    :cond_22
    :goto_e
    return-void

    .line 478
    :cond_23
    iget-object v0, v8, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 480
    iget-object v1, v0, Lbf;->f:Lca;

    iget-object v1, v1, Lca;->g:Lbv;

    iget-boolean v1, v1, Lbv;->j:Z

    if-eqz v1, :cond_24

    .line 481
    iget-object v1, v8, Lca;->d:Lbf;

    iget v1, v1, Lbf;->s:F

    .line 482
    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->g:Lbv;

    iget v0, v0, Lbv;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 484
    iget-object v1, v8, Lca;->g:Lbv;

    invoke-virtual {v1, v0}, Lbv;->a(I)V

    .line 494
    :cond_24
    :goto_f
    iget-object v0, v8, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->c:Z

    if-eqz v0, :cond_2c

    iget-object v0, v8, Lca;->k:Lbu;

    iget-boolean v0, v0, Lbu;->c:Z

    if-nez v0, :cond_25

    goto/16 :goto_10

    .line 498
    :cond_25
    iget-object v0, v8, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_26

    iget-object v0, v8, Lca;->k:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_26

    iget-object v0, v8, Lca;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-eqz v0, :cond_26

    return-void

    .line 502
    :cond_26
    iget-object v0, v8, Lca;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-nez v0, :cond_27

    iget-object v0, v8, Lca;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v1, :cond_27

    iget-object v0, v8, Lca;->d:Lbf;

    iget v0, v0, Lbf;->n:I

    if-nez v0, :cond_27

    iget-object v0, v8, Lca;->d:Lbf;

    .line 505
    invoke-virtual {v0}, Lbf;->aa()Z

    move-result v0

    if-nez v0, :cond_27

    .line 507
    iget-object v0, v8, Lca;->j:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    .line 508
    iget-object v1, v8, Lca;->k:Lbu;

    iget-object v1, v1, Lbu;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu;

    .line 509
    iget v0, v0, Lbu;->g:I

    iget-object v2, v8, Lca;->j:Lbu;

    iget v2, v2, Lbu;->f:I

    add-int/2addr v0, v2

    .line 510
    iget v1, v1, Lbu;->g:I

    iget-object v2, v8, Lca;->k:Lbu;

    iget v2, v2, Lbu;->f:I

    add-int/2addr v1, v2

    sub-int v2, v1, v0

    .line 513
    iget-object v3, v8, Lca;->j:Lbu;

    invoke-virtual {v3, v0}, Lbu;->a(I)V

    .line 514
    iget-object v0, v8, Lca;->k:Lbu;

    invoke-virtual {v0, v1}, Lbu;->a(I)V

    .line 515
    iget-object v0, v8, Lca;->g:Lbv;

    invoke-virtual {v0, v2}, Lbv;->a(I)V

    return-void

    .line 519
    :cond_27
    iget-object v0, v8, Lca;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-nez v0, :cond_29

    iget-object v0, v8, Lca;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v1, :cond_29

    iget v0, v8, Lca;->c:I

    if-ne v0, v9, :cond_29

    .line 522
    iget-object v0, v8, Lca;->j:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, v8, Lca;->k:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 523
    iget-object v0, v8, Lca;->j:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    .line 524
    iget-object v1, v8, Lca;->k:Lbu;

    iget-object v1, v1, Lbu;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu;

    .line 525
    iget v0, v0, Lbu;->g:I

    iget-object v2, v8, Lca;->j:Lbu;

    iget v2, v2, Lbu;->f:I

    add-int/2addr v0, v2

    .line 526
    iget v1, v1, Lbu;->g:I

    iget-object v2, v8, Lca;->k:Lbu;

    iget v2, v2, Lbu;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 528
    iget-object v0, v8, Lca;->g:Lbv;

    iget v0, v0, Lbv;->m:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 529
    iget-object v1, v8, Lca;->d:Lbf;

    iget v1, v1, Lbf;->r:I

    .line 530
    iget-object v2, v8, Lca;->d:Lbf;

    iget v2, v2, Lbf;->q:I

    .line 531
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v1, :cond_28

    .line 533
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 535
    :cond_28
    iget-object v1, v8, Lca;->g:Lbv;

    invoke-virtual {v1, v0}, Lbv;->a(I)V

    .line 539
    :cond_29
    iget-object v0, v8, Lca;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-nez v0, :cond_2a

    return-void

    .line 543
    :cond_2a
    iget-object v0, v8, Lca;->j:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    .line 544
    iget-object v1, v8, Lca;->k:Lbu;

    iget-object v1, v1, Lbu;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu;

    .line 545
    iget v2, v0, Lbu;->g:I

    iget-object v3, v8, Lca;->j:Lbu;

    iget v3, v3, Lbu;->f:I

    add-int/2addr v2, v3

    .line 546
    iget v3, v1, Lbu;->g:I

    iget-object v4, v8, Lca;->k:Lbu;

    iget v4, v4, Lbu;->f:I

    add-int/2addr v3, v4

    .line 547
    iget-object v4, v8, Lca;->d:Lbf;

    invoke-virtual {v4}, Lbf;->N()F

    move-result v4

    if-ne v0, v1, :cond_2b

    .line 549
    iget v2, v0, Lbu;->g:I

    .line 550
    iget v3, v1, Lbu;->g:I

    move v4, v11

    :cond_2b
    sub-int/2addr v3, v2

    .line 555
    iget-object v0, v8, Lca;->g:Lbv;

    iget v0, v0, Lbv;->g:I

    sub-int/2addr v3, v0

    .line 556
    iget-object v0, v8, Lca;->j:Lbu;

    int-to-float v1, v2

    add-float/2addr v1, v11

    int-to-float v2, v3

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lbu;->a(I)V

    .line 557
    iget-object v0, v8, Lca;->k:Lbu;

    iget-object v1, v8, Lca;->j:Lbu;

    iget v1, v1, Lbu;->g:I

    iget-object v2, v8, Lca;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lbu;->a(I)V

    :cond_2c
    :goto_10
    return-void
.end method

.method a()Z
    .locals 3

    .line 72
    iget-object v0, p0, Lce;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lce;->d:Lbf;

    iget v0, v0, Lbf;->n:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lca;->e:Lcb;

    .line 54
    iget-object v0, p0, Lca;->j:Lbu;

    invoke-virtual {v0}, Lbu;->a()V

    .line 55
    iget-object v0, p0, Lca;->k:Lbu;

    invoke-virtual {v0}, Lbu;->a()V

    .line 56
    iget-object v0, p0, Lca;->g:Lbv;

    invoke-virtual {v0}, Lbv;->a()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lca;->i:Z

    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lca;->i:Z

    .line 63
    iget-object v1, p0, Lca;->j:Lbu;

    invoke-virtual {v1}, Lbu;->a()V

    .line 64
    iget-object v1, p0, Lca;->j:Lbu;

    iput-boolean v0, v1, Lbu;->j:Z

    .line 65
    iget-object v1, p0, Lca;->k:Lbu;

    invoke-virtual {v1}, Lbu;->a()V

    .line 66
    iget-object v1, p0, Lca;->k:Lbu;

    iput-boolean v0, v1, Lbu;->j:Z

    .line 67
    iget-object v1, p0, Lca;->g:Lbv;

    iput-boolean v0, v1, Lbv;->j:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 561
    iget-object v0, p0, Lca;->j:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v1, p0, Lca;->j:Lbu;

    iget v1, v1, Lbu;->g:I

    invoke-virtual {v0, v1}, Lbf;->o(I)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 5

    .line 83
    iget-object v0, p0, Lca;->d:Lbf;

    iget-boolean v0, v0, Lbf;->b:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v1, p0, Lca;->d:Lbf;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lca;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-nez v0, :cond_3

    .line 87
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->Y()Lbf$a;

    move-result-object v0

    iput-object v0, p0, Lce;->f:Lbf$a;

    .line 88
    iget-object v0, p0, Lce;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-eq v0, v1, :cond_5

    .line 89
    iget-object v0, p0, Lca;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v0, v1, :cond_2

    .line 90
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Lbf;->Y()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    if-eq v1, v2, :cond_1

    .line 93
    invoke-virtual {v0}, Lbf;->Y()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v1, v2, :cond_2

    .line 94
    :cond_1
    invoke-virtual {v0}, Lbf;->F()I

    move-result v1

    iget-object v2, p0, Lca;->d:Lbf;

    iget-object v2, v2, Lbf;->A:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lca;->d:Lbf;

    iget-object v2, v2, Lbf;->C:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    sub-int/2addr v1, v2

    .line 95
    iget-object v2, p0, Lca;->j:Lbu;

    iget-object v3, v0, Lbf;->f:Lca;

    iget-object v3, v3, Lca;->j:Lbu;

    iget-object v4, p0, Lca;->d:Lbf;

    iget-object v4, v4, Lbf;->A:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lca;->a(Lbu;Lbu;I)V

    .line 96
    iget-object v2, p0, Lca;->k:Lbu;

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->k:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->C:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lca;->a(Lbu;Lbu;I)V

    .line 97
    iget-object v0, p0, Lca;->g:Lbv;

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lca;->f:Lbf$a;

    sget-object v1, Lbf$a;->FIXED:Lbf$a;

    if-ne v0, v1, :cond_5

    .line 102
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v1, p0, Lca;->d:Lbf;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lca;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v0, v1, :cond_5

    .line 107
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {v0}, Lbf;->Y()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    if-eq v1, v2, :cond_4

    .line 110
    invoke-virtual {v0}, Lbf;->Y()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v1, v2, :cond_5

    .line 111
    :cond_4
    iget-object v1, p0, Lca;->j:Lbu;

    iget-object v2, v0, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->j:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->A:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lca;->a(Lbu;Lbu;I)V

    .line 112
    iget-object v1, p0, Lca;->k:Lbu;

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->k:Lbu;

    iget-object v2, p0, Lca;->d:Lbf;

    iget-object v2, v2, Lbf;->C:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lca;->a(Lbu;Lbu;I)V

    return-void

    .line 127
    :cond_5
    :goto_0
    iget-object v0, p0, Lca;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lca;->d:Lbf;

    iget-boolean v0, v0, Lbf;->b:Z

    if-eqz v0, :cond_c

    .line 128
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v1

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_9

    .line 129
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->aa()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    iget-object v0, p0, Lca;->j:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->I:[Lbe;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    iput v1, v0, Lbu;->f:I

    .line 131
    iget-object v0, p0, Lca;->k:Lbu;

    iget-object v1, p0, Lca;->d:Lbf;

    iget-object v1, v1, Lbf;->I:[Lbe;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lbu;->f:I

    goto/16 :goto_2

    .line 133
    :cond_6
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lca;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 135
    iget-object v3, p0, Lca;->j:Lbu;

    iget-object v4, p0, Lca;->d:Lbf;

    iget-object v4, v4, Lbf;->I:[Lbe;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    invoke-virtual {p0, v3, v0, v1}, Lca;->a(Lbu;Lbu;I)V

    .line 137
    :cond_7
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lca;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 139
    iget-object v1, p0, Lca;->k:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->I:[Lbe;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v1, v0, v3}, Lca;->a(Lbu;Lbu;I)V

    .line 141
    :cond_8
    iget-object v0, p0, Lca;->j:Lbu;

    iput-boolean v2, v0, Lbu;->b:Z

    .line 142
    iget-object v0, p0, Lca;->k:Lbu;

    iput-boolean v2, v0, Lbu;->b:Z

    goto/16 :goto_2

    .line 144
    :cond_9
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v1

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_a

    .line 145
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lca;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 147
    iget-object v2, p0, Lca;->j:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->I:[Lbe;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lca;->a(Lbu;Lbu;I)V

    .line 148
    iget-object v0, p0, Lca;->k:Lbu;

    iget-object v1, p0, Lca;->j:Lbu;

    iget-object v2, p0, Lca;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lca;->a(Lbu;Lbu;I)V

    goto/16 :goto_2

    .line 150
    :cond_a
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lca;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 153
    iget-object v1, p0, Lca;->k:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->I:[Lbe;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lca;->a(Lbu;Lbu;I)V

    .line 154
    iget-object v0, p0, Lca;->j:Lbu;

    iget-object v1, p0, Lca;->k:Lbu;

    iget-object v2, p0, Lca;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lca;->a(Lbu;Lbu;I)V

    goto/16 :goto_2

    .line 158
    :cond_b
    iget-object v0, p0, Lca;->d:Lbf;

    instance-of v0, v0, Lbj;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lca;->d:Lbf;

    sget-object v1, Lbe$a;->CENTER:Lbe$a;

    .line 159
    invoke-virtual {v0, v1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v0

    iget-object v0, v0, Lbe;->c:Lbe;

    if-nez v0, :cond_1a

    .line 160
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->j:Lbu;

    .line 161
    iget-object v1, p0, Lca;->j:Lbu;

    iget-object v2, p0, Lca;->d:Lbf;

    invoke-virtual {v2}, Lbf;->D()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lca;->a(Lbu;Lbu;I)V

    .line 162
    iget-object v0, p0, Lca;->k:Lbu;

    iget-object v1, p0, Lca;->j:Lbu;

    iget-object v2, p0, Lca;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lca;->a(Lbu;Lbu;I)V

    goto/16 :goto_2

    .line 166
    :cond_c
    iget-object v0, p0, Lca;->f:Lbf$a;

    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v3, :cond_13

    .line 167
    iget-object v0, p0, Lca;->d:Lbf;

    iget v0, v0, Lbf;->n:I

    if-eqz v0, :cond_13

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    goto/16 :goto_1

    .line 169
    :cond_d
    iget-object v0, p0, Lca;->d:Lbf;

    iget v0, v0, Lbf;->o:I

    if-ne v0, v3, :cond_10

    .line 172
    iget-object v0, p0, Lca;->j:Lbu;

    iput-object p0, v0, Lbu;->a:Lbs;

    .line 173
    iget-object v0, p0, Lca;->k:Lbu;

    iput-object p0, v0, Lbu;->a:Lbs;

    .line 174
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    iput-object p0, v0, Lbu;->a:Lbs;

    .line 175
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iput-object p0, v0, Lbu;->a:Lbs;

    .line 176
    iget-object v0, p0, Lca;->g:Lbv;

    iput-object p0, v0, Lbv;->a:Lbs;

    .line 178
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->ab()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->l:Ljava/util/List;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->g:Lcc;

    iget-object v3, v3, Lcc;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    iput-object p0, v0, Lbv;->a:Lbs;

    .line 182
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->l:Ljava/util/List;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->g:Lcc;

    iget-object v3, v3, Lcc;->j:Lbu;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->l:Ljava/util/List;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->g:Lcc;

    iget-object v3, v3, Lcc;->k:Lbu;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 186
    :cond_e
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->aa()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 187
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->l:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->g:Lcc;

    iget-object v3, v3, Lcc;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 190
    :cond_f
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->l:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 195
    :cond_10
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    .line 196
    iget-object v3, p0, Lca;->g:Lbv;

    iget-object v3, v3, Lbv;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lca;->g:Lbv;

    iput-boolean v2, v0, Lbv;->b:Z

    .line 201
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->j:Lbu;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->k:Lbu;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lca;->j:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lca;->k:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_11
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_1

    .line 213
    :cond_12
    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    .line 214
    iget-object v3, p0, Lca;->g:Lbv;

    iget-object v3, v3, Lbv;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lca;->g:Lbv;

    iput-boolean v2, v0, Lbv;->b:Z

    .line 217
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->j:Lbu;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v3, p0, Lca;->k:Lbu;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_13
    :goto_1
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v1

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_17

    .line 230
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->aa()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 231
    iget-object v0, p0, Lca;->j:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->I:[Lbe;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    iput v1, v0, Lbu;->f:I

    .line 232
    iget-object v0, p0, Lca;->k:Lbu;

    iget-object v1, p0, Lca;->d:Lbf;

    iget-object v1, v1, Lbf;->I:[Lbe;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lbu;->f:I

    goto/16 :goto_2

    .line 234
    :cond_14
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lca;->a(Lbe;)Lbu;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lca;->d:Lbf;

    iget-object v1, v1, Lbf;->I:[Lbe;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lca;->a(Lbe;)Lbu;

    move-result-object v1

    if-eqz v0, :cond_15

    .line 245
    invoke-virtual {v0, p0}, Lbu;->b(Lbs;)V

    :cond_15
    if-eqz v1, :cond_16

    .line 248
    invoke-virtual {v1, p0}, Lbu;->b(Lbs;)V

    .line 251
    :cond_16
    sget-object v0, Lce$a;->CENTER:Lce$a;

    iput-object v0, p0, Lca;->l:Lce$a;

    goto/16 :goto_2

    .line 253
    :cond_17
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v1

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_18

    .line 254
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lca;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 256
    iget-object v3, p0, Lca;->j:Lbu;

    iget-object v4, p0, Lca;->d:Lbf;

    iget-object v4, v4, Lbf;->I:[Lbe;

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    invoke-virtual {p0, v3, v0, v1}, Lca;->a(Lbu;Lbu;I)V

    .line 257
    iget-object v0, p0, Lca;->k:Lbu;

    iget-object v1, p0, Lca;->j:Lbu;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-virtual {p0, v0, v1, v2, v3}, Lca;->a(Lbu;Lbu;ILbv;)V

    goto :goto_2

    .line 259
    :cond_18
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_19

    .line 260
    iget-object v0, p0, Lca;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lca;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 262
    iget-object v1, p0, Lca;->k:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    iget-object v3, v3, Lbf;->I:[Lbe;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lca;->a(Lbu;Lbu;I)V

    .line 263
    iget-object v0, p0, Lca;->j:Lbu;

    iget-object v1, p0, Lca;->k:Lbu;

    const/4 v2, -0x1

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-virtual {p0, v0, v1, v2, v3}, Lca;->a(Lbu;Lbu;ILbv;)V

    goto :goto_2

    .line 267
    :cond_19
    iget-object v0, p0, Lca;->d:Lbf;

    instance-of v0, v0, Lbj;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 268
    iget-object v0, p0, Lca;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->j:Lbu;

    .line 269
    iget-object v1, p0, Lca;->j:Lbu;

    iget-object v3, p0, Lca;->d:Lbf;

    invoke-virtual {v3}, Lbf;->D()I

    move-result v3

    invoke-virtual {p0, v1, v0, v3}, Lca;->a(Lbu;Lbu;I)V

    .line 270
    iget-object v0, p0, Lca;->k:Lbu;

    iget-object v1, p0, Lca;->j:Lbu;

    iget-object v3, p0, Lca;->g:Lbv;

    invoke-virtual {p0, v0, v1, v2, v3}, Lca;->a(Lbu;Lbu;ILbv;)V

    :cond_1a
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lca;->d:Lbf;

    invoke-virtual {v1}, Lbf;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
