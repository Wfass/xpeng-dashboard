.class public Lbw;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field private static a:Lbq$a;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lbq$a;

    invoke-direct {v0}, Lbq$a;-><init>()V

    sput-object v0, Lbw;->a:Lbq$a;

    const/4 v0, 0x0

    .line 49
    sput v0, Lbw;->b:I

    .line 50
    sput v0, Lbw;->c:I

    return-void
.end method

.method private static a(ILbb;Lbq$b;IZ)V
    .locals 1

    .line 278
    invoke-virtual {p1}, Lbb;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 280
    invoke-static {p0, p1, p2, p4}, Lbw;->a(ILbf;Lbq$b;Z)V

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 282
    invoke-static {p0, p1, p2}, Lbw;->a(ILbf;Lbq$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(ILbf;Lbq$b;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 439
    invoke-virtual/range {p1 .. p1}, Lbf;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 445
    :cond_0
    sget v2, Lbw;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lbw;->c:I

    .line 450
    instance-of v2, v0, Lbg;

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lbf;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, p0, 0x1

    invoke-static {v2, v0}, Lbw;->a(ILbf;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 451
    new-instance v4, Lbq$a;

    invoke-direct {v4}, Lbq$a;-><init>()V

    .line 452
    sget v5, Lbq$a;->a:I

    invoke-static {v2, v0, v1, v4, v5}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    .line 455
    :cond_1
    sget-object v2, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {v0, v2}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v2

    .line 456
    sget-object v4, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {v0, v4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v4

    .line 457
    invoke-virtual {v2}, Lbe;->d()I

    move-result v5

    .line 458
    invoke-virtual {v4}, Lbe;->d()I

    move-result v6

    .line 460
    invoke-virtual {v2}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v7, :cond_d

    invoke-virtual {v2}, Lbe;->f()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 461
    invoke-virtual {v2}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbe;

    .line 462
    iget-object v11, v7, Lbe;->a:Lbf;

    add-int/lit8 v12, p0, 0x1

    .line 465
    invoke-static {v12, v11}, Lbw;->a(ILbf;)Z

    move-result v13

    .line 466
    invoke-virtual {v11}, Lbf;->t()Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v13, :cond_3

    .line 467
    new-instance v14, Lbq$a;

    invoke-direct {v14}, Lbq$a;-><init>()V

    .line 468
    sget v15, Lbq$a;->a:I

    invoke-static {v12, v11, v1, v14, v15}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    .line 471
    :cond_3
    iget-object v14, v11, Lbf;->B:Lbe;

    if-ne v7, v14, :cond_4

    iget-object v14, v11, Lbf;->D:Lbe;

    iget-object v14, v14, Lbe;->c:Lbe;

    if-eqz v14, :cond_4

    iget-object v14, v11, Lbf;->D:Lbe;

    iget-object v14, v14, Lbe;->c:Lbe;

    invoke-virtual {v14}, Lbe;->f()Z

    move-result v14

    if-nez v14, :cond_5

    :cond_4
    iget-object v14, v11, Lbf;->D:Lbe;

    if-ne v7, v14, :cond_6

    iget-object v14, v11, Lbf;->B:Lbe;

    iget-object v14, v14, Lbe;->c:Lbe;

    if-eqz v14, :cond_6

    iget-object v14, v11, Lbf;->B:Lbe;

    iget-object v14, v14, Lbe;->c:Lbe;

    .line 472
    invoke-virtual {v14}, Lbe;->f()Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    move v14, v3

    goto :goto_1

    :cond_6
    const/4 v14, 0x0

    .line 473
    :goto_1
    invoke-virtual {v11}, Lbf;->Z()Lbf$a;

    move-result-object v15

    sget-object v10, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v15, v10, :cond_9

    if-eqz v13, :cond_7

    goto :goto_2

    .line 498
    :cond_7
    invoke-virtual {v11}, Lbf;->Z()Lbf$a;

    move-result-object v7

    sget-object v10, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v7, v10, :cond_2

    iget v7, v11, Lbf;->u:I

    if-ltz v7, :cond_2

    iget v7, v11, Lbf;->t:I

    if-ltz v7, :cond_2

    .line 500
    invoke-virtual {v11}, Lbf;->B()I

    move-result v7

    if-eq v7, v9, :cond_8

    iget v7, v11, Lbf;->o:I

    if-nez v7, :cond_2

    invoke-virtual {v11}, Lbf;->S()F

    move-result v7

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    .line 501
    :cond_8
    invoke-virtual {v11}, Lbf;->ab()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v11}, Lbf;->p()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v14, :cond_2

    .line 502
    invoke-virtual {v11}, Lbf;->ab()Z

    move-result v7

    if-nez v7, :cond_2

    .line 503
    invoke-static {v12, v0, v1, v11}, Lbw;->a(ILbf;Lbq$b;Lbf;)V

    goto/16 :goto_0

    .line 475
    :cond_9
    :goto_2
    invoke-virtual {v11}, Lbf;->t()Z

    move-result v10

    if-eqz v10, :cond_a

    goto/16 :goto_0

    .line 482
    :cond_a
    iget-object v10, v11, Lbf;->B:Lbe;

    if-ne v7, v10, :cond_b

    iget-object v10, v11, Lbf;->D:Lbe;

    iget-object v10, v10, Lbe;->c:Lbe;

    if-nez v10, :cond_b

    .line 483
    iget-object v7, v11, Lbf;->B:Lbe;

    invoke-virtual {v7}, Lbe;->j()I

    move-result v7

    add-int/2addr v7, v5

    .line 484
    invoke-virtual {v11}, Lbf;->G()I

    move-result v10

    add-int/2addr v10, v7

    .line 485
    invoke-virtual {v11, v7, v10}, Lbf;->b(II)V

    .line 486
    invoke-static {v12, v11, v1}, Lbw;->a(ILbf;Lbq$b;)V

    goto/16 :goto_0

    .line 487
    :cond_b
    iget-object v10, v11, Lbf;->D:Lbe;

    if-ne v7, v10, :cond_c

    iget-object v7, v11, Lbf;->B:Lbe;

    iget-object v7, v7, Lbe;->c:Lbe;

    if-nez v7, :cond_c

    .line 488
    iget-object v7, v11, Lbf;->D:Lbe;

    invoke-virtual {v7}, Lbe;->j()I

    move-result v7

    sub-int v7, v5, v7

    .line 489
    invoke-virtual {v11}, Lbf;->G()I

    move-result v10

    sub-int v10, v7, v10

    .line 490
    invoke-virtual {v11, v10, v7}, Lbf;->b(II)V

    .line 491
    invoke-static {v12, v11, v1}, Lbw;->a(ILbf;Lbq$b;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v14, :cond_2

    .line 492
    invoke-virtual {v11}, Lbf;->ab()Z

    move-result v7

    if-nez v7, :cond_2

    .line 493
    invoke-static {v12, v1, v11}, Lbw;->a(ILbq$b;Lbf;)V

    goto/16 :goto_0

    .line 508
    :cond_d
    instance-of v2, v0, Lbi;

    if-eqz v2, :cond_e

    return-void

    .line 511
    :cond_e
    invoke-virtual {v4}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v4}, Lbe;->f()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 512
    invoke-virtual {v4}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbe;

    .line 513
    iget-object v5, v4, Lbe;->a:Lbf;

    add-int/lit8 v7, p0, 0x1

    .line 514
    invoke-static {v7, v5}, Lbw;->a(ILbf;)Z

    move-result v10

    .line 515
    invoke-virtual {v5}, Lbf;->t()Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v10, :cond_10

    .line 516
    new-instance v11, Lbq$a;

    invoke-direct {v11}, Lbq$a;-><init>()V

    .line 517
    sget v12, Lbq$a;->a:I

    invoke-static {v7, v5, v1, v11, v12}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    .line 522
    :cond_10
    iget-object v11, v5, Lbf;->B:Lbe;

    if-ne v4, v11, :cond_11

    iget-object v11, v5, Lbf;->D:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    if-eqz v11, :cond_11

    iget-object v11, v5, Lbf;->D:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    invoke-virtual {v11}, Lbe;->f()Z

    move-result v11

    if-nez v11, :cond_12

    :cond_11
    iget-object v11, v5, Lbf;->D:Lbe;

    if-ne v4, v11, :cond_13

    iget-object v11, v5, Lbf;->B:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    if-eqz v11, :cond_13

    iget-object v11, v5, Lbf;->B:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    .line 523
    invoke-virtual {v11}, Lbe;->f()Z

    move-result v11

    if-eqz v11, :cond_13

    :cond_12
    move v11, v3

    goto :goto_4

    :cond_13
    const/4 v11, 0x0

    .line 524
    :goto_4
    invoke-virtual {v5}, Lbf;->Z()Lbf$a;

    move-result-object v12

    sget-object v13, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v12, v13, :cond_16

    if-eqz v10, :cond_14

    goto :goto_5

    .line 546
    :cond_14
    invoke-virtual {v5}, Lbf;->Z()Lbf$a;

    move-result-object v4

    sget-object v10, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v4, v10, :cond_f

    iget v4, v5, Lbf;->u:I

    if-ltz v4, :cond_f

    iget v4, v5, Lbf;->t:I

    if-ltz v4, :cond_f

    .line 548
    invoke-virtual {v5}, Lbf;->B()I

    move-result v4

    if-eq v4, v9, :cond_15

    iget v4, v5, Lbf;->o:I

    if-nez v4, :cond_f

    invoke-virtual {v5}, Lbf;->S()F

    move-result v4

    cmpl-float v4, v4, v8

    if-nez v4, :cond_f

    .line 549
    :cond_15
    invoke-virtual {v5}, Lbf;->ab()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v5}, Lbf;->p()Z

    move-result v4

    if-nez v4, :cond_f

    if-eqz v11, :cond_f

    .line 550
    invoke-virtual {v5}, Lbf;->ab()Z

    move-result v4

    if-nez v4, :cond_f

    .line 551
    invoke-static {v7, v0, v1, v5}, Lbw;->a(ILbf;Lbq$b;Lbf;)V

    goto/16 :goto_3

    .line 526
    :cond_16
    :goto_5
    invoke-virtual {v5}, Lbf;->t()Z

    move-result v10

    if-eqz v10, :cond_17

    goto/16 :goto_3

    .line 533
    :cond_17
    iget-object v10, v5, Lbf;->B:Lbe;

    if-ne v4, v10, :cond_18

    iget-object v10, v5, Lbf;->D:Lbe;

    iget-object v10, v10, Lbe;->c:Lbe;

    if-nez v10, :cond_18

    .line 534
    iget-object v4, v5, Lbf;->B:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    add-int/2addr v4, v6

    .line 535
    invoke-virtual {v5}, Lbf;->G()I

    move-result v10

    add-int/2addr v10, v4

    .line 536
    invoke-virtual {v5, v4, v10}, Lbf;->b(II)V

    .line 537
    invoke-static {v7, v5, v1}, Lbw;->a(ILbf;Lbq$b;)V

    goto/16 :goto_3

    .line 538
    :cond_18
    iget-object v10, v5, Lbf;->D:Lbe;

    if-ne v4, v10, :cond_19

    iget-object v4, v5, Lbf;->B:Lbe;

    iget-object v4, v4, Lbe;->c:Lbe;

    if-nez v4, :cond_19

    .line 539
    iget-object v4, v5, Lbf;->D:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    sub-int v4, v6, v4

    .line 540
    invoke-virtual {v5}, Lbf;->G()I

    move-result v10

    sub-int v10, v4, v10

    .line 541
    invoke-virtual {v5, v10, v4}, Lbf;->b(II)V

    .line 542
    invoke-static {v7, v5, v1}, Lbw;->a(ILbf;Lbq$b;)V

    goto/16 :goto_3

    :cond_19
    if-eqz v11, :cond_f

    .line 543
    invoke-virtual {v5}, Lbf;->ab()Z

    move-result v4

    if-nez v4, :cond_f

    .line 544
    invoke-static {v7, v1, v5}, Lbw;->a(ILbq$b;Lbf;)V

    goto/16 :goto_3

    .line 557
    :cond_1a
    sget-object v2, Lbe$a;->BASELINE:Lbe$a;

    invoke-virtual {v0, v2}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v2

    .line 558
    invoke-virtual {v2}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v2}, Lbe;->f()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 559
    invoke-virtual {v2}, Lbe;->d()I

    move-result v4

    .line 560
    invoke-virtual {v2}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbe;

    .line 561
    iget-object v6, v5, Lbe;->a:Lbf;

    add-int/lit8 v7, p0, 0x1

    .line 562
    invoke-static {v7, v6}, Lbw;->a(ILbf;)Z

    move-result v8

    .line 563
    invoke-virtual {v6}, Lbf;->t()Z

    move-result v9

    if-eqz v9, :cond_1c

    if-eqz v8, :cond_1c

    .line 564
    new-instance v9, Lbq$a;

    invoke-direct {v9}, Lbq$a;-><init>()V

    .line 565
    sget v10, Lbq$a;->a:I

    invoke-static {v7, v6, v1, v9, v10}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    .line 567
    :cond_1c
    invoke-virtual {v6}, Lbf;->Z()Lbf$a;

    move-result-object v9

    sget-object v10, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v9, v10, :cond_1d

    if-eqz v8, :cond_1b

    .line 569
    :cond_1d
    invoke-virtual {v6}, Lbf;->t()Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_6

    .line 576
    :cond_1e
    iget-object v8, v6, Lbf;->E:Lbe;

    if-ne v5, v8, :cond_1b

    .line 577
    invoke-virtual {v5}, Lbe;->j()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Lbf;->f(I)V

    .line 578
    invoke-static {v7, v6, v1}, Lbw;->a(ILbf;Lbq$b;)V

    goto :goto_6

    .line 583
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lbf;->m()V

    return-void
.end method

.method private static a(ILbf;Lbq$b;Lbf;)V
    .locals 7

    .line 723
    invoke-virtual {p3}, Lbf;->O()F

    move-result v0

    .line 724
    iget-object v1, p3, Lbf;->B:Lbe;

    iget-object v1, v1, Lbe;->c:Lbe;

    invoke-virtual {v1}, Lbe;->d()I

    move-result v1

    iget-object v2, p3, Lbf;->B:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    add-int/2addr v1, v2

    .line 725
    iget-object v2, p3, Lbf;->D:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    invoke-virtual {v2}, Lbe;->d()I

    move-result v2

    iget-object v3, p3, Lbf;->D:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    .line 727
    invoke-virtual {p3}, Lbf;->G()I

    move-result v3

    .line 728
    invoke-virtual {p3}, Lbf;->B()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 729
    iget v4, p3, Lbf;->o:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 731
    instance-of v3, p1, Lbg;

    if-eqz v3, :cond_0

    .line 732
    invoke-virtual {p1}, Lbf;->G()I

    move-result p1

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p1}, Lbf;->A()Lbf;

    move-result-object p1

    invoke-virtual {p1}, Lbf;->G()I

    move-result p1

    :goto_0
    mul-float v3, v0, v6

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int v3, v3

    goto :goto_1

    .line 737
    :cond_1
    iget p1, p3, Lbf;->o:I

    if-nez p1, :cond_2

    sub-int v3, v2, v1

    .line 740
    :cond_2
    :goto_1
    iget p1, p3, Lbf;->t:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 741
    iget p1, p3, Lbf;->u:I

    if-lez p1, :cond_3

    .line 742
    iget p1, p3, Lbf;->u:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v3, v1

    .line 749
    invoke-virtual {p3, v1, v3}, Lbf;->b(II)V

    add-int/lit8 p0, p0, 0x1

    .line 750
    invoke-static {p0, p3, p2}, Lbw;->a(ILbf;Lbq$b;)V

    :cond_4
    return-void
