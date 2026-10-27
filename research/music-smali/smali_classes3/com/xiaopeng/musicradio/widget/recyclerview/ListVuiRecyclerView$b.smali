.class Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ListVuiRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 212
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 216
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    .line 217
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->b(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->d(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)I

    move-result v0

    add-int/2addr p2, v0

    if-gt p1, p2, :cond_1

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a()V

    :cond_1
    :goto_0
    return-void
.end method
