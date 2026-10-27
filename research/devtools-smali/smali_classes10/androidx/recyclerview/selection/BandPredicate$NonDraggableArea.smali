.class public final Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;
.super Landroidx/recyclerview/selection/BandPredicate;
.source "BandPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/BandPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonDraggableArea"
.end annotation


# instance fields
.field private final mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/selection/ItemDetailsLookup;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/selection/ItemDetailsLookup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    invoke-direct {p0}, Landroidx/recyclerview/selection/BandPredicate;-><init>()V

    .line 120
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 121
    if-eqz p2, :cond_1

    move v0, v1

    nop

    :cond_1
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 123
    iput-object p1, p0, Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    iput-object p2, p0, Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    .line 125
    return-void
.end method


# virtual methods
.method public canInitiate(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    iget-object v0, p0, Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/selection/BandPredicate;->access$000(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 134
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/BandPredicate$NonDraggableArea;->mDetailsLookup:Landroidx/recyclerview/selection/ItemDetailsLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup;->getItemDetails(Landroid/view/MotionEvent;)Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/selection/ItemDetailsLookup$ItemDetails;->inDragRegion(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 131
    :cond_3
    :goto_2
    return v1
.end method