.end method

.method private static a(ILbf;Lbq$b;Lbf;Z)V
    .locals 7

    .line 682
    invoke-virtual {p3}, Lbf;->N()F

    move-result v0

    .line 683
    iget-object v1, p3, Lbf;->A:Lbe;

    iget-object v1, v1, Lbe;->c:Lbe;

    invoke-virtual {v1}, Lbe;->d()I

    move-result v1

    iget-object v2, p3, Lbf;->A:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    add-int/2addr v1, v2

    .line 684
    iget-object v2, p3, Lbf;->C:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    invoke-virtual {v2}, Lbe;->d()I

    move-result v2

    iget-object v3, p3, Lbf;->C:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    .line 686
    invoke-virtual {p3}, Lbf;->F()I

    move-result v3

    .line 687
    invoke-virtual {p3}, Lbf;->B()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 688
    iget v4, p3, Lbf;->n:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 690
    instance-of v3, p1, Lbg;

    if-eqz v3, :cond_0

    .line 691
    invoke-virtual {p1}, Lbf;->F()I

    move-result p1

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p1}, Lbf;->A()Lbf;

    move-result-object p1

    invoke-virtual {p1}, Lbf;->F()I

    move-result p1

    .line 695
    :goto_0
    invoke-virtual {p3}, Lbf;->N()F

    move-result v3

    mul-float/2addr v3, v6

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int v3, v3

    goto :goto_1

    .line 696
    :cond_1
    iget p1, p3, Lbf;->n:I

    if-nez p1, :cond_2

    sub-int v3, v2, v1

    .line 699
    :cond_2
    :goto_1
    iget p1, p3, Lbf;->q:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 700
    iget p1, p3, Lbf;->r:I

    if-lez p1, :cond_3

    .line 701
    iget p1, p3, Lbf;->r:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v3, v1

    .line 708
    invoke-virtual {p3, v1, v3}, Lbf;->a(II)V

    add-int/lit8 p0, p0, 0x1

    .line 709
    invoke-static {p0, p3, p2, p4}, Lbw;->a(ILbf;Lbq$b;Z)V

    :cond_4
    return-void
