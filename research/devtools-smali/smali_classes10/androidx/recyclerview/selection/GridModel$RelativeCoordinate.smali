.class Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
.super Ljava/lang/Object;
.source "GridModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/GridModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelativeCoordinate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;",
        ">;"
    }
.end annotation


# static fields
.field static final AFTER_LAST_ITEM:I = 0x0

.field static final BEFORE_FIRST_ITEM:I = 0x1

.field static final BETWEEN_TWO_ITEMS:I = 0x2

.field static final WITHIN_LIMITS:I = 0x3


# instance fields
.field public limitsAfterCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

.field public limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

.field public mFirstKnownItem:Landroidx/recyclerview/selection/GridModel$Limits;

.field public mLastKnownItem:Landroidx/recyclerview/selection/GridModel$Limits;

.field public final type:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/selection/GridModel$Limits;",
            ">;I)V"
        }
    .end annotation

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Landroidx/recyclerview/selection/GridModel$Limits;

    invoke-direct {v0, p2, p2}, Landroidx/recyclerview/selection/GridModel$Limits;-><init>(II)V

    invoke-static {p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 524
    const/4 v1, 0x3

    if-ltz v0, :cond_0

    .line 525
    iput v1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    .line 526
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/selection/GridModel$Limits;

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    goto :goto_1

    .line 527
    :cond_0
    not-int v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 528
    iput v3, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    .line 529
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/selection/GridModel$Limits;

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->mFirstKnownItem:Landroidx/recyclerview/selection/GridModel$Limits;

    goto :goto_1

    .line 530
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/selection/GridModel$Limits;

    .line 532
    iget v0, p1, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    if-gt v0, p2, :cond_2

    iget v0, p1, Landroidx/recyclerview/selection/GridModel$Limits;->upperLimit:I

    if-gt p2, v0, :cond_2

    .line 533
    iput v1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    .line 534
    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    goto :goto_0

    .line 536
    :cond_2
    iput v2, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    .line 537
    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->mLastKnownItem:Landroidx/recyclerview/selection/GridModel$Limits;

    .line 539
    :goto_0
    goto :goto_1

    .line 540
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/selection/GridModel$Limits;

    .line 541
    iget v4, v3, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    if-gt v4, p2, :cond_4

    iget v3, v3, Landroidx/recyclerview/selection/GridModel$Limits;->upperLimit:I

    if-gt p2, v3, :cond_4

    .line 543
    iput v1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    .line 544
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/selection/GridModel$Limits;

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    goto :goto_1

    .line 546
    :cond_4
    const/4 p2, 0x2

    iput p2, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    .line 547
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/selection/GridModel$Limits;

    iput-object p2, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    .line 548
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/selection/GridModel$Limits;

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsAfterCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    .line 551
    :goto_1
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)I
    .locals 1

    .line 585
    invoke-virtual {p0}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->toComparisonValue()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->toComparisonValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 470
    check-cast p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->compareTo(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 575
    instance-of v0, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 576
    return v1

    .line 579
    :cond_0
    check-cast p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    .line 580
    invoke-virtual {p0}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->toComparisonValue()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->toComparisonValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 567
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->mFirstKnownItem:Landroidx/recyclerview/selection/GridModel$Limits;

    iget v0, v0, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->mLastKnownItem:Landroidx/recyclerview/selection/GridModel$Limits;

    iget v1, v1, Landroidx/recyclerview/selection/GridModel$Limits;->upperLimit:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget v1, v1, Landroidx/recyclerview/selection/GridModel$Limits;->upperLimit:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget v1, v1, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    xor-int/2addr v0, v1

    return v0
.end method

.method toComparisonValue()I
    .locals 3

    .line 554
    iget v0, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->mFirstKnownItem:Landroidx/recyclerview/selection/GridModel$Limits;

    iget v0, v0, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    sub-int/2addr v0, v1

    return v0

    .line 556
    :cond_0
    iget v0, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->mLastKnownItem:Landroidx/recyclerview/selection/GridModel$Limits;

    iget v0, v0, Landroidx/recyclerview/selection/GridModel$Limits;->upperLimit:I

    add-int/2addr v0, v1

    return v0

    .line 558
    :cond_1
    iget v0, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 559
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget v0, v0, Landroidx/recyclerview/selection/GridModel$Limits;->upperLimit:I

    add-int/2addr v0, v1

    return v0

    .line 561
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget v0, v0, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    return v0
.end method
