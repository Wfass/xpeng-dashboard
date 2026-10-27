.class final Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "DefaultSelectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/DefaultSelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdapterObserver"
.end annotation


# instance fields
.field private final mSelectionTracker:Landroidx/recyclerview/selection/DefaultSelectionTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/selection/DefaultSelectionTracker<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/DefaultSelectionTracker;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/selection/DefaultSelectionTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/DefaultSelectionTracker<",
            "*>;)V"
        }
    .end annotation

    .line 540
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 541
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 542
    iput-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;->mSelectionTracker:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    .line 543
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 547
    iget-object v0, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;->mSelectionTracker:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    invoke-static {v0}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->access$300(Landroidx/recyclerview/selection/DefaultSelectionTracker;)V

    .line 548
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 552
    const-string p1, "Selection-Changed"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 553
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;->mSelectionTracker:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    invoke-static {p1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->access$300(Landroidx/recyclerview/selection/DefaultSelectionTracker;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 559
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;->mSelectionTracker:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->endRange()V

    .line 560
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 569
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;->mSelectionTracker:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->endRange()V

    .line 570
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 564
    iget-object p1, p0, Landroidx/recyclerview/selection/DefaultSelectionTracker$AdapterObserver;->mSelectionTracker:Landroidx/recyclerview/selection/DefaultSelectionTracker;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/DefaultSelectionTracker;->endRange()V

    .line 565
    return-void
.end method
