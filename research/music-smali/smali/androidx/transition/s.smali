.class public Landroidx/transition/s;
.super Landroidx/transition/o;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/s$a;
    }
.end annotation


# instance fields
.field h:I

.field i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/o;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroidx/transition/o;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Landroidx/transition/s;->k:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Landroidx/transition/s;->i:Z

    .line 88
    iput v0, p0, Landroidx/transition/s;->l:I

    return-void
.end method

.method private b(Landroidx/transition/o;)V
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iput-object p0, p1, Landroidx/transition/o;->d:Landroidx/transition/s;

    return-void
.end method

.method private s()V
    .locals 3

    .line 418
    new-instance v0, Landroidx/transition/s$a;

    invoke-direct {v0, p0}, Landroidx/transition/s$a;-><init>(Landroidx/transition/s;)V

    .line 419
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    .line 420
    invoke-virtual {v2, v0}, Landroidx/transition/o;->a(Landroidx/transition/o$c;)Landroidx/transition/o;

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/transition/s;->h:I

    return-void
.end method


# virtual methods
.method public synthetic a(J)Landroidx/transition/o;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/transition/s;->c(J)Landroidx/transition/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/animation/TimeInterpolator;)Landroidx/transition/o;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/s;->b(Landroid/animation/TimeInterpolator;)Landroidx/transition/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroidx/transition/o$c;)Landroidx/transition/o;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/s;->c(Landroidx/transition/o$c;)Landroidx/transition/s;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Landroidx/transition/s;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Landroidx/transition/s;->k:Z

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iput-boolean v0, p0, Landroidx/transition/s;->k:Z

    :goto_0
    return-object p0
.end method

