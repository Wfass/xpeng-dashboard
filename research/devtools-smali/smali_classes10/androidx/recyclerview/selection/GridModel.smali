.class final Landroidx/recyclerview/selection/GridModel;
.super Ljava/lang/Object;
.source "GridModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/selection/GridModel$GridHost;,
        Landroidx/recyclerview/selection/GridModel$RelativePoint;,
        Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;,
        Landroidx/recyclerview/selection/GridModel$Limits;,
        Landroidx/recyclerview/selection/GridModel$SelectionObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LEFT:I = 0x0

.field private static final LOWER:I = 0x1

.field private static final LOWER_LEFT:I = 0x1

.field private static final LOWER_RIGHT:I = 0x3

.field static final NOT_SET:I = -0x1

.field private static final RIGHT:I = 0x2

.field private static final UPPER:I = 0x0

.field private static final UPPER_LEFT:I = 0x0

.field private static final UPPER_RIGHT:I = 0x2


# instance fields
.field private final mColumnBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/selection/GridModel$Limits;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mHost:Landroidx/recyclerview/selection/GridModel$GridHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/GridModel$GridHost<",
            "TK;>;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private final mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mKnownPositions:Landroid/util/SparseBooleanArray;

.field private final mOnSelectionChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/selection/GridModel$SelectionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPointer:Landroid/graphics/Point;

.field private mPositionNearestOrigin:I

.field private mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

.field private mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

