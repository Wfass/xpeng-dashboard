.class Lcom/xiaopeng/musicradio/datalist/q;
.super Ljava/lang/Object;
.source "ListViewUtils.java"


# direct methods
.method public static a(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 21
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/datalist/c;I)Z
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/c;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    move-result-object p0

    .line 13
    instance-of v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    check-cast p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {p0}, Lcom/xiaopeng/musicradio/datalist/q;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
