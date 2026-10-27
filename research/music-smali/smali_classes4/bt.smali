.class public Lbt;
.super Ljava/lang/Object;
.source "DependencyGraph.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lbg;

.field private c:Z

.field private d:Z

.field private e:Lbg;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lce;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcb;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lbq$b;

.field private i:Lbq$a;


# direct methods
.method public constructor <init>(Lbg;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lbt;->c:Z

    .line 45
    iput-boolean v0, p0, Lbt;->d:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbt;->f:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbt;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lbt;->h:Lbq$b;

    .line 58
    new-instance v0, Lbq$a;

    invoke-direct {v0}, Lbq$a;-><init>()V

    iput-object v0, p0, Lbt;->i:Lbq$a;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbt;->a:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lbt;->b:Lbg;

    .line 54
    iput-object p1, p0, Lbt;->e:Lbg;

    return-void
.end method

.method private a(Lbg;I)I
    .locals 6

    .line 65
    iget-object v0, p0, Lbt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 68
    iget-object v4, p0, Lbt;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcb;

    .line 69
    invoke-virtual {v4, p1, p2}, Lcb;->a(Lbg;I)J

    move-result-wide v4

    .line 70
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-int p1, v1

    return p1
.end method

.method private a(Lbf;Lbf$a;ILbf$a;I)V
    .locals 1

    .line 376
    iget-object v0, p0, Lbt;->i:Lbq$a;

    iput-object p2, v0, Lbq$a;->d:Lbf$a;

    .line 377
    iput-object p4, v0, Lbq$a;->e:Lbf$a;

    .line 378
    iput p3, v0, Lbq$a;->f:I

    .line 379
    iput p5, v0, Lbq$a;->g:I

    .line 380
    iget-object p2, p0, Lbt;->h:Lbq$b;

    invoke-interface {p2, p1, v0}, Lbq$b;->a(Lbf;Lbq$a;)V

    .line 381
    iget-object p2, p0, Lbt;->i:Lbq$a;

    iget p2, p2, Lbq$a;->h:I

    invoke-virtual {p1, p2}, Lbf;->q(I)V

    .line 382
    iget-object p2, p0, Lbt;->i:Lbq$a;

    iget p2, p2, Lbq$a;->i:I

    invoke-virtual {p1, p2}, Lbf;->r(I)V

    .line 383
    iget-object p2, p0, Lbt;->i:Lbq$a;

    iget-boolean p2, p2, Lbq$a;->k:Z

    invoke-virtual {p1, p2}, Lbf;->c(Z)V

    .line 384
    iget-object p2, p0, Lbt;->i:Lbq$a;

    iget p2, p2, Lbq$a;->j:I

    invoke-virtual {p1, p2}, Lbf;->u(I)V

    return-void
.end method

.method private a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbu;",
            "II",
            "Lbu;",
            "Ljava/util/ArrayList<",
            "Lcb;",
            ">;",
            "Lcb;",
            ")V"
        }
    .end annotation

    .line 710
    iget-object p1, p1, Lbu;->d:Lce;

    .line 711
    iget-object v0, p1, Lce;->e:Lcb;

    if-nez v0, :cond_c

    iget-object v0, p0, Lbt;->b:Lbg;

    iget-object v0, v0, Lbg;->f:Lca;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lbt;->b:Lbg;

    iget-object v0, v0, Lbg;->g:Lcc;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    .line 716
    new-instance p6, Lcb;

    invoke-direct {p6, p1, p3}, Lcb;-><init>(Lce;I)V

    .line 717
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_1
    iput-object p6, p1, Lce;->e:Lcb;

    .line 721
    invoke-virtual {p6, p1}, Lcb;->a(Lce;)V

    .line 722
    iget-object p3, p1, Lce;->j:Lbu;

    iget-object p3, p3, Lbu;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbs;

    .line 723
    instance-of v1, v0, Lbu;

    if-eqz v1, :cond_2

    .line 724
    move-object v1, v0

    check-cast v1, Lbu;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_0

    .line 727
    :cond_3
    iget-object p3, p1, Lce;->k:Lbu;

    iget-object p3, p3, Lbu;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbs;

    .line 728
    instance-of v1, v0, Lbu;

    if-eqz v1, :cond_4

    .line 729
    move-object v1, v0

    check-cast v1, Lbu;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    .line 732
    instance-of v0, p1, Lcc;

    if-eqz v0, :cond_7

    .line 733
    move-object v0, p1

    check-cast v0, Lcc;

    iget-object v0, v0, Lcc;->a:Lbu;

    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbs;

    .line 734
    instance-of v1, v0, Lbu;

    if-eqz v1, :cond_6

    .line 735
    move-object v1, v0

    check-cast v1, Lbu;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_2

    .line 739
    :cond_7
    iget-object v0, p1, Lce;->j:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbu;

    if-ne v1, p4, :cond_8

    .line 741
    iput-boolean p3, p6, Lcb;->c:Z

    :cond_8
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 743
    invoke-direct/range {v0 .. v6}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_3

    .line 745
    :cond_9
    iget-object v0, p1, Lce;->k:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbu;

    if-ne v1, p4, :cond_a

    .line 747
    iput-boolean p3, p6, Lcb;->c:Z

    :cond_a
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 749
    invoke-direct/range {v0 .. v6}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_4

    :cond_b
    if-ne p2, p3, :cond_c

    .line 751
    instance-of p3, p1, Lcc;

    if-eqz p3, :cond_c

    .line 752
    check-cast p1, Lcc;

    iget-object p1, p1, Lcc;->a:Lbu;

    iget-object p1, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lbu;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 753
    invoke-direct/range {v0 .. v6}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method private a(Lce;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lce;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcb;",
            ">;)V"
        }
    .end annotation

    .line 759
    iget-object v0, p1, Lce;->j:Lbu;

    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbs;

    .line 760
    instance-of v2, v1, Lbu;

    if-eqz v2, :cond_1

    .line 761
    move-object v4, v1

    check-cast v4, Lbu;

    const/4 v6, 0x0

    .line 762
    iget-object v7, p1, Lce;->k:Lbu;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_0

    .line 763
    :cond_1
    instance-of v2, v1, Lce;

    if-eqz v2, :cond_0

    .line 764
    check-cast v1, Lce;

    .line 765
    iget-object v3, v1, Lce;->j:Lbu;

    const/4 v5, 0x0

    iget-object v6, p1, Lce;->k:Lbu;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p1, Lce;->k:Lbu;

    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbs;

    .line 769
    instance-of v2, v1, Lbu;

    if-eqz v2, :cond_4

    .line 770
    move-object v4, v1

    check-cast v4, Lbu;

    const/4 v6, 0x1

    .line 771
    iget-object v7, p1, Lce;->j:Lbu;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_1

    .line 772
    :cond_4
    instance-of v2, v1, Lce;

    if-eqz v2, :cond_3

    .line 773
    check-cast v1, Lce;

    .line 774
    iget-object v3, v1, Lce;->k:Lbu;

    const/4 v5, 0x1

    iget-object v6, p1, Lce;->j:Lbu;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 778
    check-cast p1, Lcc;

    iget-object p1, p1, Lcc;->a:Lbu;

    iget-object p1, p1, Lbu;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbs;

    .line 779
    instance-of v1, v0, Lbu;

    if-eqz v1, :cond_6

    .line 780
    move-object v3, v0

    check-cast v3, Lbu;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    .line 781
    invoke-direct/range {v2 .. v8}, Lbt;->a(Lbu;IILbu;Ljava/util/ArrayList;Lcb;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private a(Lbg;)Z
    .locals 12

    .line 388
    iget-object v0, p1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf;

    .line 389
    iget-object v3, v1, Lbf;->K:[Lbf$a;

    aget-object v3, v3, v2

    .line 390
    iget-object v4, v1, Lbf;->K:[Lbf$a;

    const/4 v9, 0x1

    aget-object v4, v4, v9

    .line 392
    invoke-virtual {v1}, Lbf;->B()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 393
    iput-boolean v9, v1, Lbf;->b:Z

    goto :goto_0

    .line 399
    :cond_1
    iget v5, v1, Lbf;->s:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v10

    const/4 v6, 0x2

    if-gez v5, :cond_2

    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v3, v5, :cond_2

    .line 400
    iput v6, v1, Lbf;->n:I

    .line 402
    :cond_2
    iget v5, v1, Lbf;->v:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3

    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v4, v5, :cond_3

    .line 403
    iput v6, v1, Lbf;->o:I

    .line 405
    :cond_3
    invoke-virtual {v1}, Lbf;->S()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    const/4 v7, 0x3

    if-lez v5, :cond_9

    .line 406
    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v3, v5, :cond_5

    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v4, v5, :cond_4

    sget-object v5, Lbf$a;->FIXED:Lbf$a;

    if-ne v4, v5, :cond_5

    .line 407
    :cond_4
    iput v7, v1, Lbf;->n:I

    goto :goto_1

    .line 408
    :cond_5
    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v4, v5, :cond_7

    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v3, v5, :cond_6

    sget-object v5, Lbf$a;->FIXED:Lbf$a;

    if-ne v3, v5, :cond_7

    .line 409
    :cond_6
    iput v7, v1, Lbf;->o:I

    goto :goto_1

    .line 410
    :cond_7
    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v3, v5, :cond_9

    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v4, v5, :cond_9

    .line 411
    iget v5, v1, Lbf;->n:I

    if-nez v5, :cond_8

    .line 412
    iput v7, v1, Lbf;->n:I

    .line 414
    :cond_8
    iget v5, v1, Lbf;->o:I

    if-nez v5, :cond_9

    .line 415
    iput v7, v1, Lbf;->o:I

    .line 420
    :cond_9
    :goto_1
    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v3, v5, :cond_b

    iget v5, v1, Lbf;->n:I

    if-ne v5, v9, :cond_b

    .line 421
    iget-object v5, v1, Lbf;->A:Lbe;

    iget-object v5, v5, Lbe;->c:Lbe;

    if-eqz v5, :cond_a

    iget-object v5, v1, Lbf;->C:Lbe;

    iget-object v5, v5, Lbe;->c:Lbe;

    if-nez v5, :cond_b

    .line 422
    :cond_a
    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    :cond_b
    move-object v5, v3

    .line 425
    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v4, v3, :cond_d

    iget v3, v1, Lbf;->o:I

    if-ne v3, v9, :cond_d

    .line 426
    iget-object v3, v1, Lbf;->B:Lbe;

    iget-object v3, v3, Lbe;->c:Lbe;

    if-eqz v3, :cond_c

    iget-object v3, v1, Lbf;->D:Lbe;

    iget-object v3, v3, Lbe;->c:Lbe;

    if-nez v3, :cond_d

    .line 427
    :cond_c
    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    move-object v8, v3

    goto :goto_2

    :cond_d
    move-object v8, v4

    .line 431
    :goto_2
    iget-object v3, v1, Lbf;->f:Lca;

    iput-object v5, v3, Lca;->f:Lbf$a;

    .line 432
    iget-object v3, v1, Lbf;->f:Lca;

    iget v4, v1, Lbf;->n:I

    iput v4, v3, Lca;->c:I

    .line 433
    iget-object v3, v1, Lbf;->g:Lcc;

    iput-object v8, v3, Lcc;->f:Lbf$a;

    .line 434
    iget-object v3, v1, Lbf;->g:Lcc;

    iget v4, v1, Lbf;->o:I

    iput v4, v3, Lcc;->c:I

    .line 436
    sget-object v3, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-eq v5, v3, :cond_e

    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    if-eq v5, v3, :cond_e

    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v5, v3, :cond_f

    :cond_e
    sget-object v3, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-eq v8, v3, :cond_23

    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    if-eq v8, v3, :cond_23

    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v8, v3, :cond_f

    goto/16 :goto_4

    .line 455
    :cond_f
    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    const/high16 v11, 0x3f000000    # 0.5f

    if-ne v5, v3, :cond_17

    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v8, v3, :cond_10

    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    if-ne v8, v3, :cond_17

    .line 456
    :cond_10
    iget v3, v1, Lbf;->n:I

    if-ne v3, v7, :cond_12

    .line 457
    sget-object v2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v8, v2, :cond_11

    .line 458
    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v6, 0x0

    sget-object v7, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 460
    :cond_11
    invoke-virtual {v1}, Lbf;->G()I

    move-result v8

    int-to-float v2, v8

    .line 461
    iget v3, v1, Lbf;->O:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 462
    sget-object v5, Lbf$a;->FIXED:Lbf$a;

    sget-object v7, Lbf$a;->FIXED:Lbf$a;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 463
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 464
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 465
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_0

    .line 467
    :cond_12
    iget v3, v1, Lbf;->n:I

    if-ne v3, v9, :cond_13

    .line 468
    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 469
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v1

    iput v1, v2, Lbv;->m:I

    goto/16 :goto_0

    .line 471
    :cond_13
    iget v3, v1, Lbf;->n:I

    if-ne v3, v6, :cond_15

    .line 472
    iget-object v3, p1, Lbg;->K:[Lbf$a;

    aget-object v3, v3, v2

    sget-object v4, Lbf$a;->FIXED:Lbf$a;

    if-eq v3, v4, :cond_14

    iget-object v3, p1, Lbg;->K:[Lbf$a;

    aget-object v3, v3, v2

    sget-object v4, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v3, v4, :cond_17

    .line 474
    :cond_14
    iget v2, v1, Lbf;->s:F

    .line 475
    invoke-virtual {p1}, Lbg;->F()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 476
    invoke-virtual {v1}, Lbf;->G()I

    move-result v2

    .line 477
    sget-object v5, Lbf$a;->FIXED:Lbf$a;

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 478
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 479
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 480
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_0

    .line 485
    :cond_15
    iget-object v3, v1, Lbf;->I:[Lbe;

    aget-object v3, v3, v2

    iget-object v3, v3, Lbe;->c:Lbe;

    if-eqz v3, :cond_16

    iget-object v3, v1, Lbf;->I:[Lbe;

    aget-object v3, v3, v9

    iget-object v3, v3, Lbe;->c:Lbe;

    if-nez v3, :cond_17

    .line 487
    :cond_16
    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 488
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 489
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 490
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_0

    .line 495
    :cond_17
    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v8, v3, :cond_20

    sget-object v3, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v5, v3, :cond_18

    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    if-ne v5, v3, :cond_20

    .line 496
    :cond_18
    iget v3, v1, Lbf;->o:I

    if-ne v3, v7, :cond_1b

    .line 497
    sget-object v2, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v5, v2, :cond_19

    .line 498
    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v6, 0x0

    sget-object v7, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 500
    :cond_19
    invoke-virtual {v1}, Lbf;->F()I

    move-result v6

    .line 501
    iget v2, v1, Lbf;->O:F

    .line 502
    invoke-virtual {v1}, Lbf;->T()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    div-float v2, v10, v2

    :cond_1a
    int-to-float v3, v6

    mul-float/2addr v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 507
    sget-object v5, Lbf$a;->FIXED:Lbf$a;

    sget-object v7, Lbf$a;->FIXED:Lbf$a;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 508
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 509
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 510
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_0

    .line 512
    :cond_1b
    iget v3, v1, Lbf;->o:I

    if-ne v3, v9, :cond_1c

    const/4 v6, 0x0

    .line 513
    sget-object v7, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 514
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v1

    iput v1, v2, Lbv;->m:I

    goto/16 :goto_0

    .line 516
    :cond_1c
    iget v3, v1, Lbf;->o:I

    if-ne v3, v6, :cond_1e

    .line 517
    iget-object v3, p1, Lbg;->K:[Lbf$a;

    aget-object v3, v3, v9

    sget-object v4, Lbf$a;->FIXED:Lbf$a;

    if-eq v3, v4, :cond_1d

    iget-object v3, p1, Lbg;->K:[Lbf$a;

    aget-object v3, v3, v9

    sget-object v4, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v3, v4, :cond_20

    .line 519
    :cond_1d
    iget v2, v1, Lbf;->v:F

    .line 520
    invoke-virtual {v1}, Lbf;->F()I

    move-result v6

    .line 521
    invoke-virtual {p1}, Lbg;->G()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v8, v2

    .line 522
    sget-object v7, Lbf$a;->FIXED:Lbf$a;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 523
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 524
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 525
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_0

    .line 530
    :cond_1e
    iget-object v3, v1, Lbf;->I:[Lbe;

    aget-object v3, v3, v6

    iget-object v3, v3, Lbe;->c:Lbe;

    if-eqz v3, :cond_1f

    iget-object v3, v1, Lbf;->I:[Lbe;

    aget-object v3, v3, v7

    iget-object v3, v3, Lbe;->c:Lbe;

    if-nez v3, :cond_20

    .line 532
    :cond_1f
    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 533
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 534
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 535
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_0

    .line 540
    :cond_20
    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v5, v3, :cond_0

    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v8, v3, :cond_0

    .line 541
    iget v3, v1, Lbf;->n:I

    if-eq v3, v9, :cond_22

    iget v3, v1, Lbf;->o:I

    if-ne v3, v9, :cond_21

    goto :goto_3

    .line 546
    :cond_21
    iget v3, v1, Lbf;->o:I

    if-ne v3, v6, :cond_0

    iget v3, v1, Lbf;->n:I

    if-ne v3, v6, :cond_0

    iget-object v3, p1, Lbg;->K:[Lbf$a;

    aget-object v2, v3, v2

    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lbg;->K:[Lbf$a;

    aget-object v2, v2, v9

    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    if-ne v2, v3, :cond_0

    .line 550
    iget v2, v1, Lbf;->s:F

    .line 551
    iget v3, v1, Lbf;->v:F

    .line 552
    invoke-virtual {p1}, Lbg;->F()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 553
    invoke-virtual {p1}, Lbg;->G()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 554
    sget-object v5, Lbf$a;->FIXED:Lbf$a;

    sget-object v7, Lbf$a;->FIXED:Lbf$a;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 555
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 556
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 557
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_0

    .line 543
    :cond_22
    :goto_3
    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v6, 0x0

    sget-object v7, Lbf$a;->WRAP_CONTENT:Lbf$a;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 544
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    iput v3, v2, Lbv;->m:I

    .line 545
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v1

    iput v1, v2, Lbv;->m:I

    goto/16 :goto_0

    .line 438
    :cond_23
    :goto_4
    invoke-virtual {v1}, Lbf;->F()I

    move-result v2

    .line 439
    sget-object v3, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v5, v3, :cond_24

    .line 440
    invoke-virtual {p1}, Lbg;->F()I

    move-result v2

    iget-object v3, v1, Lbf;->A:Lbe;

    iget v3, v3, Lbe;->d:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Lbf;->C:Lbe;

    iget v3, v3, Lbe;->d:I

    sub-int/2addr v2, v3

    .line 441
    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    move v6, v2

    move-object v5, v3

    goto :goto_5

    :cond_24
    move v6, v2

    .line 443
    :goto_5
    invoke-virtual {v1}, Lbf;->G()I

    move-result v2

    .line 444
    sget-object v3, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v8, v3, :cond_25

    .line 445
    invoke-virtual {p1}, Lbg;->G()I

    move-result v2

    iget-object v3, v1, Lbf;->B:Lbe;

    iget v3, v3, Lbe;->d:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Lbf;->D:Lbe;

    iget v3, v3, Lbe;->d:I

    sub-int/2addr v2, v3

    .line 446
    sget-object v3, Lbf$a;->FIXED:Lbf$a;

    move v8, v2

    move-object v7, v3

    goto :goto_6

    :cond_25
    move-object v7, v8

    move v8, v2

    :goto_6
    move-object v3, p0

    move-object v4, v1

    .line 448
    invoke-direct/range {v3 .. v8}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 449
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 450
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 451
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_0

    :cond_26
    return v2
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 565
    iget-object v0, p0, Lbt;->b:Lbg;

    iget-object v0, v0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf;

    .line 566
    iget-boolean v2, v1, Lbf;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 569
    :cond_1
    iget-object v2, v1, Lbf;->K:[Lbf$a;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 570
    iget-object v2, v1, Lbf;->K:[Lbf$a;

    const/4 v9, 0x1

    aget-object v10, v2, v9

    .line 571
    iget v2, v1, Lbf;->n:I

    .line 572
    iget v4, v1, Lbf;->o:I

    .line 574
    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v8, v5, :cond_3

    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    .line 577
    :goto_2
    sget-object v5, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v10, v5, :cond_4

    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    .line 580
    :cond_5
    iget-object v4, v1, Lbf;->f:Lca;

    iget-object v4, v4, Lca;->g:Lbv;

    iget-boolean v4, v4, Lbv;->j:Z

    .line 581
    iget-object v5, v1, Lbf;->g:Lcc;

    iget-object v5, v5, Lcc;->g:Lbv;

    iget-boolean v5, v5, Lbv;->j:Z

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 584
    sget-object v4, Lbf$a;->FIXED:Lbf$a;

    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    iget v5, v2, Lbv;->g:I

    sget-object v6, Lbf$a;->FIXED:Lbf$a;

    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    iget v7, v2, Lbv;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 586
    iput-boolean v9, v1, Lbf;->b:Z

    goto/16 :goto_3

    :cond_6
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 588
    sget-object v4, Lbf$a;->FIXED:Lbf$a;

    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    iget v5, v2, Lbv;->g:I

    sget-object v6, Lbf$a;->WRAP_CONTENT:Lbf$a;

    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    iget v7, v2, Lbv;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 590
    sget-object v2, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v10, v2, :cond_7

    .line 591
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    iput v3, v2, Lbv;->m:I

    goto :goto_3

    .line 593
    :cond_7
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 594
    iput-boolean v9, v1, Lbf;->b:Z

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_a

    if-eqz v2, :cond_a

    .line 597
    sget-object v4, Lbf$a;->WRAP_CONTENT:Lbf$a;

    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    iget v5, v2, Lbv;->g:I

    sget-object v6, Lbf$a;->FIXED:Lbf$a;

    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    iget v7, v2, Lbv;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lbt;->a(Lbf;Lbf$a;ILbf$a;I)V

    .line 599
    sget-object v2, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v8, v2, :cond_9

    .line 600
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    iput v3, v2, Lbv;->m:I

    goto :goto_3

    .line 602
    :cond_9
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    invoke-virtual {v1}, Lbf;->F()I

    move-result v3

    invoke-virtual {v2, v3}, Lbv;->a(I)V

    .line 603
    iput-boolean v9, v1, Lbf;->b:Z

    .line 606
    :cond_a
    :goto_3
    iget-boolean v2, v1, Lbf;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->b:Lbv;

    if-eqz v2, :cond_0

    .line 607
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->b:Lbv;

    invoke-virtual {v1}, Lbf;->Q()I

    move-result v1

    invoke-virtual {v2, v1}, Lbv;->a(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public a(Lbq$b;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lbt;->h:Lbq$b;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lce;",
            ">;)V"
        }
    .end annotation

    .line 643
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v0, p0, Lbt;->e:Lbg;

    iget-object v0, v0, Lbg;->f:Lca;

    invoke-virtual {v0}, Lca;->c()V

    .line 645
    iget-object v0, p0, Lbt;->e:Lbg;

    iget-object v0, v0, Lbg;->g:Lcc;

    invoke-virtual {v0}, Lcc;->c()V

    .line 646
    iget-object v0, p0, Lbt;->e:Lbg;

    iget-object v0, v0, Lbg;->f:Lca;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lbt;->e:Lbg;

    iget-object v0, v0, Lbg;->g:Lcc;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v0, p0, Lbt;->e:Lbg;

    iget-object v0, v0, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbf;

    .line 650
    instance-of v3, v2, Lbi;

    if-eqz v3, :cond_1

    .line 651
    new-instance v3, Lby;

    invoke-direct {v3, v2}, Lby;-><init>(Lbf;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {v2}, Lbf;->aa()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 655
    iget-object v3, v2, Lbf;->d:Lbr;

    if-nez v3, :cond_2

    .line 657
    new-instance v3, Lbr;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lbr;-><init>(Lbf;I)V

    iput-object v3, v2, Lbf;->d:Lbr;

    :cond_2
    if-nez v1, :cond_3

    .line 660
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 662
    :cond_3
    iget-object v3, v2, Lbf;->d:Lbr;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 664
    :cond_4
    iget-object v3, v2, Lbf;->f:Lca;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :goto_1
    invoke-virtual {v2}, Lbf;->ab()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 667
    iget-object v3, v2, Lbf;->e:Lbr;

    if-nez v3, :cond_5

    .line 669
    new-instance v3, Lbr;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lbr;-><init>(Lbf;I)V

    iput-object v3, v2, Lbf;->e:Lbr;

    :cond_5
    if-nez v1, :cond_6

    .line 672
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 674
    :cond_6
    iget-object v3, v2, Lbf;->e:Lbr;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 676
    :cond_7
    iget-object v3, v2, Lbf;->g:Lcc;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :goto_2
    instance-of v3, v2, Lbk;

    if-eqz v3, :cond_0

    .line 679
    new-instance v3, Lbz;

    invoke-direct {v3, v2}, Lbz;-><init>(Lbf;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    .line 683
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 685
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lce;

    .line 686
    invoke-virtual {v1}, Lce;->c()V

    goto :goto_3

    .line 688
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lce;

    .line 689
    iget-object v1, v0, Lce;->d:Lbf;

    iget-object v2, p0, Lbt;->e:Lbg;

    if-ne v1, v2, :cond_b

    goto :goto_4

    .line 692
    :cond_b
    invoke-virtual {v0}, Lce;->f()V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public a(Z)Z
    .locals 8

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 112
    iget-boolean v1, p0, Lbt;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lbt;->d:Z

    if-eqz v1, :cond_2

    .line 113
    :cond_0
    iget-object v1, p0, Lbt;->b:Lbg;

    iget-object v1, v1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf;

    .line 114
    invoke-virtual {v3}, Lbf;->z()V

    .line 115
    iput-boolean v2, v3, Lbf;->b:Z

    .line 116
    iget-object v4, v3, Lbf;->f:Lca;

    invoke-virtual {v4}, Lca;->d()V

    .line 117
    iget-object v3, v3, Lbf;->g:Lcc;

    invoke-virtual {v3}, Lcc;->d()V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v1, p0, Lbt;->b:Lbg;

    invoke-virtual {v1}, Lbg;->z()V

    .line 120
    iget-object v1, p0, Lbt;->b:Lbg;

    iput-boolean v2, v1, Lbg;->b:Z

    .line 121
    iget-object v1, v1, Lbg;->f:Lca;

    invoke-virtual {v1}, Lca;->d()V

    .line 122
    iget-object v1, p0, Lbt;->b:Lbg;

    iget-object v1, v1, Lbg;->g:Lcc;

    invoke-virtual {v1}, Lcc;->d()V

    .line 123
    iput-boolean v2, p0, Lbt;->d:Z

    .line 126
    :cond_2
    iget-object v1, p0, Lbt;->e:Lbg;

    invoke-direct {p0, v1}, Lbt;->a(Lbg;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 131
    :cond_3
    iget-object v1, p0, Lbt;->b:Lbg;

    invoke-virtual {v1, v2}, Lbg;->o(I)V

    .line 132
    iget-object v1, p0, Lbt;->b:Lbg;

    invoke-virtual {v1, v2}, Lbg;->p(I)V

    .line 134
    iget-object v1, p0, Lbt;->b:Lbg;

    invoke-virtual {v1, v2}, Lbg;->x(I)Lbf$a;

    move-result-object v1

    .line 135
    iget-object v3, p0, Lbt;->b:Lbg;

    invoke-virtual {v3, v0}, Lbg;->x(I)Lbf$a;

    move-result-object v3

    .line 137
    iget-boolean v4, p0, Lbt;->c:Z

    if-eqz v4, :cond_4

    .line 138
    invoke-virtual {p0}, Lbt;->d()V

    .line 141
    :cond_4
    iget-object v4, p0, Lbt;->b:Lbg;

    invoke-virtual {v4}, Lbg;->D()I

    move-result v4

    .line 142
    iget-object v5, p0, Lbt;->b:Lbg;

    invoke-virtual {v5}, Lbg;->E()I

    move-result v5

    .line 144
    iget-object v6, p0, Lbt;->b:Lbg;

    iget-object v6, v6, Lbg;->f:Lca;

    iget-object v6, v6, Lca;->j:Lbu;

    invoke-virtual {v6, v4}, Lbu;->a(I)V

    .line 145
    iget-object v6, p0, Lbt;->b:Lbg;

    iget-object v6, v6, Lbg;->g:Lcc;

    iget-object v6, v6, Lcc;->j:Lbu;

    invoke-virtual {v6, v5}, Lbu;->a(I)V

    .line 149
    invoke-virtual {p0}, Lbt;->a()V

    .line 152
    sget-object v6, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v1, v6, :cond_5

    sget-object v6, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v3, v6, :cond_9

    :cond_5
    if-eqz p1, :cond_7

    .line 154
    iget-object v6, p0, Lbt;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lce;

    .line 155
    invoke-virtual {v7}, Lce;->a()Z

    move-result v7

    if-nez v7, :cond_6

    move p1, v2

    :cond_7
    if-eqz p1, :cond_8

    .line 162
    sget-object v6, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v1, v6, :cond_8

    .line 163
    iget-object v6, p0, Lbt;->b:Lbg;

    sget-object v7, Lbf$a;->FIXED:Lbf$a;

    invoke-virtual {v6, v7}, Lbg;->a(Lbf$a;)V

    .line 164
    iget-object v6, p0, Lbt;->b:Lbg;

    invoke-direct {p0, v6, v2}, Lbt;->a(Lbg;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lbg;->q(I)V

    .line 165
    iget-object v6, p0, Lbt;->b:Lbg;

    iget-object v6, v6, Lbg;->f:Lca;

    iget-object v6, v6, Lca;->g:Lbv;

    iget-object v7, p0, Lbt;->b:Lbg;

    invoke-virtual {v7}, Lbg;->F()I

    move-result v7

    invoke-virtual {v6, v7}, Lbv;->a(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 167
    sget-object p1, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v3, p1, :cond_9

    .line 168
    iget-object p1, p0, Lbt;->b:Lbg;

    sget-object v6, Lbf$a;->FIXED:Lbf$a;

    invoke-virtual {p1, v6}, Lbg;->b(Lbf$a;)V

    .line 169
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-direct {p0, p1, v0}, Lbt;->a(Lbg;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lbg;->r(I)V

    .line 170
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->g:Lcc;

    iget-object p1, p1, Lcc;->g:Lbv;

    iget-object v6, p0, Lbt;->b:Lbg;

    invoke-virtual {v6}, Lbg;->G()I

    move-result v6

    invoke-virtual {p1, v6}, Lbv;->a(I)V

    .line 179
    :cond_9
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->K:[Lbf$a;

    aget-object p1, p1, v2

    sget-object v6, Lbf$a;->FIXED:Lbf$a;

    if-eq p1, v6, :cond_b

    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->K:[Lbf$a;

    aget-object p1, p1, v2

    sget-object v6, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne p1, v6, :cond_a

    goto :goto_1

    :cond_a
    move p1, v2

    goto :goto_2

    .line 183
    :cond_b
    :goto_1
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1}, Lbg;->F()I

    move-result p1

    add-int/2addr p1, v4

    .line 184
    iget-object v6, p0, Lbt;->b:Lbg;

    iget-object v6, v6, Lbg;->f:Lca;

    iget-object v6, v6, Lca;->k:Lbu;

    invoke-virtual {v6, p1}, Lbu;->a(I)V

    .line 185
    iget-object v6, p0, Lbt;->b:Lbg;

    iget-object v6, v6, Lbg;->f:Lca;

    iget-object v6, v6, Lca;->g:Lbv;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Lbv;->a(I)V

    .line 186
    invoke-virtual {p0}, Lbt;->a()V

    .line 187
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->K:[Lbf$a;

    aget-object p1, p1, v0

    sget-object v4, Lbf$a;->FIXED:Lbf$a;

    if-eq p1, v4, :cond_c

    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->K:[Lbf$a;

    aget-object p1, p1, v0

    sget-object v4, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne p1, v4, :cond_d

    .line 189
    :cond_c
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1}, Lbg;->G()I

    move-result p1

    add-int/2addr p1, v5

    .line 190
    iget-object v4, p0, Lbt;->b:Lbg;

    iget-object v4, v4, Lbg;->g:Lcc;

    iget-object v4, v4, Lcc;->k:Lbu;

    invoke-virtual {v4, p1}, Lbu;->a(I)V

    .line 191
    iget-object v4, p0, Lbt;->b:Lbg;

    iget-object v4, v4, Lbg;->g:Lcc;

    iget-object v4, v4, Lcc;->g:Lbv;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lbv;->a(I)V

    .line 193
    :cond_d
    invoke-virtual {p0}, Lbt;->a()V

    move p1, v0

    .line 200
    :goto_2
    iget-object v4, p0, Lbt;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lce;

    .line 201
    iget-object v6, v5, Lce;->d:Lbf;

    iget-object v7, p0, Lbt;->b:Lbg;

    if-ne v6, v7, :cond_e

    iget-boolean v6, v5, Lce;->i:Z

    if-nez v6, :cond_e

    goto :goto_3

    .line 204
    :cond_e
    invoke-virtual {v5}, Lce;->e()V

    goto :goto_3

    .line 208
    :cond_f
    iget-object v4, p0, Lbt;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lce;

    if-nez p1, :cond_11

    .line 209
    iget-object v6, v5, Lce;->d:Lbf;

    iget-object v7, p0, Lbt;->b:Lbg;

    if-ne v6, v7, :cond_11

    goto :goto_4

    .line 212
    :cond_11
    iget-object v6, v5, Lce;->j:Lbu;

    iget-boolean v6, v6, Lbu;->j:Z

    if-nez v6, :cond_12

    goto :goto_5

    .line 216
    :cond_12
    iget-object v6, v5, Lce;->k:Lbu;

    iget-boolean v6, v6, Lbu;->j:Z

    if-nez v6, :cond_13

    instance-of v6, v5, Lby;

    if-nez v6, :cond_13

    goto :goto_5

    .line 220
    :cond_13
    iget-object v6, v5, Lce;->g:Lbv;

    iget-boolean v6, v6, Lbv;->j:Z

    if-nez v6, :cond_10

    instance-of v6, v5, Lbr;

    if-nez v6, :cond_10

    instance-of v5, v5, Lby;

    if-nez v5, :cond_10

    goto :goto_5

    :cond_14
    move v2, v0

    .line 226
    :goto_5
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1, v1}, Lbg;->a(Lbf$a;)V

    .line 227
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1, v3}, Lbg;->b(Lbf$a;)V

    return v2
.end method

.method public a(ZI)Z
    .locals 9

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 270
    iget-object v1, p0, Lbt;->b:Lbg;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbg;->x(I)Lbf$a;

    move-result-object v1

    .line 271
    iget-object v3, p0, Lbt;->b:Lbg;

    invoke-virtual {v3, v0}, Lbg;->x(I)Lbf$a;

    move-result-object v3

    .line 273
    iget-object v4, p0, Lbt;->b:Lbg;

    invoke-virtual {v4}, Lbg;->D()I

    move-result v4

    .line 274
    iget-object v5, p0, Lbt;->b:Lbg;

    invoke-virtual {v5}, Lbg;->E()I

    move-result v5

    if-eqz p1, :cond_4

    .line 277
    sget-object v6, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-eq v1, v6, :cond_0

    sget-object v6, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v3, v6, :cond_4

    .line 278
    :cond_0
    iget-object v6, p0, Lbt;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lce;

    .line 279
    iget v8, v7, Lce;->h:I

    if-ne v8, p2, :cond_1

    .line 280
    invoke-virtual {v7}, Lce;->a()Z

    move-result v7

    if-nez v7, :cond_1

    move p1, v2

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 287
    sget-object p1, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v1, p1, :cond_4

    .line 288
    iget-object p1, p0, Lbt;->b:Lbg;

    sget-object v6, Lbf$a;->FIXED:Lbf$a;

    invoke-virtual {p1, v6}, Lbg;->a(Lbf$a;)V

    .line 289
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-direct {p0, p1, v2}, Lbt;->a(Lbg;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lbg;->q(I)V

    .line 290
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->f:Lca;

    iget-object p1, p1, Lca;->g:Lbv;

    iget-object v6, p0, Lbt;->b:Lbg;

    invoke-virtual {v6}, Lbg;->F()I

    move-result v6

    invoke-virtual {p1, v6}, Lbv;->a(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 293
    sget-object p1, Lbf$a;->WRAP_CONTENT:Lbf$a;

    if-ne v3, p1, :cond_4

    .line 294
    iget-object p1, p0, Lbt;->b:Lbg;

    sget-object v6, Lbf$a;->FIXED:Lbf$a;

    invoke-virtual {p1, v6}, Lbg;->b(Lbf$a;)V

    .line 295
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-direct {p0, p1, v0}, Lbt;->a(Lbg;I)I

    move-result v6

    invoke-virtual {p1, v6}, Lbg;->r(I)V

    .line 296
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->g:Lcc;

    iget-object p1, p1, Lcc;->g:Lbv;

    iget-object v6, p0, Lbt;->b:Lbg;

    invoke-virtual {v6}, Lbg;->G()I

    move-result v6

    invoke-virtual {p1, v6}, Lbv;->a(I)V

    :cond_4
    :goto_0
    if-nez p2, :cond_6

    .line 307
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->K:[Lbf$a;

    aget-object p1, p1, v2

    sget-object v5, Lbf$a;->FIXED:Lbf$a;

    if-eq p1, v5, :cond_5

    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->K:[Lbf$a;

    aget-object p1, p1, v2

    sget-object v5, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne p1, v5, :cond_7

    .line 309
    :cond_5
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1}, Lbg;->F()I

    move-result p1

    add-int/2addr p1, v4

    .line 310
    iget-object v5, p0, Lbt;->b:Lbg;

    iget-object v5, v5, Lbg;->f:Lca;

    iget-object v5, v5, Lca;->k:Lbu;

    invoke-virtual {v5, p1}, Lbu;->a(I)V

    .line 311
    iget-object v5, p0, Lbt;->b:Lbg;

    iget-object v5, v5, Lbg;->f:Lca;

    iget-object v5, v5, Lca;->g:Lbv;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Lbv;->a(I)V

    goto :goto_2

    .line 315
    :cond_6
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->K:[Lbf$a;

    aget-object p1, p1, v0

    sget-object v4, Lbf$a;->FIXED:Lbf$a;

    if-eq p1, v4, :cond_8

    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->K:[Lbf$a;

    aget-object p1, p1, v0

    sget-object v4, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne p1, v4, :cond_7

    goto :goto_1

    :cond_7
    move p1, v2

    goto :goto_3

    .line 317
    :cond_8
    :goto_1
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1}, Lbg;->G()I

    move-result p1

    add-int/2addr p1, v5

    .line 318
    iget-object v4, p0, Lbt;->b:Lbg;

    iget-object v4, v4, Lbg;->g:Lcc;

    iget-object v4, v4, Lcc;->k:Lbu;

    invoke-virtual {v4, p1}, Lbu;->a(I)V

    .line 319
    iget-object v4, p0, Lbt;->b:Lbg;

    iget-object v4, v4, Lbg;->g:Lcc;

    iget-object v4, v4, Lcc;->g:Lbv;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lbv;->a(I)V

    :goto_2
    move p1, v0

    .line 323
    :goto_3
    invoke-virtual {p0}, Lbt;->a()V

    .line 326
    iget-object v4, p0, Lbt;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lce;

    .line 327
    iget v6, v5, Lce;->h:I

    if-eq v6, p2, :cond_9

    goto :goto_4

    .line 330
    :cond_9
    iget-object v6, v5, Lce;->d:Lbf;

    iget-object v7, p0, Lbt;->b:Lbg;

    if-ne v6, v7, :cond_a

    iget-boolean v6, v5, Lce;->i:Z

    if-nez v6, :cond_a

    goto :goto_4

    .line 333
    :cond_a
    invoke-virtual {v5}, Lce;->e()V

    goto :goto_4

    .line 337
    :cond_b
    iget-object v4, p0, Lbt;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lce;

    .line 338
    iget v6, v5, Lce;->h:I

    if-eq v6, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    .line 341
    iget-object v6, v5, Lce;->d:Lbf;

    iget-object v7, p0, Lbt;->b:Lbg;

    if-ne v6, v7, :cond_e

    goto :goto_5

    .line 344
    :cond_e
    iget-object v6, v5, Lce;->j:Lbu;

    iget-boolean v6, v6, Lbu;->j:Z

    if-nez v6, :cond_f

    goto :goto_6

    .line 348
    :cond_f
    iget-object v6, v5, Lce;->k:Lbu;

    iget-boolean v6, v6, Lbu;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    .line 352
    :cond_10
    instance-of v6, v5, Lbr;

    if-nez v6, :cond_c

    iget-object v5, v5, Lce;->g:Lbv;

    iget-boolean v5, v5, Lbv;->j:Z

    if-nez v5, :cond_c

    goto :goto_6

    :cond_11
    move v2, v0

    .line 358
    :goto_6
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1, v1}, Lbg;->a(Lbf$a;)V

    .line 359
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1, v3}, Lbg;->b(Lbf$a;)V

    return v2
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lbt;->c:Z

    return-void
.end method

.method public b(Z)Z
    .locals 3

    .line 233
    iget-boolean p1, p0, Lbt;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->aU:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf;

    .line 235
    invoke-virtual {v1}, Lbf;->z()V

    .line 236
    iput-boolean v0, v1, Lbf;->b:Z

    .line 237
    iget-object v2, v1, Lbf;->f:Lca;

    iget-object v2, v2, Lca;->g:Lbv;

    iput-boolean v0, v2, Lbv;->j:Z

    .line 238
    iget-object v2, v1, Lbf;->f:Lca;

    iput-boolean v0, v2, Lca;->i:Z

    .line 239
    iget-object v2, v1, Lbf;->f:Lca;

    invoke-virtual {v2}, Lca;->d()V

    .line 240
    iget-object v2, v1, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->g:Lbv;

    iput-boolean v0, v2, Lbv;->j:Z

    .line 241
    iget-object v2, v1, Lbf;->g:Lcc;

    iput-boolean v0, v2, Lcc;->i:Z

    .line 242
    iget-object v1, v1, Lbf;->g:Lcc;

    invoke-virtual {v1}, Lcc;->d()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1}, Lbg;->z()V

    .line 245
    iget-object p1, p0, Lbt;->b:Lbg;

    iput-boolean v0, p1, Lbg;->b:Z

    .line 246
    iget-object p1, p1, Lbg;->f:Lca;

    iget-object p1, p1, Lca;->g:Lbv;

    iput-boolean v0, p1, Lbv;->j:Z

    .line 247
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->f:Lca;

    iput-boolean v0, p1, Lca;->i:Z

    .line 248
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->f:Lca;

    invoke-virtual {p1}, Lca;->d()V

    .line 249
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->g:Lcc;

    iget-object p1, p1, Lcc;->g:Lbv;

    iput-boolean v0, p1, Lbv;->j:Z

    .line 250
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->g:Lcc;

    iput-boolean v0, p1, Lcc;->i:Z

    .line 251
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->g:Lcc;

    invoke-virtual {p1}, Lcc;->d()V

    .line 252
    invoke-virtual {p0}, Lbt;->d()V

    .line 255
    :cond_1
    iget-object p1, p0, Lbt;->e:Lbg;

    invoke-direct {p0, p1}, Lbt;->a(Lbg;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 260
    :cond_2
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1, v0}, Lbg;->o(I)V

    .line 261
    iget-object p1, p0, Lbt;->b:Lbg;

    invoke-virtual {p1, v0}, Lbg;->p(I)V

    .line 262
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->f:Lca;

    iget-object p1, p1, Lca;->j:Lbu;

    invoke-virtual {p1, v0}, Lbu;->a(I)V

    .line 263
    iget-object p1, p0, Lbt;->b:Lbg;

    iget-object p1, p1, Lbg;->g:Lcc;

    iget-object p1, p1, Lcc;->j:Lbu;

    invoke-virtual {p1, v0}, Lbu;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 623
    iput-boolean v0, p0, Lbt;->d:Z

    return-void
.end method

.method public d()V
    .locals 4

    .line 630
    iget-object v0, p0, Lbt;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lbt;->a(Ljava/util/ArrayList;)V

    .line 633
    iget-object v0, p0, Lbt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 635
    sput v0, Lcb;->a:I

    .line 636
    iget-object v1, p0, Lbt;->b:Lbg;

    iget-object v1, v1, Lbg;->f:Lca;

    iget-object v2, p0, Lbt;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Lbt;->a(Lce;ILjava/util/ArrayList;)V

    .line 637
    iget-object v1, p0, Lbt;->b:Lbg;

    iget-object v1, v1, Lbg;->g:Lcc;

    iget-object v2, p0, Lbt;->a:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lbt;->a(Lce;ILjava/util/ArrayList;)V

    .line 639
    iput-boolean v0, p0, Lbt;->c:Z

    return-void
.end method