.method public a(Landroidx/transition/o;)Landroidx/transition/s;
    .locals 4

    .line 179
    invoke-direct {p0, p1}, Landroidx/transition/s;->b(Landroidx/transition/o;)V

    .line 180
    iget-wide v0, p0, Landroidx/transition/s;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 181
    iget-wide v0, p0, Landroidx/transition/s;->a:J

    invoke-virtual {p1, v0, v1}, Landroidx/transition/o;->a(J)Landroidx/transition/o;

    .line 183
    :cond_0
    iget v0, p0, Landroidx/transition/s;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroidx/transition/s;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/o;->a(Landroid/animation/TimeInterpolator;)Landroidx/transition/o;

    .line 186
    :cond_1
    iget v0, p0, Landroidx/transition/s;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Landroidx/transition/s;->o()Landroidx/transition/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/o;->a(Landroidx/transition/r;)V

    .line 189
    :cond_2
    iget v0, p0, Landroidx/transition/s;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {p0}, Landroidx/transition/s;->m()Landroidx/transition/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/o;->a(Landroidx/transition/i;)V

    .line 192
    :cond_3
    iget v0, p0, Landroidx/transition/s;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, Landroidx/transition/s;->n()Landroidx/transition/o$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/transition/o;->a(Landroidx/transition/o$b;)V

    :cond_4
    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 630
    invoke-super {p0, p1}, Landroidx/transition/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 631
    :goto_0
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/transition/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup;Landroidx/transition/v;Landroidx/transition/v;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/v;",
            "Landroidx/transition/v;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/u;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/u;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 466
    invoke-virtual {p0}, Landroidx/transition/s;->c()J

    move-result-wide v1

    .line 467
    iget-object v3, v0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 469
    iget-object v5, v0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/transition/o;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 472
    iget-boolean v5, v0, Landroidx/transition/s;->k:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 473
    :cond_0
    invoke-virtual {v6}, Landroidx/transition/o;->c()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 475
    invoke-virtual {v6, v9, v10}, Landroidx/transition/o;->b(J)Landroidx/transition/o;

    goto :goto_1

    .line 477
    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/transition/o;->b(J)Landroidx/transition/o;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 480
    invoke-virtual/range {v6 .. v11}, Landroidx/transition/o;->a(Landroid/view/ViewGroup;Landroidx/transition/v;Landroidx/transition/v;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Landroidx/transition/i;)V
    .locals 2

    .line 390
    invoke-super {p0, p1}, Landroidx/transition/o;->a(Landroidx/transition/i;)V

    .line 391
    iget v0, p0, Landroidx/transition/s;->l:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/transition/s;->l:I

    .line 392
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/o;

    invoke-virtual {v1, p1}, Landroidx/transition/o;->a(Landroidx/transition/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/transition/o$b;)V
    .locals 3

    .line 620
    invoke-super {p0, p1}, Landroidx/transition/o;->a(Landroidx/transition/o$b;)V

    .line 621
    iget v0, p0, Landroidx/transition/s;->l:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/transition/s;->l:I

    .line 622
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    invoke-virtual {v2, p1}, Landroidx/transition/o;->a(Landroidx/transition/o$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/transition/r;)V
    .locals 3

    .line 610
    invoke-super {p0, p1}, Landroidx/transition/o;->a(Landroidx/transition/r;)V

    .line 611
    iget v0, p0, Landroidx/transition/s;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/transition/s;->l:I

    .line 612
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    invoke-virtual {v2, p1}, Landroidx/transition/o;->a(Landroidx/transition/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/transition/u;)V
    .locals 3

    .line 524
    iget-object v0, p1, Landroidx/transition/u;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/s;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/o;

    .line 526
    iget-object v2, p1, Landroidx/transition/u;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v1, p1}, Landroidx/transition/o;->a(Landroidx/transition/u;)V

    .line 528
    iget-object v2, p1, Landroidx/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(I)Landroidx/transition/o;
    .locals 1

    if-ltz p1, :cond_1

    .line 223
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/o;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic b(J)Landroidx/transition/o;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/transition/s;->d(J)Landroidx/transition/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/view/View;)Landroidx/transition/o;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/s;->f(Landroid/view/View;)Landroidx/transition/s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroidx/transition/o$c;)Landroidx/transition/o;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/s;->d(Landroidx/transition/o$c;)Landroidx/transition/s;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/animation/TimeInterpolator;)Landroidx/transition/s;
    .locals 3

    .line 258
    iget v0, p0, Landroidx/transition/s;->l:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/s;->l:I

    .line 259
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    invoke-virtual {v2, p1}, Landroidx/transition/o;->a(Landroid/animation/TimeInterpolator;)Landroidx/transition/o;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/o;->a(Landroid/animation/TimeInterpolator;)Landroidx/transition/o;

    move-result-object p1

    check-cast p1, Landroidx/transition/s;

    return-object p1
.end method

.method public b(Landroidx/transition/u;)V
    .locals 3

    .line 536
    iget-object v0, p1, Landroidx/transition/u;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/transition/s;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/o;

    .line 538
    iget-object v2, p1, Landroidx/transition/u;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/transition/o;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v1, p1}, Landroidx/transition/o;->b(Landroidx/transition/u;)V

    .line 540
    iget-object v2, p1, Landroidx/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic c(Landroid/view/View;)Landroidx/transition/o;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/s;->g(Landroid/view/View;)Landroidx/transition/s;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Landroidx/transition/s;
    .locals 4

    .line 239
    invoke-super {p0, p1, p2}, Landroidx/transition/o;->a(J)Landroidx/transition/o;

    .line 240
    iget-wide v0, p0, Landroidx/transition/s;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    invoke-virtual {v2, p1, p2}, Landroidx/transition/o;->a(J)Landroidx/transition/o;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public c(Landroidx/transition/o$c;)Landroidx/transition/s;
    .locals 0

    .line 307
    invoke-super {p0, p1}, Landroidx/transition/o;->a(Landroidx/transition/o$c;)Landroidx/transition/o;

    move-result-object p1

    check-cast p1, Landroidx/transition/s;

    return-object p1