.end method

.method private static a(ILbf;Lbq$b;Z)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 310
    invoke-virtual/range {p1 .. p1}, Lbf;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 316
    :cond_0
    sget v3, Lbw;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lbw;->b:I

    .line 321
    instance-of v3, v0, Lbg;

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lbf;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, p0, 0x1

    invoke-static {v3, v0}, Lbw;->a(ILbf;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    new-instance v5, Lbq$a;

    invoke-direct {v5}, Lbq$a;-><init>()V

    .line 323
    sget v6, Lbq$a;->a:I

    invoke-static {v3, v0, v1, v5, v6}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    .line 326
    :cond_1
    sget-object v3, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {v0, v3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v3

    .line 327
    sget-object v5, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {v0, v5}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v5

    .line 328
    invoke-virtual {v3}, Lbe;->d()I

    move-result v6

    .line 329
    invoke-virtual {v5}, Lbe;->d()I

    move-result v7

    .line 331
    invoke-virtual {v3}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v8, :cond_d

    invoke-virtual {v3}, Lbe;->f()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 332
    invoke-virtual {v3}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbe;

    .line 333
    iget-object v12, v8, Lbe;->a:Lbf;

    add-int/lit8 v13, p0, 0x1

    .line 336
    invoke-static {v13, v12}, Lbw;->a(ILbf;)Z

    move-result v14

    .line 337
    invoke-virtual {v12}, Lbf;->t()Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    .line 338
    new-instance v15, Lbq$a;

    invoke-direct {v15}, Lbq$a;-><init>()V

    .line 339
    sget v11, Lbq$a;->a:I

    invoke-static {v13, v12, v1, v15, v11}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    .line 342
    :cond_2
    iget-object v11, v12, Lbf;->A:Lbe;

    if-ne v8, v11, :cond_3

    iget-object v11, v12, Lbf;->C:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    if-eqz v11, :cond_3

    iget-object v11, v12, Lbf;->C:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    invoke-virtual {v11}, Lbe;->f()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    iget-object v11, v12, Lbf;->C:Lbe;

    if-ne v8, v11, :cond_5

    iget-object v11, v12, Lbf;->A:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    if-eqz v11, :cond_5

    iget-object v11, v12, Lbf;->A:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    .line 343
    invoke-virtual {v11}, Lbe;->f()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v11, v4

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 344
    :goto_1
    invoke-virtual {v12}, Lbf;->Y()Lbf$a;

    move-result-object v15

    sget-object v4, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v15, v4, :cond_8

    if-eqz v14, :cond_6

    goto :goto_2

    .line 369
    :cond_6
    invoke-virtual {v12}, Lbf;->Y()Lbf$a;

    move-result-object v4

    sget-object v8, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v4, v8, :cond_9

    iget v4, v12, Lbf;->r:I

    if-ltz v4, :cond_9

    iget v4, v12, Lbf;->q:I

    if-ltz v4, :cond_9

    .line 371
    invoke-virtual {v12}, Lbf;->B()I

    move-result v4

    if-eq v4, v10, :cond_7

    iget v4, v12, Lbf;->n:I

    if-nez v4, :cond_9

    invoke-virtual {v12}, Lbf;->S()F

    move-result v4

    cmpl-float v4, v4, v9

    if-nez v4, :cond_9

    .line 372
    :cond_7
    invoke-virtual {v12}, Lbf;->aa()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v12}, Lbf;->p()Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v11, :cond_9

    .line 373
    invoke-virtual {v12}, Lbf;->aa()Z

    move-result v4

    if-nez v4, :cond_9

    .line 374
    invoke-static {v13, v0, v1, v12, v2}, Lbw;->a(ILbf;Lbq$b;Lbf;Z)V

    goto :goto_3

    .line 346
    :cond_8
    :goto_2
    invoke-virtual {v12}, Lbf;->t()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 353
    :cond_a
    iget-object v4, v12, Lbf;->A:Lbe;

    if-ne v8, v4, :cond_b

    iget-object v4, v12, Lbf;->C:Lbe;

    iget-object v4, v4, Lbe;->c:Lbe;

    if-nez v4, :cond_b

    .line 354
    iget-object v4, v12, Lbf;->A:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    add-int/2addr v4, v6

    .line 355
    invoke-virtual {v12}, Lbf;->F()I

    move-result v8

    add-int/2addr v8, v4

    .line 356
    invoke-virtual {v12, v4, v8}, Lbf;->a(II)V

    .line 357
    invoke-static {v13, v12, v1, v2}, Lbw;->a(ILbf;Lbq$b;Z)V

    goto :goto_3

    .line 358
    :cond_b
    iget-object v4, v12, Lbf;->C:Lbe;

    if-ne v8, v4, :cond_c

    iget-object v4, v12, Lbf;->A:Lbe;

    iget-object v4, v4, Lbe;->c:Lbe;

    if-nez v4, :cond_c

    .line 359
    iget-object v4, v12, Lbf;->C:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    sub-int v4, v6, v4

    .line 360
    invoke-virtual {v12}, Lbf;->F()I

    move-result v8

    sub-int v8, v4, v8

    .line 361
    invoke-virtual {v12, v8, v4}, Lbf;->a(II)V

    .line 362
    invoke-static {v13, v12, v1, v2}, Lbw;->a(ILbf;Lbq$b;Z)V

    goto :goto_3

    :cond_c
    if-eqz v11, :cond_9

    .line 363
    invoke-virtual {v12}, Lbf;->aa()Z

    move-result v4

    if-nez v4, :cond_9

    .line 364
    invoke-static {v13, v1, v12, v2}, Lbw;->a(ILbq$b;Lbf;Z)V

    goto :goto_3

    .line 379
    :cond_d
    instance-of v3, v0, Lbi;

    if-eqz v3, :cond_e

    return-void

    .line 382
    :cond_e
    invoke-virtual {v5}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v5}, Lbe;->f()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 383
    invoke-virtual {v5}, Lbe;->a()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbe;

    .line 384
    iget-object v5, v4, Lbe;->a:Lbf;

    const/4 v6, 0x1

    add-int/lit8 v8, p0, 0x1

    .line 385
    invoke-static {v8, v5}, Lbw;->a(ILbf;)Z

    move-result v11

    .line 386
    invoke-virtual {v5}, Lbf;->t()Z

    move-result v12

    if-eqz v12, :cond_10

    if-eqz v11, :cond_10

    .line 387
    new-instance v12, Lbq$a;

    invoke-direct {v12}, Lbq$a;-><init>()V

    .line 388
    sget v13, Lbq$a;->a:I

    invoke-static {v8, v5, v1, v12, v13}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    .line 393
    :cond_10
    iget-object v12, v5, Lbf;->A:Lbe;

    if-ne v4, v12, :cond_11

    iget-object v12, v5, Lbf;->C:Lbe;

    iget-object v12, v12, Lbe;->c:Lbe;

    if-eqz v12, :cond_11

    iget-object v12, v5, Lbf;->C:Lbe;

    iget-object v12, v12, Lbe;->c:Lbe;

    invoke-virtual {v12}, Lbe;->f()Z

    move-result v12

    if-nez v12, :cond_12

    :cond_11
    iget-object v12, v5, Lbf;->C:Lbe;

    if-ne v4, v12, :cond_13

    iget-object v12, v5, Lbf;->A:Lbe;

    iget-object v12, v12, Lbe;->c:Lbe;

    if-eqz v12, :cond_13

    iget-object v12, v5, Lbf;->A:Lbe;

    iget-object v12, v12, Lbe;->c:Lbe;

    .line 394
    invoke-virtual {v12}, Lbe;->f()Z

    move-result v12

    if-eqz v12, :cond_13

    :cond_12
    move v12, v6

    goto :goto_5

    :cond_13
    const/4 v12, 0x0

    .line 395
    :goto_5
    invoke-virtual {v5}, Lbf;->Y()Lbf$a;

    move-result-object v13

    sget-object v14, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v13, v14, :cond_16

    if-eqz v11, :cond_14

    goto :goto_6

    .line 417
    :cond_14
    invoke-virtual {v5}, Lbf;->Y()Lbf$a;

    move-result-object v4

    sget-object v11, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v4, v11, :cond_f

    iget v4, v5, Lbf;->r:I

    if-ltz v4, :cond_f

    iget v4, v5, Lbf;->q:I

    if-ltz v4, :cond_f

    .line 419
    invoke-virtual {v5}, Lbf;->B()I

    move-result v4

    if-eq v4, v10, :cond_15

    iget v4, v5, Lbf;->n:I

    if-nez v4, :cond_f

    invoke-virtual {v5}, Lbf;->S()F

    move-result v4

    cmpl-float v4, v4, v9

    if-nez v4, :cond_f

    .line 420
    :cond_15
    invoke-virtual {v5}, Lbf;->aa()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v5}, Lbf;->p()Z

    move-result v4

    if-nez v4, :cond_f

    if-eqz v12, :cond_f

    .line 421
    invoke-virtual {v5}, Lbf;->aa()Z

    move-result v4

    if-nez v4, :cond_f

    .line 422
    invoke-static {v8, v0, v1, v5, v2}, Lbw;->a(ILbf;Lbq$b;Lbf;Z)V

    goto/16 :goto_4

    .line 397
    :cond_16
    :goto_6
    invoke-virtual {v5}, Lbf;->t()Z

    move-result v11

    if-eqz v11, :cond_17

    goto/16 :goto_4

    .line 404
    :cond_17
    iget-object v11, v5, Lbf;->A:Lbe;

    if-ne v4, v11, :cond_18

    iget-object v11, v5, Lbf;->C:Lbe;

    iget-object v11, v11, Lbe;->c:Lbe;

    if-nez v11, :cond_18

    .line 405
    iget-object v4, v5, Lbf;->A:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    add-int/2addr v4, v7

    .line 406
    invoke-virtual {v5}, Lbf;->F()I

    move-result v11

    add-int/2addr v11, v4

    .line 407
    invoke-virtual {v5, v4, v11}, Lbf;->a(II)V

    .line 408
    invoke-static {v8, v5, v1, v2}, Lbw;->a(ILbf;Lbq$b;Z)V

    goto/16 :goto_4

    .line 409
    :cond_18
    iget-object v11, v5, Lbf;->C:Lbe;

    if-ne v4, v11, :cond_19

    iget-object v4, v5, Lbf;->A:Lbe;

    iget-object v4, v4, Lbe;->c:Lbe;

    if-nez v4, :cond_19

    .line 410
    iget-object v4, v5, Lbf;->C:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    sub-int v4, v7, v4

    .line 411
    invoke-virtual {v5}, Lbf;->F()I

    move-result v11

    sub-int v11, v4, v11

    .line 412
    invoke-virtual {v5, v11, v4}, Lbf;->a(II)V

    .line 413
    invoke-static {v8, v5, v1, v2}, Lbw;->a(ILbf;Lbq$b;Z)V

    goto/16 :goto_4

    :cond_19
    if-eqz v12, :cond_f

    .line 414
    invoke-virtual {v5}, Lbf;->aa()Z

    move-result v4

    if-nez v4, :cond_f

    .line 415
    invoke-static {v8, v1, v5, v2}, Lbw;->a(ILbq$b;Lbf;Z)V

    goto/16 :goto_4

    .line 427
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lbf;->l()V

    return-void
