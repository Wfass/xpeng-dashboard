.class final Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;
.super Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;
.source "GestureSelectionHelper.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/GestureSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecyclerViewDelegate"
.end annotation


# instance fields
.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 250
    invoke-direct {p0}, Landroidx/recyclerview/selection/GestureSelectionHelper$ViewDelegate;-><init>()V

    .line 251
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 252
    iput-object p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 253
    return-void
.end method

.method static isPastLastItem(IIILandroid/view/MotionEvent;I)Z
    .locals 2
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_1

    .line 301
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 303
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0
.end method


# virtual methods
.method getHeight()I
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    return v0
.end method

.method getItemUnder(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    .line 263
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 264
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method getLastGlidedItemPosition(Landroid/view/MotionEvent;)I
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 272
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 273
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 274
    iget-object v1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 275
    invoke-static {v2, v3, v0, p1, v1}, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->isPastLastItem(IIILandroid/view/MotionEvent;I)Z

    move-result v0

    .line 286
    iget-object v1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/recyclerview/selection/GestureSelectionHelper;->access$000(FF)F

    move-result v1

    .line 287
    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/recyclerview/selection/GestureSelectionHelper$RecyclerViewDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    .line 288
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method