.field private final mRowBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/selection/GridModel$Limits;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mSelection:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/GridModel$GridHost;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/GridModel$GridHost;",
            "Landroidx/recyclerview/selection/ItemKeyProvider<",
            "TK;>;",
            "Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate<",
            "TK;>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mOnSelectionChangedListeners:Ljava/util/List;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mColumns:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    .line 83
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mKnownPositions:Landroid/util/SparseBooleanArray;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mSelection:Ljava/util/Set;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/selection/GridModel;->mPositionNearestOrigin:I

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 110
    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 111
    if-eqz p3, :cond_2

    move v0, v1

    nop

    :cond_2
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 113
    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    .line 114
    iput-object p2, p0, Landroidx/recyclerview/selection/GridModel;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    .line 115
    iput-object p3, p0, Landroidx/recyclerview/selection/GridModel;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 117
    new-instance p1, Landroidx/recyclerview/selection/GridModel$1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/selection/GridModel$1;-><init>(Landroidx/recyclerview/selection/GridModel;)V

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 124
    iget-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    iget-object p2, p0, Landroidx/recyclerview/selection/GridModel;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/selection/GridModel$GridHost;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/selection/GridModel;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/selection/GridModel;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method private areItemsCoveredByBand(Landroidx/recyclerview/selection/GridModel$RelativePoint;Landroidx/recyclerview/selection/GridModel$RelativePoint;)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/selection/GridModel$RelativePoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/GridModel$RelativePoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 720
    iget-object v0, p1, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v1, p2, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/selection/GridModel;->doesCoordinateLocationCoverItems(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object p2, p2, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    .line 721
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/selection/GridModel;->doesCoordinateLocationCoverItems(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private canSelect(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;->canSetStateForKey(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method private computeBounds()Landroid/graphics/Rect;
    .locals 5

    .line 639
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 640
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v1, v1, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v2, v2, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    .line 641
    invoke-direct {p0, v1, v2}, Landroidx/recyclerview/selection/GridModel;->min(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    .line 640
    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroidx/recyclerview/selection/GridModel;->getCoordinateValue(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Ljava/util/List;Z)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 644
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v1, v1, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v2, v2, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    .line 645
    invoke-direct {p0, v1, v2}, Landroidx/recyclerview/selection/GridModel;->max(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    .line 644
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Landroidx/recyclerview/selection/GridModel;->getCoordinateValue(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Ljava/util/List;Z)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 648
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v1, v1, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v2, v2, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    .line 649
    invoke-direct {p0, v1, v2}, Landroidx/recyclerview/selection/GridModel;->min(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    .line 648
    invoke-direct {p0, v1, v2, v3}, Landroidx/recyclerview/selection/GridModel;->getCoordinateValue(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Ljava/util/List;Z)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 652
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v1, v1, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v2, v2, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    .line 653
    invoke-direct {p0, v1, v2}, Landroidx/recyclerview/selection/GridModel;->max(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    .line 652
    invoke-direct {p0, v1, v2, v4}, Landroidx/recyclerview/selection/GridModel;->getCoordinateValue(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Ljava/util/List;Z)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 656
    return-object v0
.end method

.method private computeCornerNearestOrigin()I
    .locals 5

    .line 663
    nop

    .line 665
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v0, v0, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v1, v1, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v2, v2, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mY:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    invoke-direct {p0, v1, v2}, Landroidx/recyclerview/selection/GridModel;->min(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 666
    nop

    .line 671
    move v0, v1

    goto :goto_0

    .line 668
    :cond_0
    const/4 v0, 0x1

    .line 671
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v2, v2, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v3, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v3, v3, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v4, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v4, v4, Landroidx/recyclerview/selection/GridModel$RelativePoint;->mX:Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    invoke-direct {p0, v3, v4}, Landroidx/recyclerview/selection/GridModel;->min(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    or-int/2addr v0, v1

    goto :goto_1

    .line 674
    :cond_1
    or-int/lit8 v0, v0, 0x2

    .line 677
    :goto_1
    return v0
.end method

.method private computeCurrentSelection()V
    .locals 2

    .line 273
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/selection/GridModel;->areItemsCoveredByBand(Landroidx/recyclerview/selection/GridModel$RelativePoint;Landroidx/recyclerview/selection/GridModel$RelativePoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->computeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/selection/GridModel;->updateSelection(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mSelection:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 277
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/selection/GridModel;->mPositionNearestOrigin:I

    .line 279
    :goto_0
    return-void
.end method

.method private doesCoordinateLocationCoverItems(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Z
    .locals 4
    .param p1    # Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 728
    iget v0, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p2, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    if-ne v0, v2, :cond_0

    .line 730
    return v1

    .line 733
    :cond_0
    iget v0, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    if-nez v0, :cond_1

    iget v0, p2, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    if-nez v0, :cond_1

    .line 735
    return v1

    .line 738
    :cond_1
    iget v0, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v0, p2, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget-object v3, p2, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    .line 740
    invoke-virtual {v0, v3}, Landroidx/recyclerview/selection/GridModel$Limits;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsAfterCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget-object p2, p2, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsAfterCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    .line 742
    invoke-virtual {p1, p2}, Landroidx/recyclerview/selection/GridModel$Limits;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 744
    return v1

    .line 747
    :cond_2
    return v2
.end method

.method private getCoordinateValue(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Ljava/util/List;Z)I
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/selection/GridModel$Limits;",
            ">;Z)I"
        }
    .end annotation

    .line 699
    iget v0, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->type:I

    packed-switch v0, :pswitch_data_0

    .line 714
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid coordinate value."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget p1, p1, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    return p1

    .line 705
    :pswitch_1
    if-eqz p3, :cond_0

    .line 706
    iget-object p1, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsAfterCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget p1, p1, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    return p1

    .line 708
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->limitsBeforeCoordinate:Landroidx/recyclerview/selection/GridModel$Limits;

    iget p1, p1, Landroidx/recyclerview/selection/GridModel$Limits;->upperLimit:I

    return p1

    .line 701
    :pswitch_2
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/selection/GridModel$Limits;

    iget p1, p1, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    return p1

    .line 703
    :pswitch_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/selection/GridModel$Limits;

    iget p1, p1, Landroidx/recyclerview/selection/GridModel$Limits;->upperLimit:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEmpty()Z
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPossiblePositionNearestOrigin(IIIIII)Z
    .locals 3

    .line 376
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->computeCornerNearestOrigin()I

    move-result v0

    .line 377
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 392
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid corner type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :pswitch_0
    if-ne p4, p6, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 381
    :pswitch_1
    if-ne p1, p3, :cond_1

    if-ne p4, p5, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 383
    :pswitch_2
    if-ne p1, p2, :cond_2

    if-ne p4, p6, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 379
    :pswitch_3
    if-ne p1, p2, :cond_3

    if-ne p4, p5, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private max(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 687
    invoke-virtual {p1, p2}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->compareTo(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private min(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 682
    invoke-virtual {p1, p2}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;->compareTo(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private notifySelectionChanged()V
    .locals 3

    .line 287
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mOnSelectionChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/selection/GridModel$SelectionObserver;

    .line 288
    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mSelection:Ljava/util/Set;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/selection/GridModel$SelectionObserver;->onSelectionChanged(Ljava/util/Set;)V

    .line 289
    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method private onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 185
    iget-boolean p1, p0, Landroidx/recyclerview/selection/GridModel;->mIsActive:Z

    if-nez p1, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mPointer:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 190
    iget-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mPointer:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 191
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->recordVisibleChildren()V

    .line 192
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->updateModel()V

    .line 193
    return-void
.end method

.method private recordItemData(Landroid/graphics/Rect;I)V
    .locals 4

    .line 227
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/GridModel$GridHost;->getColumnCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    new-instance v1, Landroidx/recyclerview/selection/GridModel$Limits;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/selection/GridModel$Limits;-><init>(II)V

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/selection/GridModel;->recordLimits(Ljava/util/List;Landroidx/recyclerview/selection/GridModel$Limits;)V

    .line 233
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    new-instance v1, Landroidx/recyclerview/selection/GridModel$Limits;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/selection/GridModel$Limits;-><init>(II)V

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/selection/GridModel;->recordLimits(Ljava/util/List;Landroidx/recyclerview/selection/GridModel$Limits;)V

    .line 235
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mColumns:Landroid/util/SparseArray;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 236
    if-nez v0, :cond_1

    .line 237
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 238
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mColumns:Landroid/util/SparseArray;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    return-void
.end method

.method private recordLimits(Ljava/util/List;Landroidx/recyclerview/selection/GridModel$Limits;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/selection/GridModel$Limits;",
            ">;",
            "Landroidx/recyclerview/selection/GridModel$Limits;",
            ")V"
        }
    .end annotation

    .line 248
    invoke-static {p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 249
    if-gez v0, :cond_0

    .line 250
    not-int v0, v0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 252
    :cond_0
    return-void
.end method

.method private recordVisibleChildren()V
    .locals 4

    .line 199
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    invoke-virtual {v1}, Landroidx/recyclerview/selection/GridModel$GridHost;->getVisibleChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 200
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/selection/GridModel$GridHost;->getAdapterPositionAt(I)I

    move-result v1

    .line 204
    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/selection/GridModel$GridHost;->hasView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mSelectionPredicate:Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;

    .line 205
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;->canSetStateAtPosition(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mKnownPositions:Landroid/util/SparseBooleanArray;

    .line 206
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mKnownPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 208
    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/selection/GridModel$GridHost;->getAbsoluteRectForChildViewAt(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroidx/recyclerview/selection/GridModel;->recordItemData(Landroid/graphics/Rect;I)V

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method private updateModel()V
    .locals 2

    .line 259
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    .line 260
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mPointer:Landroid/graphics/Point;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/selection/GridModel;->createRelativePoint(Landroid/graphics/Point;)Landroidx/recyclerview/selection/GridModel$RelativePoint;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    .line 261
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/selection/GridModel$RelativePoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->computeCurrentSelection()V

    .line 266
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->notifySelectionChanged()V

    .line 267
    return-void
.end method

.method private updateSelection(IIII)V
    .locals 11

    .line 336
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mSelection:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 337
    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_3

    .line 338
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mColumns:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/selection/GridModel$Limits;

    iget v2, v2, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/util/SparseIntArray;

    .line 339
    move v9, p3

    :goto_1
    if-gt v9, p4, :cond_2

    .line 342
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/selection/GridModel$Limits;

    iget v1, v1, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    .line 343
    const/4 v2, -0x1

    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 344
    if-eq v10, v2, :cond_1

    .line 345
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mKeyProvider:Landroidx/recyclerview/selection/ItemKeyProvider;

    invoke-virtual {v1, v10}, Landroidx/recyclerview/selection/ItemKeyProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_0

    .line 350
    invoke-direct {p0, v1}, Landroidx/recyclerview/selection/GridModel;->canSelect(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mSelection:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    move-object v1, p0

    move v2, v0

    move v3, p1

    move v4, p2

    move v5, v9

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroidx/recyclerview/selection/GridModel;->isPossiblePositionNearestOrigin(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    iput v10, p0, Landroidx/recyclerview/selection/GridModel;->mPositionNearestOrigin:I

    .line 339
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 337
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_3
    return-void
.end method

.method private updateSelection(Landroid/graphics/Rect;)V
    .locals 8

    .line 296
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    new-instance v1, Landroidx/recyclerview/selection/GridModel$Limits;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/selection/GridModel$Limits;-><init>(II)V

    .line 297
    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 299
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Rect doesn\'t intesect any known column."

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 301
    nop

    .line 303
    nop

    .line 304
    move v1, v0

    move v2, v1

    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    .line 303
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    .line 304
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/selection/GridModel$Limits;

    iget v3, v3, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_1

    .line 305
    nop

    .line 304
    add-int/lit8 v2, v1, 0x1

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_1

    .line 308
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    new-instance v3, Landroidx/recyclerview/selection/GridModel$Limits;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v5}, Landroidx/recyclerview/selection/GridModel$Limits;-><init>(II)V

    invoke-static {v1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 309
    if-gez v1, :cond_2

    .line 310
    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/selection/GridModel;->mPositionNearestOrigin:I

    .line 311
    return-void

    .line 314
    :cond_2
    nop

    .line 315
    nop

    .line 316
    move v3, v1

    move v4, v3

    :goto_2
    iget-object v5, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    .line 315
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    .line 316
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/selection/GridModel$Limits;

    iget v5, v5, Landroidx/recyclerview/selection/GridModel$Limits;->lowerLimit:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_3

    .line 317
    nop

    .line 316
    add-int/lit8 v4, v3, 0x1

    move v7, v4

    move v4, v3

    move v3, v7

    goto :goto_2

    .line 320
    :cond_3
    invoke-direct {p0, v0, v2, v1, v4}, Landroidx/recyclerview/selection/GridModel;->updateSelection(IIII)V

    .line 321
    return-void
.end method


# virtual methods
.method addOnSelectionChangedListener(Landroidx/recyclerview/selection/GridModel$SelectionObserver;)V
    .locals 1

    .line 404
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mOnSelectionChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method createRelativePoint(Landroid/graphics/Point;)Landroidx/recyclerview/selection/GridModel$RelativePoint;
    .locals 4

    .line 590
    new-instance v0, Landroidx/recyclerview/selection/GridModel$RelativePoint;

    new-instance v1, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v2, p0, Landroidx/recyclerview/selection/GridModel;->mColumnBounds:Ljava/util/List;

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;-><init>(Ljava/util/List;I)V

    new-instance v2, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;

    iget-object v3, p0, Landroidx/recyclerview/selection/GridModel;->mRowBounds:Ljava/util/List;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, p1}, Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;-><init>(Ljava/util/List;I)V

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/selection/GridModel$RelativePoint;-><init>(Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;Landroidx/recyclerview/selection/GridModel$RelativeCoordinate;)V

    return-object v0
.end method

.method getPositionNearestOrigin()I
    .locals 1

    .line 181
    iget v0, p0, Landroidx/recyclerview/selection/GridModel;->mPositionNearestOrigin:I

    return v0
.end method

.method onDestroy()V
    .locals 2

    .line 411
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mOnSelectionChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    iget-object v1, p0, Landroidx/recyclerview/selection/GridModel;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/selection/GridModel$GridHost;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 414
    return-void
.end method

.method resizeSelection(Landroid/graphics/Point;)V
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/GridModel$GridHost;->createAbsolutePoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mPointer:Landroid/graphics/Point;

    .line 173
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->updateModel()V

    .line 174
    return-void
.end method

.method startCapturing(Landroid/graphics/Point;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->recordVisibleChildren()V

    .line 140
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/selection/GridModel;->mIsActive:Z

    .line 146
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel;->mHost:Landroidx/recyclerview/selection/GridModel$GridHost;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/GridModel$GridHost;->createAbsolutePoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mPointer:Landroid/graphics/Point;

    .line 147
    iget-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mPointer:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/GridModel;->createRelativePoint(Landroid/graphics/Point;)Landroidx/recyclerview/selection/GridModel$RelativePoint;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mRelOrigin:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    .line 148
    iget-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mPointer:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/selection/GridModel;->createRelativePoint(Landroid/graphics/Point;)Landroidx/recyclerview/selection/GridModel$RelativePoint;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel;->mRelPointer:Landroidx/recyclerview/selection/GridModel$RelativePoint;

    .line 149
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->computeCurrentSelection()V

    .line 150
    invoke-direct {p0}, Landroidx/recyclerview/selection/GridModel;->notifySelectionChanged()V

    .line 151
    return-void
.end method

.method stopCapturing()V
    .locals 1

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/selection/GridModel;->mIsActive:Z

    .line 158
    return-void
.end method