.end method

.method private static a(ILbq$b;Lbf;)V
    .locals 6

    .line 640
    invoke-virtual {p2}, Lbf;->O()F

    move-result v0

    .line 641
    iget-object v1, p2, Lbf;->B:Lbe;

    iget-object v1, v1, Lbe;->c:Lbe;

    invoke-virtual {v1}, Lbe;->d()I

    move-result v1

    .line 642
    iget-object v2, p2, Lbf;->D:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    invoke-virtual {v2}, Lbe;->d()I

    move-result v2

    .line 643
    iget-object v3, p2, Lbf;->B:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    add-int/2addr v3, v1

    .line 644
    iget-object v4, p2, Lbf;->D:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 650
    :goto_0
    invoke-virtual {p2}, Lbf;->G()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    if-lez v4, :cond_2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    int-to-float v4, v4

    mul-float/2addr v0, v4

    :goto_1
    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_3

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    .line 667
    :cond_3
    invoke-virtual {p2, v4, v5}, Lbf;->b(II)V

    add-int/lit8 p0, p0, 0x1

    .line 668
    invoke-static {p0, p2, p1}, Lbw;->a(ILbf;Lbq$b;)V

    return-void
.end method

.method private static a(ILbq$b;Lbf;Z)V
    .locals 6

    .line 598
    invoke-virtual {p2}, Lbf;->N()F

    move-result v0

    .line 599
    iget-object v1, p2, Lbf;->A:Lbe;

    iget-object v1, v1, Lbe;->c:Lbe;

    invoke-virtual {v1}, Lbe;->d()I

    move-result v1

    .line 600
    iget-object v2, p2, Lbf;->C:Lbe;

    iget-object v2, v2, Lbe;->c:Lbe;

    invoke-virtual {v2}, Lbe;->d()I

    move-result v2

    .line 601
    iget-object v3, p2, Lbf;->A:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    add-int/2addr v3, v1

    .line 602
    iget-object v4, p2, Lbf;->C:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    .line 608
    :goto_0
    invoke-virtual {p2}, Lbf;->F()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    if-lez v4, :cond_2

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    int-to-float v4, v4

    mul-float/2addr v0, v4

    :goto_1
    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_3

    sub-int v4, v0, v3

    .line 625
    :cond_3
    invoke-virtual {p2, v0, v4}, Lbf;->a(II)V

    add-int/lit8 p0, p0, 0x1

    .line 626
    invoke-static {p0, p2, p1, p3}, Lbw;->a(ILbf;Lbq$b;Z)V

    return-void
