.class Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ListVuiRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 196
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    .line 200
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->b(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    .line 202
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->d(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)I

    move-result p3

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_1

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a()V

    :cond_1
    :goto_0
    return-void
.end method