.end method

.method c(Landroidx/transition/u;)V
    .locals 3

    .line 548
    invoke-super {p0, p1}, Landroidx/transition/o;->c(Landroidx/transition/u;)V

    .line 549
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 551
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    invoke-virtual {v2, p1}, Landroidx/transition/o;->c(Landroidx/transition/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/transition/s;->p()Landroidx/transition/o;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Landroidx/transition/s;
    .locals 0

    .line 252
    invoke-super {p0, p1, p2}, Landroidx/transition/o;->b(J)Landroidx/transition/o;

    move-result-object p1

    check-cast p1, Landroidx/transition/s;

    return-object p1
.end method

.method public d(Landroidx/transition/o$c;)Landroidx/transition/s;
    .locals 0

    .line 385
    invoke-super {p0, p1}, Landroidx/transition/o;->b(Landroidx/transition/o$c;)Landroidx/transition/o;

    move-result-object p1

    check-cast p1, Landroidx/transition/s;

    return-object p1
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    .line 559
    invoke-super {p0, p1}, Landroidx/transition/o;->d(Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 562
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    invoke-virtual {v2, p1}, Landroidx/transition/o;->d(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 4

    .line 491
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroidx/transition/s;->j()V

    .line 493
    invoke-virtual {p0}, Landroidx/transition/s;->k()V

    return-void

    .line 496
    :cond_0
    invoke-direct {p0}, Landroidx/transition/s;->s()V

    .line 497
    iget-boolean v0, p0, Landroidx/transition/s;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 500
    :goto_0
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/o;

    .line 502
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    .line 503
    new-instance v3, Landroidx/transition/s$1;

    invoke-direct {v3, p0, v2}, Landroidx/transition/s$1;-><init>(Landroidx/transition/s;Landroidx/transition/o;)V

    invoke-virtual {v1, v3}, Landroidx/transition/o;->a(Landroidx/transition/o$c;)Landroidx/transition/o;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/o;

    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {v0}, Landroidx/transition/o;->e()V

    goto :goto_2

    .line 516
    :cond_2
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/o;

    .line 517
    invoke-virtual {v1}, Landroidx/transition/o;->e()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 3

    .line 570
    invoke-super {p0, p1}, Landroidx/transition/o;->e(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    invoke-virtual {v2, p1}, Landroidx/transition/o;->e(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;)Landroidx/transition/s;
    .locals 2

    const/4 v0, 0x0

    .line 271
    :goto_0
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/o;

    invoke-virtual {v1, p1}, Landroidx/transition/o;->b(Landroid/view/View;)Landroidx/transition/o;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/o;->b(Landroid/view/View;)Landroidx/transition/o;

    move-result-object p1

    check-cast p1, Landroidx/transition/s;

    return-object p1
.end method

.method public g(Landroid/view/View;)Landroidx/transition/s;
    .locals 2

    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/o;

    invoke-virtual {v1, p1}, Landroidx/transition/o;->c(Landroid/view/View;)Landroidx/transition/o;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroidx/transition/o;->c(Landroid/view/View;)Landroidx/transition/o;

    move-result-object p1

    check-cast p1, Landroidx/transition/s;

    return-object p1
.end method

.method protected l()V
    .locals 3

    .line 581
    invoke-super {p0}, Landroidx/transition/o;->l()V

    .line 582
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    iget-object v2, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/o;

    invoke-virtual {v2}, Landroidx/transition/o;->l()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()Landroidx/transition/o;
    .locals 4

    .line 639
    invoke-super {p0}, Landroidx/transition/o;->p()Landroidx/transition/o;

    move-result-object v0

    check-cast v0, Landroidx/transition/s;

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    .line 641
    iget-object v1, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 643
    iget-object v3, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/o;

    invoke-virtual {v3}, Landroidx/transition/o;->p()Landroidx/transition/o;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/transition/s;->b(Landroidx/transition/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public r()I
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/transition/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