.end method

.method public static a(Lbg;Lbq$b;)V
    .locals 13

    .line 59
    invoke-virtual {p0}, Lbg;->Y()Lbf$a;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lbg;->Z()Lbf$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 61
    sput v2, Lbw;->b:I

    .line 62
    sput v2, Lbw;->c:I

    .line 68
    invoke-virtual {p0}, Lbg;->n()V

    .line 69
    invoke-virtual {p0}, Lbg;->ai()Ljava/util/ArrayList;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    .line 75
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbf;

    .line 76
    invoke-virtual {v6}, Lbf;->n()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lbg;->ae()Z

    move-result v5

    .line 86
    sget-object v6, Lbf$a;->FIXED:Lbf$a;

    if-ne v0, v6, :cond_1

    .line 87
    invoke-virtual {p0}, Lbg;->F()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lbg;->a(II)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p0, v2}, Lbg;->d(I)V

    :goto_1
    move v0, v2

    move v6, v0

    move v7, v6

    :goto_2
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ge v0, v4, :cond_7

    .line 100
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbf;

    .line 101
    instance-of v12, v11, Lbi;

    if-eqz v12, :cond_5

    .line 102
    check-cast v11, Lbi;

    .line 103
    invoke-virtual {v11}, Lbi;->c()I

    move-result v12

    if-ne v12, v10, :cond_6

    .line 104
    invoke-virtual {v11}, Lbi;->g()I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 105
    invoke-virtual {v11}, Lbi;->g()I

    move-result v6

    invoke-virtual {v11, v6}, Lbi;->B(I)V

    goto :goto_3

    .line 106
    :cond_2
    invoke-virtual {v11}, Lbi;->h()I

    move-result v6

    if-eq v6, v9, :cond_3

    invoke-virtual {p0}, Lbg;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    invoke-virtual {p0}, Lbg;->F()I

    move-result v6

    invoke-virtual {v11}, Lbi;->h()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v11, v6}, Lbi;->B(I)V

    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {p0}, Lbg;->d()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 109
    invoke-virtual {v11}, Lbi;->f()F

    move-result v6

    invoke-virtual {p0}, Lbg;->F()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 110
    invoke-virtual {v11, v6}, Lbi;->B(I)V

    :cond_4
    :goto_3
    move v6, v10

    goto :goto_4

    .line 114
    :cond_5
    instance-of v8, v11, Lbb;

    if-eqz v8, :cond_6

    .line 115
    check-cast v11, Lbb;

    .line 116
    invoke-virtual {v11}, Lbb;->h()I

    move-result v8

    if-nez v8, :cond_6

    move v7, v10

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_9

    move v0, v2

    :goto_5
    if-ge v0, v4, :cond_9

    .line 126
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbf;

    .line 127
    instance-of v11, v6, Lbi;

    if-eqz v11, :cond_8

    .line 128
    check-cast v6, Lbi;

    .line 129
    invoke-virtual {v6}, Lbi;->c()I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 130
    invoke-static {v2, v6, p1, v5}, Lbw;->a(ILbf;Lbq$b;Z)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 144
    :cond_9
    invoke-static {v2, p0, p1, v5}, Lbw;->a(ILbf;Lbq$b;Z)V

    if-eqz v7, :cond_b

    move v0, v2

    :goto_6
    if-ge v0, v4, :cond_b

    .line 152
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbf;

    .line 153
    instance-of v7, v6, Lbb;

    if-eqz v7, :cond_a

    .line 154
    check-cast v6, Lbb;

    .line 155
    invoke-virtual {v6}, Lbb;->h()I

    move-result v7

    if-nez v7, :cond_a

    .line 156
    invoke-static {v2, v6, p1, v2, v5}, Lbw;->a(ILbb;Lbq$b;IZ)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 170
    :cond_b
    sget-object v0, Lbf$a;->FIXED:Lbf$a;

    if-ne v1, v0, :cond_c

    .line 171
    invoke-virtual {p0}, Lbg;->G()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lbg;->b(II)V

    goto :goto_7

    .line 173
    :cond_c
    invoke-virtual {p0, v2}, Lbg;->e(I)V

    :goto_7
    move v0, v2

    move v1, v0

    move v6, v1

    :goto_8
    if-ge v0, v4, :cond_12

    .line 180
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbf;

    .line 181
    instance-of v11, v7, Lbi;

    if-eqz v11, :cond_10

    .line 182
    check-cast v7, Lbi;

    .line 183
    invoke-virtual {v7}, Lbi;->c()I

    move-result v11

    if-nez v11, :cond_11

    .line 184
    invoke-virtual {v7}, Lbi;->g()I

    move-result v1

    if-eq v1, v9, :cond_d

    .line 185
    invoke-virtual {v7}, Lbi;->g()I

    move-result v1

    invoke-virtual {v7, v1}, Lbi;->B(I)V

    goto :goto_9

    .line 186
    :cond_d
    invoke-virtual {v7}, Lbi;->h()I

    move-result v1

    if-eq v1, v9, :cond_e

    invoke-virtual {p0}, Lbg;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 187
    invoke-virtual {p0}, Lbg;->G()I

    move-result v1

    invoke-virtual {v7}, Lbi;->h()I

    move-result v11

    sub-int/2addr v1, v11

    invoke-virtual {v7, v1}, Lbi;->B(I)V

    goto :goto_9

    .line 188
    :cond_e
    invoke-virtual {p0}, Lbg;->e()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 189
    invoke-virtual {v7}, Lbi;->f()F

    move-result v1

    invoke-virtual {p0}, Lbg;->G()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v1, v11

    add-float/2addr v1, v8

    float-to-int v1, v1

    .line 190
    invoke-virtual {v7, v1}, Lbi;->B(I)V

    :cond_f
    :goto_9
    move v1, v10

    goto :goto_a

    .line 194
    :cond_10
    instance-of v11, v7, Lbb;

    if-eqz v11, :cond_11

    .line 195
    check-cast v7, Lbb;

    .line 196
    invoke-virtual {v7}, Lbb;->h()I

    move-result v7

    if-ne v7, v10, :cond_11

    move v6, v10

    :cond_11
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    if-eqz v1, :cond_14

    move v0, v2

    :goto_b
    if-ge v0, v4, :cond_14

    .line 206
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf;

    .line 207
    instance-of v7, v1, Lbi;

    if-eqz v7, :cond_13

    .line 208
    check-cast v1, Lbi;

    .line 209
    invoke-virtual {v1}, Lbi;->c()I

    move-result v7

    if-nez v7, :cond_13

    .line 210
    invoke-static {v10, v1, p1}, Lbw;->a(ILbf;Lbq$b;)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 224
    :cond_14
    invoke-static {v2, p0, p1}, Lbw;->a(ILbf;Lbq$b;)V

    if-eqz v6, :cond_16

    move p0, v2

    :goto_c
    if-ge p0, v4, :cond_16

    .line 232
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    .line 233
    instance-of v1, v0, Lbb;

    if-eqz v1, :cond_15

    .line 234
    check-cast v0, Lbb;

    .line 235
    invoke-virtual {v0}, Lbb;->h()I

    move-result v1

    if-ne v1, v10, :cond_15

    .line 236
    invoke-static {v2, v0, p1, v10, v5}, Lbw;->a(ILbb;Lbq$b;IZ)V

    :cond_15
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_16
    move p0, v2

    :goto_d
    if-ge p0, v4, :cond_1a

    .line 247
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    .line 248
    invoke-virtual {v0}, Lbf;->t()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v2, v0}, Lbw;->a(ILbf;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 249
    sget-object v1, Lbw;->a:Lbq$a;

    sget v6, Lbq$a;->a:I

    invoke-static {v2, v0, p1, v1, v6}, Lbg;->a(ILbf;Lbq$b;Lbq$a;I)Z

    .line 250
    instance-of v1, v0, Lbi;

    if-eqz v1, :cond_18

    .line 251
    move-object v1, v0

    check-cast v1, Lbi;

    invoke-virtual {v1}, Lbi;->c()I

    move-result v1

    if-nez v1, :cond_17

    .line 252
    invoke-static {v2, v0, p1}, Lbw;->a(ILbf;Lbq$b;)V

    goto :goto_e

    .line 254
    :cond_17
    invoke-static {v2, v0, p1, v5}, Lbw;->a(ILbf;Lbq$b;Z)V

    goto :goto_e

    .line 257
    :cond_18
    invoke-static {v2, v0, p1, v5}, Lbw;->a(ILbf;Lbq$b;Z)V

    .line 258
    invoke-static {v2, v0, p1}, Lbw;->a(ILbf;Lbq$b;)V

    :cond_19
    :goto_e
    add-int/lit8 p0, p0, 0x1

    goto :goto_d

    :cond_1a
    return-void
.end method

.method private static a(ILbf;)Z
    .locals 5

    .line 763
    invoke-virtual {p1}, Lbf;->Y()Lbf$a;

    move-result-object p0

    .line 764
    invoke-virtual {p1}, Lbf;->Z()Lbf$a;

    move-result-object v0

    .line 765
    invoke-virtual {p1}, Lbf;->A()Lbf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbf;->A()Lbf;

    move-result-object v1

    check-cast v1, Lbg;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {v1}, Lbg;->Y()Lbf$a;

    move-result-object v2

    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    :cond_1
    if-eqz v1, :cond_2

    .line 767
    invoke-virtual {v1}, Lbg;->Z()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    .line 768
    :cond_2
    sget-object v1, Lbf$a;->FIXED:Lbf$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v1, :cond_5

    .line 769
    invoke-virtual {p1}, Lbf;->d()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq p0, v1, :cond_5

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne p0, v1, :cond_3

    iget v1, p1, Lbf;->n:I

    if-nez v1, :cond_3

    iget v1, p1, Lbf;->O:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 775
    invoke-virtual {p1, v3}, Lbf;->g(I)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne p0, v1, :cond_4

    iget p0, p1, Lbf;->n:I

    if-ne p0, v4, :cond_4

    .line 778
    invoke-virtual {p1}, Lbf;->F()I

    move-result p0

    invoke-virtual {p1, v3, p0}, Lbf;->c(II)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move p0, v3

    goto :goto_2

    :cond_5
    :goto_1
    move p0, v4

    .line 779
    :goto_2
    sget-object v1, Lbf$a;->FIXED:Lbf$a;

    if-eq v0, v1, :cond_8

    .line 780
    invoke-virtual {p1}, Lbf;->e()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v0, v1, :cond_8

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v1, :cond_6

    iget v1, p1, Lbf;->o:I

    if-nez v1, :cond_6

    iget v1, p1, Lbf;->O:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    .line 786
    invoke-virtual {p1, v4}, Lbf;->g(I)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v1, :cond_7

    iget v0, p1, Lbf;->o:I

    if-ne v0, v4, :cond_7

    .line 789
    invoke-virtual {p1}, Lbf;->G()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lbf;->c(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v4

    .line 790
    :goto_4
    iget p1, p1, Lbf;->O:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_a

    if-nez p0, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v4

    :cond_a
    if-eqz p0, :cond_b

    if-eqz v0, :cond_b

    move v3, v4

    :cond_b
    return v3
.end method
