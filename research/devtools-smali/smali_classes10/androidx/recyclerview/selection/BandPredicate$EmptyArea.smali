.class public final Landroidx/recyclerview/selection/BandPredicate$EmptyArea;
.super Landroidx/recyclerview/selection/BandPredicate;
.source "BandPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/BandPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyArea"
.end annotation


# instance fields
.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0}, Landroidx/recyclerview/selection/BandPredicate;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 71
    iput-object p1, p0, Landroidx/recyclerview/selection/BandPredicate$EmptyArea;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    return-void
.end method


# virtual methods
.method public canInitiate(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Landroidx/recyclerview/selection/BandPredicate$EmptyArea;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/selection/BandPredicate;->access$000(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/selection/BandPredicate$EmptyArea;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/BandPredicate$EmptyArea;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    .line 82
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/selection/BandPredicate$EmptyArea;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    .line 86
    :cond_1
    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 78
    :cond_3
    :goto_1
    return v1
.end method
