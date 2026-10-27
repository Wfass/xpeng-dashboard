.class Ldb$c;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lbg;

.field b:Lbg;

.field c:Landroidx/constraintlayout/widget/d;

.field d:Landroidx/constraintlayout/widget/d;

.field e:I

.field f:I

.field final synthetic g:Ldb;


# direct methods
.method private a(Lbg;Landroidx/constraintlayout/widget/d;)V
    .locals 13

    .line 2596
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 2597
    new-instance v7, Landroidx/constraintlayout/widget/e$a;

    const/4 v0, -0x2

    invoke-direct {v7, v0, v0}, Landroidx/constraintlayout/widget/e$a;-><init>(II)V

    .line 2599
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const/4 v8, 0x0

    .line 2600
    invoke-virtual {v6, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2601
    iget-object v0, p0, Ldb$c;->g:Ldb;

    invoke-virtual {v0}, Ldb;->getId()I

    move-result v0

    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 2602
    iget v0, p2, Landroidx/constraintlayout/widget/d;->c:I

    if-eqz v0, :cond_0

    .line 2603
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget-object v1, p0, Ldb$c;->b:Lbg;

    invoke-virtual {v0}, Ldb;->getOptimizationLevel()I

    move-result v2

    iget-object v3, p0, Ldb$c;->g:Ldb;

    .line 2604
    invoke-virtual {v3}, Ldb;->getHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Ldb$c;->g:Ldb;

    .line 2605
    invoke-virtual {v5}, Ldb;->getWidth()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2603
    invoke-static {v0, v1, v2, v3, v4}, Ldb;->a(Ldb;Lbg;III)V

    .line 2608
    :cond_0
    invoke-virtual {p1}, Lbg;->ai()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf;

    .line 2609
    invoke-virtual {v1, v9}, Lbf;->f(Z)V

    .line 2610
    invoke-virtual {v1}, Lbf;->R()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2611
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2614
    :cond_1
    invoke-virtual {p1}, Lbg;->ai()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lbf;

    .line 2615
    invoke-virtual {v11}, Lbf;->R()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/View;

    .line 2616
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0, v7}, Landroidx/constraintlayout/widget/d;->a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 2618
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/d;->e(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lbf;->q(I)V

    .line 2619
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/d;->d(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lbf;->r(I)V

    .line 2620
    instance-of v0, v12, Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_2

    .line 2621
    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/b;

    invoke-virtual {p2, v0, v11, v7, v6}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/widget/b;Lbf;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    .line 2622
    instance-of v0, v12, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_2

    .line 2623
    move-object v0, v12

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Barrier;->d()V

    .line 2633
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 2634
    iget-object v0, p0, Ldb$c;->g:Ldb;

    invoke-virtual {v0}, Ldb;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/e$a;->resolveLayoutDirection(I)V

    goto :goto_2

    .line 2636
    :cond_3
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/e$a;->resolveLayoutDirection(I)V

    .line 2638
    :goto_2
    iget-object v0, p0, Ldb$c;->g:Ldb;

    const/4 v1, 0x0

    move-object v2, v12

    move-object v3, v11

    move-object v4, v7

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Ldb;->a(Ldb;ZLandroid/view/View;Lbf;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    .line 2639
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/d;->b(I)I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2640
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v11, v0}, Lbf;->l(I)V

    goto :goto_1

    .line 2642
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/d;->c(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lbf;->l(I)V

    goto :goto_1

    .line 2645
    :cond_5
    invoke-virtual {p1}, Lbg;->ai()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    .line 2646
    instance-of v1, v0, Lbn;

    if-eqz v1, :cond_6

    .line 2647
    invoke-virtual {v0}, Lbf;->R()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/b;

    .line 2648
    check-cast v0, Lbj;

    .line 2649
    invoke-virtual {v1, p1, v0, v6}, Landroidx/constraintlayout/widget/b;->a(Lbg;Lbj;Landroid/util/SparseArray;)V

    .line 2650
    check-cast v0, Lbn;

    .line 2651
    invoke-virtual {v0}, Lbn;->i()V

    goto :goto_3

    :cond_7
    return-void
.end method

.method private d(II)V
    .locals 5

    .line 2783
    iget-object v0, p0, Ldb$c;->g:Ldb;

    invoke-virtual {v0}, Ldb;->getOptimizationLevel()I

    move-result v0

    .line 2785
    iget-object v1, p0, Ldb$c;->g:Ldb;

    iget v1, v1, Ldb;->f:I

    iget-object v2, p0, Ldb$c;->g:Ldb;

    invoke-virtual {v2}, Ldb;->getStartState()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 2786
    iget-object v1, p0, Ldb$c;->g:Ldb;

    iget-object v2, p0, Ldb$c;->b:Lbg;

    .line 2787
    iget-object v3, p0, Ldb$c;->d:Landroidx/constraintlayout/widget/d;

    if-eqz v3, :cond_1

    iget v3, v3, Landroidx/constraintlayout/widget/d;->c:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, p1

    .line 2788
    :goto_1
    iget-object v4, p0, Ldb$c;->d:Landroidx/constraintlayout/widget/d;

    if-eqz v4, :cond_3

    iget v4, v4, Landroidx/constraintlayout/widget/d;->c:I

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, p1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, p2

    .line 2786
    :goto_3
    invoke-static {v1, v2, v0, v3, v4}, Ldb;->b(Ldb;Lbg;III)V

    .line 2789
    iget-object v1, p0, Ldb$c;->c:Landroidx/constraintlayout/widget/d;

    if-eqz v1, :cond_e

    .line 2790
    iget-object v2, p0, Ldb$c;->g:Ldb;

    iget-object v3, p0, Ldb$c;->a:Lbg;

    .line 2791
    iget v1, v1, Landroidx/constraintlayout/widget/d;->c:I

    if-nez v1, :cond_4

    move v1, p1

    goto :goto_4

    :cond_4
    move v1, p2

    .line 2792
    :goto_4
    iget-object v4, p0, Ldb$c;->c:Landroidx/constraintlayout/widget/d;

    iget v4, v4, Landroidx/constraintlayout/widget/d;->c:I

    if-nez v4, :cond_5

    move p1, p2

    .line 2790
    :cond_5
    invoke-static {v2, v3, v0, v1, p1}, Ldb;->c(Ldb;Lbg;III)V

    goto :goto_9

    .line 2795
    :cond_6
    iget-object v1, p0, Ldb$c;->c:Landroidx/constraintlayout/widget/d;

    if-eqz v1, :cond_9

    .line 2796
    iget-object v2, p0, Ldb$c;->g:Ldb;

    iget-object v3, p0, Ldb$c;->a:Lbg;

    .line 2797
    iget v1, v1, Landroidx/constraintlayout/widget/d;->c:I

    if-nez v1, :cond_7

    move v1, p1

    goto :goto_5

    :cond_7
    move v1, p2

    .line 2798
    :goto_5
    iget-object v4, p0, Ldb$c;->c:Landroidx/constraintlayout/widget/d;

    iget v4, v4, Landroidx/constraintlayout/widget/d;->c:I

    if-nez v4, :cond_8

    move v4, p2

    goto :goto_6

    :cond_8
    move v4, p1

    .line 2796
    :goto_6
    invoke-static {v2, v3, v0, v1, v4}, Ldb;->d(Ldb;Lbg;III)V

    .line 2800
    :cond_9
    iget-object v1, p0, Ldb$c;->g:Ldb;

    iget-object v2, p0, Ldb$c;->b:Lbg;

    .line 2801
    iget-object v3, p0, Ldb$c;->d:Landroidx/constraintlayout/widget/d;

    if-eqz v3, :cond_b

    iget v3, v3, Landroidx/constraintlayout/widget/d;->c:I

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    move v3, p2

    goto :goto_8

    :cond_b
    :goto_7
    move v3, p1

    .line 2802
    :goto_8
    iget-object v4, p0, Ldb$c;->d:Landroidx/constraintlayout/widget/d;

    if-eqz v4, :cond_c

    iget v4, v4, Landroidx/constraintlayout/widget/d;->c:I

    if-nez v4, :cond_d

    :cond_c
    move p1, p2

    .line 2800
    :cond_d
    invoke-static {v1, v2, v0, v3, p1}, Ldb;->e(Ldb;Lbg;III)V

    :cond_e
    :goto_9
    return-void
.end method


# virtual methods
.method a(Lbg;Landroid/view/View;)Lbf;
    .locals 4

    .line 2657
    invoke-virtual {p1}, Lbg;->R()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p1

    .line 2660
    :cond_0
    invoke-virtual {p1}, Lbg;->ai()Ljava/util/ArrayList;

    move-result-object p1

    .line 2661
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2663
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbf;

    .line 2664
    invoke-virtual {v2}, Lbf;->R()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 2725
    iget-object v0, p0, Ldb$c;->g:Ldb;

    invoke-static {v0}, Ldb;->j(Ldb;)I

    move-result v0

    iget-object v1, p0, Ldb$c;->g:Ldb;

    invoke-static {v1}, Ldb;->k(Ldb;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldb$c;->a(II)V

    .line 2726
    iget-object v0, p0, Ldb$c;->g:Ldb;

    invoke-static {v0}, Ldb;->l(Ldb;)V

    return-void
.end method

.method public a(II)V
    .locals 13

    .line 2730
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2731
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2733
    iget-object v2, p0, Ldb$c;->g:Ldb;

    iput v0, v2, Ldb;->C:I

    .line 2734
    iput v1, v2, Ldb;->D:I

    .line 2735
    invoke-virtual {v2}, Ldb;->getOptimizationLevel()I

    .line 2737
    invoke-direct {p0, p1, p2}, Ldb$c;->d(II)V

    .line 2745
    iget-object v2, p0, Ldb$c;->g:Ldb;

    invoke-virtual {v2}, Ldb;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Ldb;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    .line 2749
    invoke-direct {p0, p1, p2}, Ldb$c;->d(II)V

    .line 2751
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget-object v1, p0, Ldb$c;->a:Lbg;

    invoke-virtual {v1}, Lbg;->F()I

    move-result v1

    iput v1, v0, Ldb;->y:I

    .line 2752
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget-object v1, p0, Ldb$c;->a:Lbg;

    invoke-virtual {v1}, Lbg;->G()I

    move-result v1

    iput v1, v0, Ldb;->z:I

    .line 2753
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget-object v1, p0, Ldb$c;->b:Lbg;

    invoke-virtual {v1}, Lbg;->F()I

    move-result v1

    iput v1, v0, Ldb;->A:I

    .line 2754
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget-object v1, p0, Ldb$c;->b:Lbg;

    invoke-virtual {v1}, Lbg;->G()I

    move-result v1

    iput v1, v0, Ldb;->B:I

    .line 2755
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget v1, v0, Ldb;->y:I

    iget-object v2, p0, Ldb$c;->g:Ldb;

    iget v2, v2, Ldb;->A:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Ldb$c;->g:Ldb;

    iget v1, v1, Ldb;->z:I

    iget-object v2, p0, Ldb$c;->g:Ldb;

    iget v2, v2, Ldb;->B:I

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    :goto_2
    iput-boolean v1, v0, Ldb;->x:Z

    .line 2759
    :cond_3
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget v0, v0, Ldb;->y:I

    .line 2760
    iget-object v1, p0, Ldb$c;->g:Ldb;

    iget v1, v1, Ldb;->z:I

    .line 2761
    iget-object v2, p0, Ldb$c;->g:Ldb;

    iget v2, v2, Ldb;->C:I

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Ldb$c;->g:Ldb;

    iget v2, v2, Ldb;->C:I

    if-nez v2, :cond_5

    .line 2762
    :cond_4
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget v0, v0, Ldb;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Ldb$c;->g:Ldb;

    iget v2, v2, Ldb;->E:F

    iget-object v6, p0, Ldb$c;->g:Ldb;

    iget v6, v6, Ldb;->A:I

    iget-object v7, p0, Ldb$c;->g:Ldb;

    iget v7, v7, Ldb;->y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_5
    move v9, v0

    .line 2764
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget v0, v0, Ldb;->D:I

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget v0, v0, Ldb;->D:I

    if-nez v0, :cond_7

    .line 2765
    :cond_6
    iget-object v0, p0, Ldb$c;->g:Ldb;

    iget v0, v0, Ldb;->z:I

    int-to-float v0, v0

    iget-object v1, p0, Ldb$c;->g:Ldb;

    iget v1, v1, Ldb;->E:F

    iget-object v2, p0, Ldb$c;->g:Ldb;

    iget v2, v2, Ldb;->B:I

    iget-object v5, p0, Ldb$c;->g:Ldb;

    iget v5, v5, Ldb;->z:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    :cond_7
    move v10, v1

    .line 2768
    iget-object v0, p0, Ldb$c;->a:Lbg;

    invoke-virtual {v0}, Lbg;->i()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Ldb$c;->b:Lbg;

    .line 2769
    invoke-virtual {v0}, Lbg;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v11, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v11, v4

    .line 2770
    :goto_4
    iget-object v0, p0, Ldb$c;->a:Lbg;

    invoke-virtual {v0}, Lbg;->ad()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Ldb$c;->b:Lbg;

    .line 2771
    invoke-virtual {v0}, Lbg;->ad()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v12, v3

    goto :goto_6

    :cond_b
    :goto_5
    move v12, v4

    .line 2772
    :goto_6
    iget-object v6, p0, Ldb$c;->g:Ldb;

    move v7, p1

    move v8, p2

    invoke-static/range {v6 .. v12}, Ldb;->a(Ldb;IIIIZZ)V

    return-void
.end method

.method a(Lbg;Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V
    .locals 4

    .line 2537
    iput-object p2, p0, Ldb$c;->c:Landroidx/constraintlayout/widget/d;

    .line 2538
    iput-object p3, p0, Ldb$c;->d:Landroidx/constraintlayout/widget/d;

    .line 2539
    new-instance p1, Lbg;

    invoke-direct {p1}, Lbg;-><init>()V

    iput-object p1, p0, Ldb$c;->a:Lbg;

    .line 2540
    new-instance p1, Lbg;

    invoke-direct {p1}, Lbg;-><init>()V

    iput-object p1, p0, Ldb$c;->b:Lbg;

    .line 2541
    iget-object p1, p0, Ldb$c;->a:Lbg;

    iget-object v0, p0, Ldb$c;->g:Ldb;

    invoke-static {v0}, Ldb;->d(Ldb;)Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->g()Lbq$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbg;->a(Lbq$b;)V

    .line 2542
    iget-object p1, p0, Ldb$c;->b:Lbg;

    iget-object v0, p0, Ldb$c;->g:Ldb;

    invoke-static {v0}, Ldb;->e(Ldb;)Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->g()Lbq$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbg;->a(Lbq$b;)V

    .line 2543
    iget-object p1, p0, Ldb$c;->a:Lbg;

    invoke-virtual {p1}, Lbg;->aj()V

    .line 2544
    iget-object p1, p0, Ldb$c;->b:Lbg;

    invoke-virtual {p1}, Lbg;->aj()V

    .line 2545
    iget-object p1, p0, Ldb$c;->g:Ldb;

    invoke-static {p1}, Ldb;->f(Ldb;)Lbg;

    move-result-object p1

    iget-object v0, p0, Ldb$c;->a:Lbg;

    invoke-virtual {p0, p1, v0}, Ldb$c;->a(Lbg;Lbg;)V

    .line 2546
    iget-object p1, p0, Ldb$c;->g:Ldb;

    invoke-static {p1}, Ldb;->g(Ldb;)Lbg;

    move-result-object p1

    iget-object v0, p0, Ldb$c;->b:Lbg;

    invoke-virtual {p0, p1, v0}, Ldb$c;->a(Lbg;Lbg;)V

    .line 2547
    iget-object p1, p0, Ldb$c;->g:Ldb;

    iget p1, p1, Ldb;->i:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 2549
    iget-object p1, p0, Ldb$c;->a:Lbg;

    invoke-direct {p0, p1, p2}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;)V

    .line 2551
    :cond_0
    iget-object p1, p0, Ldb$c;->b:Lbg;

    invoke-direct {p0, p1, p3}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;)V

    goto :goto_0

    .line 2553
    :cond_1
    iget-object p1, p0, Ldb$c;->b:Lbg;

    invoke-direct {p0, p1, p3}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;)V

    if-eqz p2, :cond_2

    .line 2555
    iget-object p1, p0, Ldb$c;->a:Lbg;

    invoke-direct {p0, p1, p2}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;)V

    .line 2562
    :cond_2
    :goto_0
    iget-object p1, p0, Ldb$c;->a:Lbg;

    iget-object p2, p0, Ldb$c;->g:Ldb;

    invoke-static {p2}, Ldb;->h(Ldb;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lbg;->h(Z)V

    .line 2563
    iget-object p1, p0, Ldb$c;->a:Lbg;

    invoke-virtual {p1}, Lbg;->f()V

    .line 2573
    iget-object p1, p0, Ldb$c;->b:Lbg;

    iget-object p2, p0, Ldb$c;->g:Ldb;

    invoke-static {p2}, Ldb;->i(Ldb;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lbg;->h(Z)V

    .line 2574
    iget-object p1, p0, Ldb$c;->b:Lbg;

    invoke-virtual {p1}, Lbg;->f()V

    .line 2582
    iget-object p1, p0, Ldb$c;->g:Ldb;

    invoke-virtual {p1}, Ldb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2584
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p3, -0x2

    if-ne p2, p3, :cond_3

    .line 2585
    iget-object p2, p0, Ldb$c;->a:Lbg;

    sget-object v0, Lbf$a;->WRAP_CONTENT:Lbf$a;

    invoke-virtual {p2, v0}, Lbg;->a(Lbf$a;)V

    .line 2586
    iget-object p2, p0, Ldb$c;->b:Lbg;

    sget-object v0, Lbf$a;->WRAP_CONTENT:Lbf$a;

    invoke-virtual {p2, v0}, Lbg;->a(Lbf$a;)V

    .line 2588
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p3, :cond_4

    .line 2589
    iget-object p1, p0, Ldb$c;->a:Lbg;

    sget-object p2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    invoke-virtual {p1, p2}, Lbg;->b(Lbf$a;)V

    .line 2590
    iget-object p1, p0, Ldb$c;->b:Lbg;

    sget-object p2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    invoke-virtual {p1, p2}, Lbg;->b(Lbf$a;)V

    :cond_4
    return-void
.end method

.method a(Lbg;Lbg;)V
    .locals 4

    .line 2508
    invoke-virtual {p1}, Lbg;->ai()Ljava/util/ArrayList;

    move-result-object v0

    .line 2509
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2510
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    invoke-virtual {p2}, Lbg;->ai()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2512
    invoke-virtual {p2, p1, v1}, Lbg;->a(Lbf;Ljava/util/HashMap;)V

    .line 2513
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbf;

    .line 2515
    instance-of v3, v2, Lbb;

    if-eqz v3, :cond_0

    .line 2516
    new-instance v3, Lbb;

    invoke-direct {v3}, Lbb;-><init>()V

    goto :goto_1

    .line 2517
    :cond_0
    instance-of v3, v2, Lbi;

    if-eqz v3, :cond_1

    .line 2518
    new-instance v3, Lbi;

    invoke-direct {v3}, Lbi;-><init>()V

    goto :goto_1

    .line 2519
    :cond_1
    instance-of v3, v2, Lbh;

    if-eqz v3, :cond_2

    .line 2520
    new-instance v3, Lbh;

    invoke-direct {v3}, Lbh;-><init>()V

    goto :goto_1

    .line 2521
    :cond_2
    instance-of v3, v2, Lbm;

    if-eqz v3, :cond_3

    .line 2522
    new-instance v3, Lbm;

    invoke-direct {v3}, Lbm;-><init>()V

    goto :goto_1

    .line 2523
    :cond_3
    instance-of v3, v2, Lbj;

    if-eqz v3, :cond_4

    .line 2524
    new-instance v3, Lbk;

    invoke-direct {v3}, Lbk;-><init>()V

    goto :goto_1

    .line 2526
    :cond_4
    new-instance v3, Lbf;

    invoke-direct {v3}, Lbf;-><init>()V

    .line 2528
    :goto_1
    invoke-virtual {p2, v3}, Lbg;->b(Lbf;)V

    .line 2529
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2531
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbf;

    .line 2532
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    invoke-virtual {v0, p2, v1}, Lbf;->a(Lbf;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public b()V
    .locals 18

    move-object/from16 v0, p0

    .line 2807
    iget-object v1, v0, Ldb$c;->g:Ldb;

    invoke-virtual {v1}, Ldb;->getChildCount()I

    move-result v1

    .line 2808
    iget-object v2, v0, Ldb$c;->g:Ldb;

    iget-object v2, v2, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2809
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2810
    new-array v3, v1, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 2812
    iget-object v6, v0, Ldb$c;->g:Ldb;

    invoke-virtual {v6, v5}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2813
    new-instance v7, Lcx;

    invoke-direct {v7, v6}, Lcx;-><init>(Landroid/view/View;)V

    .line 2814
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    aput v8, v3, v5

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2815
    iget-object v8, v0, Ldb$c;->g:Ldb;

    iget-object v8, v8, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_7

    .line 2818
    iget-object v6, v0, Ldb$c;->g:Ldb;

    invoke-virtual {v6, v5}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2819
    iget-object v7, v0, Ldb$c;->g:Ldb;

    iget-object v7, v7, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcx;

    if-nez v13, :cond_1

    move-object/from16 v16, v2

    goto/16 :goto_4

    .line 2823
    :cond_1
    iget-object v7, v0, Ldb$c;->c:Landroidx/constraintlayout/widget/d;

    const-string v14, ")"

    const-string v15, " ("

    const-string v12, "no widget for  "

    const-string v11, "MotionLayout"

    if-eqz v7, :cond_3

    .line 2824
    iget-object v7, v0, Ldb$c;->a:Lbg;

    invoke-virtual {v0, v7, v6}, Ldb$c;->a(Lbg;Landroid/view/View;)Lbf;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2826
    iget-object v8, v0, Ldb$c;->g:Ldb;

    invoke-static {v8, v7}, Ldb;->a(Ldb;Lbf;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, v0, Ldb$c;->c:Landroidx/constraintlayout/widget/d;

    iget-object v9, v0, Ldb$c;->g:Ldb;

    invoke-virtual {v9}, Ldb;->getWidth()I

    move-result v9

    iget-object v10, v0, Ldb$c;->g:Ldb;

    invoke-virtual {v10}, Ldb;->getHeight()I

    move-result v10

    invoke-virtual {v13, v7, v8, v9, v10}, Lcx;->a(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/d;II)V

    goto :goto_2

    .line 2828
    :cond_2
    iget-object v7, v0, Ldb$c;->g:Ldb;

    iget v7, v7, Ldb;->l:I

    if-eqz v7, :cond_4

    .line 2829
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcl;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcl;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2833
    :cond_3
    iget-object v7, v0, Ldb$c;->g:Ldb;

    invoke-static {v7}, Ldb;->m(Ldb;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2834
    iget-object v7, v0, Ldb$c;->g:Ldb;

    iget-object v7, v7, Ldb;->H:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcj;

    iget-object v7, v0, Ldb$c;->g:Ldb;

    iget v10, v7, Ldb;->G:I

    iget-object v7, v0, Ldb$c;->g:Ldb;

    .line 2835
    invoke-static {v7}, Ldb;->n(Ldb;)I

    move-result v16

    iget-object v7, v0, Ldb$c;->g:Ldb;

    invoke-static {v7}, Ldb;->o(Ldb;)I

    move-result v17

    move-object v7, v13

    move-object v9, v6

    move-object v4, v11

    move/from16 v11, v16

    move-object/from16 v16, v2

    move-object v2, v12

    move/from16 v12, v17

    .line 2834
    invoke-virtual/range {v7 .. v12}, Lcx;->a(Lcj;Landroid/view/View;III)V

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v16, v2

    move-object v4, v11

    move-object v2, v12

    .line 2838
    :goto_3
    iget-object v7, v0, Ldb$c;->d:Landroidx/constraintlayout/widget/d;

    if-eqz v7, :cond_6

    .line 2839
    iget-object v7, v0, Ldb$c;->b:Lbg;

    invoke-virtual {v0, v7, v6}, Ldb$c;->a(Lbg;Landroid/view/View;)Lbf;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2841
    iget-object v2, v0, Ldb$c;->g:Ldb;

    invoke-static {v2, v7}, Ldb;->a(Ldb;Lbf;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, v0, Ldb$c;->d:Landroidx/constraintlayout/widget/d;

    iget-object v6, v0, Ldb$c;->g:Ldb;

    invoke-virtual {v6}, Ldb;->getWidth()I

    move-result v6

    iget-object v7, v0, Ldb$c;->g:Ldb;

    invoke-virtual {v7}, Ldb;->getHeight()I

    move-result v7

    invoke-virtual {v13, v2, v4, v6, v7}, Lcx;->b(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/d;II)V

    goto :goto_4

    .line 2843
    :cond_5
    iget-object v7, v0, Ldb$c;->g:Ldb;

    iget v7, v7, Ldb;->l:I

    if-eqz v7, :cond_6

    .line 2844
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcl;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcl;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_9

    .line 2851
    aget v4, v3, v2

    move-object/from16 v5, v16

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcx;

    .line 2852
    invoke-virtual {v4}, Lcx;->c()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 2854
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcx;

    invoke-virtual {v4, v6}, Lcx;->a(Lcx;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v5

    goto :goto_5

    :cond_9
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 2860
    iput p1, p0, Ldb$c;->e:I

    .line 2861
    iput p2, p0, Ldb$c;->f:I

    return-void
.end method

.method public c(II)Z
    .locals 1

    .line 2865
    iget v0, p0, Ldb$c;->e:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Ldb$c;->f:I

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
