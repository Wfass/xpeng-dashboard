.class Lbh$a;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbh;

.field private b:I

.field private c:Lbf;

.field private d:Lbe;

.field private e:Lbe;

.field private f:Lbe;

.field private g:Lbe;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# virtual methods
.method public a(ZIZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 459
    iget v1, v0, Lbh$a;->m:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 461
    iget v4, v0, Lbh$a;->l:I

    add-int/2addr v4, v3

    iget-object v5, v0, Lbh$a;->a:Lbh;

    invoke-static {v5}, Lbh;->c(Lbh;)I

    move-result v5

    if-lt v4, v5, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    iget-object v4, v0, Lbh$a;->a:Lbh;

    invoke-static {v4}, Lbh;->d(Lbh;)[Lbf;

    move-result-object v4

    iget v5, v0, Lbh$a;->l:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    .line 466
    invoke-virtual {v4}, Lbf;->X()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3a

    .line 469
    iget-object v3, v0, Lbh$a;->c:Lbf;

    if-nez v3, :cond_3

    goto/16 :goto_17

    :cond_3
    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    const/4 v5, -0x1

    move v6, v2

    move v7, v5

    move v8, v7

    :goto_3
    if-ge v6, v1, :cond_9

    if-eqz p1, :cond_5

    add-int/lit8 v9, v1, -0x1

    sub-int/2addr v9, v6

    goto :goto_4

    :cond_5
    move v9, v6

    .line 481
    :goto_4
    iget v10, v0, Lbh$a;->l:I

    add-int/2addr v10, v9

    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->c(Lbh;)I

    move-result v11

    if-lt v10, v11, :cond_6

    goto :goto_5

    .line 484
    :cond_6
    iget-object v10, v0, Lbh$a;->a:Lbh;

    invoke-static {v10}, Lbh;->d(Lbh;)[Lbf;

    move-result-object v10

    iget v11, v0, Lbh$a;->l:I

    add-int/2addr v11, v9

    aget-object v9, v10, v11

    if-eqz v9, :cond_8

    .line 485
    invoke-virtual {v9}, Lbf;->B()I

    move-result v9

    if-nez v9, :cond_8

    if-ne v7, v5, :cond_7

    move v7, v6

    :cond_7
    move v8, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    const/4 v6, 0x0

    .line 494
    iget v9, v0, Lbh$a;->b:I

    if-nez v9, :cond_23

    .line 495
    iget-object v9, v0, Lbh$a;->c:Lbf;

    .line 496
    iget-object v10, v0, Lbh$a;->a:Lbh;

    invoke-static {v10}, Lbh;->e(Lbh;)I

    move-result v10

    invoke-virtual {v9, v10}, Lbf;->w(I)V

    .line 497
    iget v10, v0, Lbh$a;->i:I

    if-lez p2, :cond_a

    .line 499
    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->b(Lbh;)I

    move-result v11

    add-int/2addr v10, v11

    .line 501
    :cond_a
    iget-object v11, v9, Lbf;->B:Lbe;

    iget-object v12, v0, Lbh$a;->e:Lbe;

    invoke-virtual {v11, v12, v10}, Lbe;->a(Lbe;I)Z

    if-eqz p3, :cond_b

    .line 503
    iget-object v10, v9, Lbf;->D:Lbe;

    iget-object v11, v0, Lbh$a;->g:Lbe;

    iget v12, v0, Lbh$a;->k:I

    invoke-virtual {v10, v11, v12}, Lbe;->a(Lbe;I)Z

    :cond_b
    if-lez p2, :cond_c

    .line 506
    iget-object v10, v0, Lbh$a;->e:Lbe;

    iget-object v10, v10, Lbe;->a:Lbf;

    iget-object v10, v10, Lbf;->D:Lbe;

    .line 507
    iget-object v11, v9, Lbf;->B:Lbe;

    invoke-virtual {v10, v11, v2}, Lbe;->a(Lbe;I)Z

    .line 511
    :cond_c
    iget-object v10, v0, Lbh$a;->a:Lbh;

    invoke-static {v10}, Lbh;->f(Lbh;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_10

    invoke-virtual {v9}, Lbf;->P()Z

    move-result v10

    if-nez v10, :cond_10

    move v10, v2

    :goto_6
    if-ge v10, v1, :cond_10

    if-eqz p1, :cond_d

    add-int/lit8 v12, v1, -0x1

    sub-int/2addr v12, v10

    goto :goto_7

    :cond_d
    move v12, v10

    .line 517
    :goto_7
    iget v13, v0, Lbh$a;->l:I

    add-int/2addr v13, v12

    iget-object v14, v0, Lbh$a;->a:Lbh;

    invoke-static {v14}, Lbh;->c(Lbh;)I

    move-result v14

    if-lt v13, v14, :cond_e

    goto :goto_8

    .line 520
    :cond_e
    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->d(Lbh;)[Lbf;

    move-result-object v13

    iget v14, v0, Lbh$a;->l:I

    add-int/2addr v14, v12

    aget-object v12, v13, v14

    .line 521
    invoke-virtual {v12}, Lbf;->P()Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v12, v9

    :goto_9
    move-object v10, v6

    move v6, v2

    :goto_a
    if-ge v6, v1, :cond_3a

    if-eqz p1, :cond_11

    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v6

    goto :goto_b

    :cond_11
    move v13, v6

    .line 533
    :goto_b
    iget v14, v0, Lbh$a;->l:I

    add-int/2addr v14, v13

    iget-object v15, v0, Lbh$a;->a:Lbh;

    invoke-static {v15}, Lbh;->c(Lbh;)I

    move-result v15

    if-lt v14, v15, :cond_12

    goto/16 :goto_17

    .line 536
    :cond_12
    iget-object v14, v0, Lbh$a;->a:Lbh;

    invoke-static {v14}, Lbh;->d(Lbh;)[Lbf;

    move-result-object v14

    iget v15, v0, Lbh$a;->l:I

    add-int/2addr v15, v13

    aget-object v14, v14, v15

    if-nez v14, :cond_13

    move-object v14, v10

    move v10, v11

    goto/16 :goto_10

    :cond_13
    if-nez v6, :cond_14

    .line 541
    iget-object v15, v14, Lbf;->A:Lbe;

    iget-object v11, v0, Lbh$a;->d:Lbe;

    iget v3, v0, Lbh$a;->h:I

    invoke-virtual {v14, v15, v11, v3}, Lbf;->a(Lbe;Lbe;I)V

    :cond_14
    if-nez v13, :cond_1a

    .line 547
    iget-object v3, v0, Lbh$a;->a:Lbh;

    invoke-static {v3}, Lbh;->g(Lbh;)I

    move-result v3

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz p1, :cond_15

    .line 548
    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->h(Lbh;)F

    move-result v13

    sub-float v13, v11, v13

    goto :goto_c

    :cond_15
    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->h(Lbh;)F

    move-result v13

    .line 549
    :goto_c
    iget v15, v0, Lbh$a;->l:I

    if-nez v15, :cond_17

    iget-object v15, v0, Lbh$a;->a:Lbh;

    invoke-static {v15}, Lbh;->i(Lbh;)I

    move-result v15

    if-eq v15, v5, :cond_17

    .line 550
    iget-object v3, v0, Lbh$a;->a:Lbh;

    invoke-static {v3}, Lbh;->i(Lbh;)I

    move-result v3

    if-eqz p1, :cond_16

    .line 551
    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->j(Lbh;)F

    move-result v13

    :goto_d
    sub-float/2addr v11, v13

    goto :goto_e

    :cond_16
    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->j(Lbh;)F

    move-result v11

    :goto_e
    move v13, v11

    goto :goto_f

    :cond_17
    if-eqz p3, :cond_19

    .line 552
    iget-object v15, v0, Lbh$a;->a:Lbh;

    invoke-static {v15}, Lbh;->k(Lbh;)I

    move-result v15

    if-eq v15, v5, :cond_19

    .line 553
    iget-object v3, v0, Lbh$a;->a:Lbh;

    invoke-static {v3}, Lbh;->k(Lbh;)I

    move-result v3

    if-eqz p1, :cond_18

    .line 554
    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->l(Lbh;)F

    move-result v13

    goto :goto_d

    :cond_18
    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->l(Lbh;)F

    move-result v11

    goto :goto_e

    .line 556
    :cond_19
    :goto_f
    invoke-virtual {v14, v3}, Lbf;->v(I)V

    .line 557
    invoke-virtual {v14, v13}, Lbf;->a(F)V

    :cond_1a
    add-int/lit8 v3, v1, -0x1

    if-ne v6, v3, :cond_1b

    .line 560
    iget-object v3, v14, Lbf;->C:Lbe;

    iget-object v11, v0, Lbh$a;->f:Lbe;

    iget v13, v0, Lbh$a;->j:I

    invoke-virtual {v14, v3, v11, v13}, Lbf;->a(Lbe;Lbe;I)V

    :cond_1b
    if-eqz v10, :cond_1d

    .line 563
    iget-object v3, v14, Lbf;->A:Lbe;

    iget-object v11, v10, Lbf;->C:Lbe;

    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->a(Lbh;)I

    move-result v13

    invoke-virtual {v3, v11, v13}, Lbe;->a(Lbe;I)Z

    if-ne v6, v7, :cond_1c

    .line 565
    iget-object v3, v14, Lbf;->A:Lbe;

    iget v11, v0, Lbh$a;->h:I

    invoke-virtual {v3, v11}, Lbe;->b(I)V

    .line 567
    :cond_1c
    iget-object v3, v10, Lbf;->C:Lbe;

    iget-object v11, v14, Lbf;->A:Lbe;

    invoke-virtual {v3, v11, v2}, Lbe;->a(Lbe;I)Z

    const/4 v3, 0x1

    add-int/lit8 v11, v8, 0x1

    if-ne v6, v11, :cond_1d

    .line 569
    iget-object v3, v10, Lbf;->C:Lbe;

    iget v10, v0, Lbh$a;->j:I

    invoke-virtual {v3, v10}, Lbe;->b(I)V

    :cond_1d
    if-eq v14, v9, :cond_22

    .line 573
    iget-object v3, v0, Lbh$a;->a:Lbh;

    invoke-static {v3}, Lbh;->f(Lbh;)I

    move-result v3

    const/4 v10, 0x3

    if-ne v3, v10, :cond_1e

    .line 574
    invoke-virtual {v12}, Lbf;->P()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eq v14, v12, :cond_1e

    .line 576
    invoke-virtual {v14}, Lbf;->P()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 577
    iget-object v3, v14, Lbf;->E:Lbe;

    iget-object v11, v12, Lbf;->E:Lbe;

    invoke-virtual {v3, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_10

    .line 579
    :cond_1e
    iget-object v3, v0, Lbh$a;->a:Lbh;

    invoke-static {v3}, Lbh;->f(Lbh;)I

    move-result v3

    if-eqz v3, :cond_21

    const/4 v11, 0x1

    if-eq v3, v11, :cond_20

    if-eqz v4, :cond_1f

    .line 591
    iget-object v3, v14, Lbf;->B:Lbe;

    iget-object v11, v0, Lbh$a;->e:Lbe;

    iget v13, v0, Lbh$a;->i:I

    invoke-virtual {v3, v11, v13}, Lbe;->a(Lbe;I)Z

    .line 592
    iget-object v3, v14, Lbf;->D:Lbe;

    iget-object v11, v0, Lbh$a;->g:Lbe;

    iget v13, v0, Lbh$a;->k:I

    invoke-virtual {v3, v11, v13}, Lbe;->a(Lbe;I)Z

    goto :goto_10

    .line 594
    :cond_1f
    iget-object v3, v14, Lbf;->B:Lbe;

    iget-object v11, v9, Lbf;->B:Lbe;

    invoke-virtual {v3, v11, v2}, Lbe;->a(Lbe;I)Z

    .line 595
    iget-object v3, v14, Lbf;->D:Lbe;

    iget-object v11, v9, Lbf;->D:Lbe;

    invoke-virtual {v3, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_10

    .line 585
    :cond_20
    iget-object v3, v14, Lbf;->D:Lbe;

    iget-object v11, v9, Lbf;->D:Lbe;

    invoke-virtual {v3, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_10

    .line 581
    :cond_21
    iget-object v3, v14, Lbf;->B:Lbe;

    iget-object v11, v9, Lbf;->B:Lbe;

    invoke-virtual {v3, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_10

    :cond_22
    const/4 v10, 0x3

    :goto_10
    add-int/lit8 v6, v6, 0x1

    move v11, v10

    move-object v10, v14

    goto/16 :goto_a

    .line 604
    :cond_23
    iget-object v3, v0, Lbh$a;->c:Lbf;

    .line 605
    iget-object v9, v0, Lbh$a;->a:Lbh;

    invoke-static {v9}, Lbh;->g(Lbh;)I

    move-result v9

    invoke-virtual {v3, v9}, Lbf;->v(I)V

    .line 606
    iget v9, v0, Lbh$a;->h:I

    if-lez p2, :cond_24

    .line 608
    iget-object v10, v0, Lbh$a;->a:Lbh;

    invoke-static {v10}, Lbh;->a(Lbh;)I

    move-result v10

    add-int/2addr v9, v10

    :cond_24
    if-eqz p1, :cond_26

    .line 611
    iget-object v10, v3, Lbf;->C:Lbe;

    iget-object v11, v0, Lbh$a;->f:Lbe;

    invoke-virtual {v10, v11, v9}, Lbe;->a(Lbe;I)Z

    if-eqz p3, :cond_25

    .line 613
    iget-object v9, v3, Lbf;->A:Lbe;

    iget-object v10, v0, Lbh$a;->d:Lbe;

    iget v11, v0, Lbh$a;->j:I

    invoke-virtual {v9, v10, v11}, Lbe;->a(Lbe;I)Z

    :cond_25
    if-lez p2, :cond_28

    .line 616
    iget-object v9, v0, Lbh$a;->f:Lbe;

    iget-object v9, v9, Lbe;->a:Lbf;

    iget-object v9, v9, Lbf;->A:Lbe;

    .line 617
    iget-object v10, v3, Lbf;->C:Lbe;

    invoke-virtual {v9, v10, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_11

    .line 620
    :cond_26
    iget-object v10, v3, Lbf;->A:Lbe;

    iget-object v11, v0, Lbh$a;->d:Lbe;

    invoke-virtual {v10, v11, v9}, Lbe;->a(Lbe;I)Z

    if-eqz p3, :cond_27

    .line 622
    iget-object v9, v3, Lbf;->C:Lbe;

    iget-object v10, v0, Lbh$a;->f:Lbe;

    iget v11, v0, Lbh$a;->j:I

    invoke-virtual {v9, v10, v11}, Lbe;->a(Lbe;I)Z

    :cond_27
    if-lez p2, :cond_28

    .line 625
    iget-object v9, v0, Lbh$a;->d:Lbe;

    iget-object v9, v9, Lbe;->a:Lbf;

    iget-object v9, v9, Lbf;->C:Lbe;

    .line 626
    iget-object v10, v3, Lbf;->A:Lbe;

    invoke-virtual {v9, v10, v2}, Lbe;->a(Lbe;I)Z

    :cond_28
    :goto_11
    move-object v9, v6

    move v6, v2

    :goto_12
    if-ge v6, v1, :cond_3a

    .line 630
    iget v10, v0, Lbh$a;->l:I

    add-int/2addr v10, v6

    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->c(Lbh;)I

    move-result v11

    if-lt v10, v11, :cond_29

    goto/16 :goto_17

    .line 633
    :cond_29
    iget-object v10, v0, Lbh$a;->a:Lbh;

    invoke-static {v10}, Lbh;->d(Lbh;)[Lbf;

    move-result-object v10

    iget v11, v0, Lbh$a;->l:I

    add-int/2addr v11, v6

    aget-object v10, v10, v11

    if-nez v10, :cond_2a

    const/4 v12, 0x1

    goto/16 :goto_16

    :cond_2a
    if-nez v6, :cond_2d

    .line 638
    iget-object v11, v10, Lbf;->B:Lbe;

    iget-object v12, v0, Lbh$a;->e:Lbe;

    iget v13, v0, Lbh$a;->i:I

    invoke-virtual {v10, v11, v12, v13}, Lbf;->a(Lbe;Lbe;I)V

    .line 639
    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->e(Lbh;)I

    move-result v11

    .line 640
    iget-object v12, v0, Lbh$a;->a:Lbh;

    invoke-static {v12}, Lbh;->m(Lbh;)F

    move-result v12

    .line 641
    iget v13, v0, Lbh$a;->l:I

    if-nez v13, :cond_2b

    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->n(Lbh;)I

    move-result v13

    if-eq v13, v5, :cond_2b

    .line 642
    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->n(Lbh;)I

    move-result v11

    .line 643
    iget-object v12, v0, Lbh$a;->a:Lbh;

    invoke-static {v12}, Lbh;->o(Lbh;)F

    move-result v12

    goto :goto_13

    :cond_2b
    if-eqz p3, :cond_2c

    .line 644
    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->p(Lbh;)I

    move-result v13

    if-eq v13, v5, :cond_2c

    .line 645
    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->p(Lbh;)I

    move-result v11

    .line 646
    iget-object v12, v0, Lbh$a;->a:Lbh;

    invoke-static {v12}, Lbh;->q(Lbh;)F

    move-result v12

    .line 648
    :cond_2c
    :goto_13
    invoke-virtual {v10, v11}, Lbf;->w(I)V

    .line 649
    invoke-virtual {v10, v12}, Lbf;->b(F)V

    :cond_2d
    add-int/lit8 v11, v1, -0x1

    if-ne v6, v11, :cond_2e

    .line 652
    iget-object v11, v10, Lbf;->D:Lbe;

    iget-object v12, v0, Lbh$a;->g:Lbe;

    iget v13, v0, Lbh$a;->k:I

    invoke-virtual {v10, v11, v12, v13}, Lbf;->a(Lbe;Lbe;I)V

    :cond_2e
    if-eqz v9, :cond_30

    .line 655
    iget-object v11, v10, Lbf;->B:Lbe;

    iget-object v12, v9, Lbf;->D:Lbe;

    iget-object v13, v0, Lbh$a;->a:Lbh;

    invoke-static {v13}, Lbh;->b(Lbh;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lbe;->a(Lbe;I)Z

    if-ne v6, v7, :cond_2f

    .line 657
    iget-object v11, v10, Lbf;->B:Lbe;

    iget v12, v0, Lbh$a;->i:I

    invoke-virtual {v11, v12}, Lbe;->b(I)V

    .line 659
    :cond_2f
    iget-object v11, v9, Lbf;->D:Lbe;

    iget-object v12, v10, Lbf;->B:Lbe;

    invoke-virtual {v11, v12, v2}, Lbe;->a(Lbe;I)Z

    const/4 v11, 0x1

    add-int/lit8 v12, v8, 0x1

    if-ne v6, v12, :cond_30

    .line 661
    iget-object v9, v9, Lbf;->D:Lbe;

    iget v11, v0, Lbh$a;->k:I

    invoke-virtual {v9, v11}, Lbe;->b(I)V

    :cond_30
    if-eq v10, v3, :cond_39

    const/4 v9, 0x2

    if-eqz p1, :cond_34

    .line 666
    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->r(Lbh;)I

    move-result v11

    if-eqz v11, :cond_33

    const/4 v12, 0x1

    if-eq v11, v12, :cond_32

    if-eq v11, v9, :cond_31

    goto :goto_14

    .line 672
    :cond_31
    iget-object v9, v10, Lbf;->A:Lbe;

    iget-object v11, v3, Lbf;->A:Lbe;

    invoke-virtual {v9, v11, v2}, Lbe;->a(Lbe;I)Z

    .line 673
    iget-object v9, v10, Lbf;->C:Lbe;

    iget-object v11, v3, Lbf;->C:Lbe;

    invoke-virtual {v9, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_14

    .line 677
    :cond_32
    iget-object v9, v10, Lbf;->A:Lbe;

    iget-object v11, v3, Lbf;->A:Lbe;

    invoke-virtual {v9, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_14

    .line 668
    :cond_33
    iget-object v9, v10, Lbf;->C:Lbe;

    iget-object v11, v3, Lbf;->C:Lbe;

    invoke-virtual {v9, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_14

    .line 682
    :cond_34
    iget-object v11, v0, Lbh$a;->a:Lbh;

    invoke-static {v11}, Lbh;->r(Lbh;)I

    move-result v11

    if-eqz v11, :cond_38

    const/4 v12, 0x1

    if-eq v11, v12, :cond_37

    if-eq v11, v9, :cond_35

    goto :goto_15

    :cond_35
    if-eqz v4, :cond_36

    .line 689
    iget-object v9, v10, Lbf;->A:Lbe;

    iget-object v11, v0, Lbh$a;->d:Lbe;

    iget v13, v0, Lbh$a;->h:I

    invoke-virtual {v9, v11, v13}, Lbe;->a(Lbe;I)Z

    .line 690
    iget-object v9, v10, Lbf;->C:Lbe;

    iget-object v11, v0, Lbh$a;->f:Lbe;

    iget v13, v0, Lbh$a;->j:I

    invoke-virtual {v9, v11, v13}, Lbe;->a(Lbe;I)Z

    goto :goto_15

    .line 692
    :cond_36
    iget-object v9, v10, Lbf;->A:Lbe;

    iget-object v11, v3, Lbf;->A:Lbe;

    invoke-virtual {v9, v11, v2}, Lbe;->a(Lbe;I)Z

    .line 693
    iget-object v9, v10, Lbf;->C:Lbe;

    iget-object v11, v3, Lbf;->C:Lbe;

    invoke-virtual {v9, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_15

    .line 698
    :cond_37
    iget-object v9, v10, Lbf;->C:Lbe;

    iget-object v11, v3, Lbf;->C:Lbe;

    invoke-virtual {v9, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_15

    :cond_38
    const/4 v12, 0x1

    .line 684
    iget-object v9, v10, Lbf;->A:Lbe;

    iget-object v11, v3, Lbf;->A:Lbe;

    invoke-virtual {v9, v11, v2}, Lbe;->a(Lbe;I)Z

    goto :goto_15

    :cond_39
    :goto_14
    const/4 v12, 0x1

    :goto_15
    move-object v9, v10

    :goto_16
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    :cond_3a
    :goto_17
    return-void
.end method
