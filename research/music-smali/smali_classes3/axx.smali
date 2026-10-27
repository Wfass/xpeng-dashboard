.class public Laxx;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public static a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0, p1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    .line 31
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method
