.class public Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
.super Ljava/lang/Object;
.source "PoiSearch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchBound"
.end annotation


# static fields
.field public static final BOUND_SHAPE:Ljava/lang/String; = "Bound"

.field public static final ELLIPSE_SHAPE:Ljava/lang/String; = "Ellipse"

.field public static final POLYGON_SHAPE:Ljava/lang/String; = "Polygon"

.field public static final RECTANGLE_SHAPE:Ljava/lang/String; = "Rectangle"


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:I

.field private d:Lcom/amap/api/services/core/LatLonPoint;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;I)V
    .locals 7

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 508
    const-string v0, "Bound"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 509
    iput p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    .line 510
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 511
    invoke-static {p2}, Lcom/amap/api/services/a/i;->a(I)D

    move-result-wide v3

    invoke-static {p2}, Lcom/amap/api/services/a/i;->a(I)D

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/api/services/core/LatLonPoint;DD)V

    .line 512
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;IZ)V
    .locals 7

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 526
    const-string v0, "Bound"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 527
    iput p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    .line 528
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 529
    invoke-static {p2}, Lcom/amap/api/services/a/i;->a(I)D

    move-result-wide v3

    invoke-static {p2}, Lcom/amap/api/services/a/i;->a(I)D

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/api/services/core/LatLonPoint;DD)V

    .line 530
    iput-boolean p3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 531
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 545
    const-string v0, "Rectangle"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 546
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V

    .line 547
    return-void
.end method

.method private constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;ILcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "I",
            "Lcom/amap/api/services/core/LatLonPoint;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;Z)V"
        }
    .end annotation

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 561
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 562
    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 563
    iput p3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    .line 564
    iput-object p4, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 565
    iput-object p5, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 566
    iput-object p6, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    .line 567
    iput-boolean p7, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 568
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    .line 556
    const-string v0, "Polygon"

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    .line 557
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    .line 558
    return-void
.end method

.method private a(Lcom/amap/api/services/core/LatLonPoint;DD)V
    .locals 8

    .line 582
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p2, v0

    .line 583
    div-double/2addr p4, v0

    .line 585
    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    .line 586
    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    .line 587
    new-instance p1, Lcom/amap/api/services/core/LatLonPoint;

    sub-double v4, v0, p2

    sub-double v6, v2, p4

    invoke-direct {p1, v4, v5, v6, v7}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    new-instance v4, Lcom/amap/api/services/core/LatLonPoint;

    add-double/2addr v0, p2

    add-double/2addr v2, p4

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    invoke-direct {p0, p1, v4}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V

    .line 588
    return-void
.end method

.method private a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 8

    .line 571
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 572
    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 574
    iget-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide p1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    cmpl-double p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide p1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    cmpl-double p1, p1, v0

    if-gez p1, :cond_0

    .line 577
    new-instance p1, Lcom/amap/api/services/core/LatLonPoint;

    iget-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    iget-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    iget-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    invoke-direct {p1, v0, v1, v4, v5}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 578
    return-void

    .line 575
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid rect "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 11

    .line 722
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    goto :goto_0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    const-string v1, "PoiSearch"

    const-string v2, "SearchBoundClone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :goto_0
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v4, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v5, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget v6, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    iget-object v7, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v8, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    iget-boolean v10, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;-><init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;ILcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 677
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 678
    return v0

    .line 679
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 680
    return v1

    .line 681
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 682
    return v1

    .line 683
    :cond_2
    check-cast p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    .line 684
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_3

    .line 685
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_4

    .line 686
    return v1

    .line 687
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 688
    return v1

    .line 689
    :cond_4
    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    iget-boolean v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    if-eq v2, v3, :cond_5

    .line 690
    return v1

    .line 691
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_6

    .line 692
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_7

    .line 693
    return v1

    .line 694
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 695
    return v1

    .line 696
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_8

    .line 697
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_9

    .line 698
    return v1

    .line 699
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 700
    return v1

    .line 701
    :cond_9
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    if-nez v2, :cond_a

    .line 702
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    if-eqz v2, :cond_b

    .line 703
    return v1

    .line 704
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 705
    return v1

    .line 706
    :cond_b
    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    iget v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    if-eq v2, v3, :cond_c

    .line 707
    return v1

    .line 708
    :cond_c
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 709
    iget-object p1, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    if-eqz p1, :cond_e

    .line 710
    return v1

    .line 711
    :cond_d
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 712
    return v1

    .line 713
    :cond_e
    return v0
.end method

.method public getCenter()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getPolyGonList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    return-object v0
.end method

.method public getRange()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    return v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperRight()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 656
    nop

    .line 657
    nop

    .line 658
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    .line 659
    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    add-int/2addr v0, v3

    .line 660
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    .line 661
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    .line 662
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    .line 663
    mul-int/2addr v0, v2

    iget v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->c:I

    add-int/2addr v0, v3

    .line 664
    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v2, v1

    .line 665
    return v2
.end method

.method public isDistanceSort()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->f:Z

    return v0
.end method
