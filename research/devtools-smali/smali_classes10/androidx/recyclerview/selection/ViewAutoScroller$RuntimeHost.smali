.class final Landroidx/recyclerview/selection/ViewAutoScroller$RuntimeHost;
.super Landroidx/recyclerview/selection/ViewAutoScroller$ScrollHost;
.source "ViewAutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/ViewAutoScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuntimeHost"
.end annotation


# instance fields
.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    invoke-direct {p0}, Landroidx/recyclerview/selection/ViewAutoScroller$ScrollHost;-><init>()V

    .line 248
    iput-object p1, p0, Landroidx/recyclerview/selection/ViewAutoScroller$RuntimeHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 249
    return-void
.end method


# virtual methods
.method getViewHeight()I
    .locals 1

    .line 269
    iget-object v0, p0, Landroidx/recyclerview/selection/ViewAutoScroller$RuntimeHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    return v0
.end method

.method removeCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 258
    iget-object v0, p0, Landroidx/recyclerview/selection/ViewAutoScroller$RuntimeHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method runAtNextFrame(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 253
    iget-object v0, p0, Landroidx/recyclerview/selection/ViewAutoScroller$RuntimeHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method scrollBy(I)V
    .locals 2

    .line 264
    iget-object v0, p0, Landroidx/recyclerview/selection/ViewAutoScroller$RuntimeHost;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 265
    return-void
.end method
