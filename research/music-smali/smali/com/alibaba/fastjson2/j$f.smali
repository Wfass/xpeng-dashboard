.class abstract Lcom/alibaba/fastjson2/j$f;
.super Lcom/alibaba/fastjson2/j;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation


# instance fields
.field final c:Ljava/lang/String;

.field final d:J

.field final e:[Ljava/lang/String;

.field final f:[J

.field final g:Ljava/util/function/Function;

.field h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 494
    invoke-direct {p0}, Lcom/alibaba/fastjson2/j;-><init>()V

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/j$f;->h:Z

    .line 495
    iput-object p1, p0, Lcom/alibaba/fastjson2/j$f;->c:Ljava/lang/String;

    .line 496
    iput-wide p2, p0, Lcom/alibaba/fastjson2/j$f;->d:J

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/alibaba/fastjson2/j$f;->e:[Ljava/lang/String;

    .line 498
    iput-object p1, p0, Lcom/alibaba/fastjson2/j$f;->f:[J

    .line 499
    iput-object p1, p0, Lcom/alibaba/fastjson2/j$f;->g:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V
    .locals 1

    .line 508
    invoke-direct {p0}, Lcom/alibaba/fastjson2/j;-><init>()V

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/j$f;->h:Z

    .line 509
    iput-object p1, p0, Lcom/alibaba/fastjson2/j$f;->c:Ljava/lang/String;

    .line 510
    iput-wide p2, p0, Lcom/alibaba/fastjson2/j$f;->d:J

    .line 511
    iput-object p4, p0, Lcom/alibaba/fastjson2/j$f;->e:[Ljava/lang/String;

    .line 512
    iput-object p5, p0, Lcom/alibaba/fastjson2/j$f;->f:[J

    .line 513
    iput-object p6, p0, Lcom/alibaba/fastjson2/j$f;->g:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 7

    .line 548
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 552
    :goto_0
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 553
    check-cast v0, Ljava/util/List;

    .line 554
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 555
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 556
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 557
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/j$f;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 558
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 561
    :cond_2
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 562
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 566
    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 567
    check-cast v0, [Ljava/lang/Object;

    .line 568
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    array-length v4, v0

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 569
    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 570
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson2/j$f;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 571
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 574
    :cond_5
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 575
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 579
    :cond_6
    instance-of v1, v0, Lcom/alibaba/fastjson2/g$e;

    if-eqz v1, :cond_b

    .line 580
    check-cast v0, Lcom/alibaba/fastjson2/g$e;

    .line 581
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 582
    iget-object v0, v0, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 583
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/j$f;->h:Z

    if-eqz v4, :cond_9

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_9

    .line 584
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 585
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/j$f;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 586
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 590
    :cond_9
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson2/j$f;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 591
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 595
    :cond_a
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 596
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 600
    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/j$f;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 601
    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 602
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    :cond_c
    return-void
.end method

.method public final a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 1

    .line 520
    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 523
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/j$f;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void
.end method

.method public final a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 616
    :cond_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object p1

    .line 618
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 619
    iget-object v1, p0, Lcom/alibaba/fastjson2/j$f;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    .line 621
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/j$f;->b()Z

    move-result p1

    return p1

    .line 624
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/j$f;->e:[Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, p2

    move p2, v0

    .line 625
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/j$f;->e:[Ljava/lang/String;

    array-length v3, v2

    if-ge p2, v3, :cond_7

    .line 626
    aget-object v2, v2, p2

    .line 627
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 628
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 630
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v2

    .line 631
    instance-of v3, v2, Laez;

    if-eqz v3, :cond_6

    .line 632
    iget-object v3, p0, Lcom/alibaba/fastjson2/j$f;->f:[J

    aget-wide v3, v3, p2

    invoke-interface {v2, v3, v4}, Laem;->a_(J)Labq;

    move-result-object v2

    if-nez v2, :cond_4

    return v0

    .line 636
    :cond_4
    invoke-virtual {v2, v1}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_5

    .line 643
    instance-of p1, p0, Lcom/alibaba/fastjson2/j$j;

    return p1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    move-object p2, v1

    .line 648
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson2/j$f;->g:Ljava/util/function/Function;

    if-eqz p1, :cond_9

    .line 649
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 652
    :cond_9
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/j$f;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 655
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    .line 656
    instance-of v2, v1, Laez;

    if-eqz v2, :cond_13

    .line 657
    iget-wide v2, p0, Lcom/alibaba/fastjson2/j$f;->d:J

    invoke-interface {v1, v2, v3}, Laem;->a_(J)Labq;

    move-result-object v1

    .line 658
    invoke-virtual {v1, p2}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_b

    return v0

    .line 664
    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson2/j$f;->e:[Ljava/lang/String;

    if-eqz v1, :cond_11

    move-object v1, p2

    move p2, v0

    .line 665
    :goto_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/j$f;->e:[Ljava/lang/String;

    array-length v3, v2

    if-ge p2, v3, :cond_10

    .line 666
    aget-object v2, v2, p2

    .line 667
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_c

    .line 668
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 670
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v2

    .line 671
    instance-of v3, v2, Laez;

    if-eqz v3, :cond_f

    .line 672
    iget-object v3, p0, Lcom/alibaba/fastjson2/j$f;->f:[J

    aget-wide v3, v3, p2

    invoke-interface {v2, v3, v4}, Laem;->a_(J)Labq;

    move-result-object v2

    if-nez v2, :cond_d

    return v0

    .line 676
    :cond_d
    invoke-virtual {v2, v1}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_e

    return v0

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_f
    return v0

    :cond_10
    move-object p2, v1

    .line 688
    :cond_11
    iget-object p1, p0, Lcom/alibaba/fastjson2/j$f;->g:Ljava/util/function/Function;

    if-eqz p1, :cond_12

    .line 689
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 692
    :cond_12
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/j$f;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 695
    :cond_13
    iget-object p1, p0, Lcom/alibaba/fastjson2/j$f;->g:Ljava/util/function/Function;

    if-eqz p1, :cond_14

    .line 696
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 697
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/j$f;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 700
    :cond_14
    iget-object p1, p0, Lcom/alibaba/fastjson2/j$f;->c:Ljava/lang/String;

    if-nez p1, :cond_15

    .line 701
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/j$f;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_15
    return v0
.end method

.method abstract a(Ljava/lang/Object;)Z
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;)Z
    .locals 4

    .line 528
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 532
    :goto_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 533
    check-cast v0, Ljava/util/List;

    .line 534
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_2

    .line 535
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 536
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson2/j$f;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return v2

    .line 543
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c()V
    .locals 1

    const/4 v0, 0x0

    .line 708
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/j$f;->h:Z

    return-void
.end method
