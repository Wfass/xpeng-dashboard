.class Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ListRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$a;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 193
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 197
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$a;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 185
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$a;->a:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    :goto_0
    return-void
.end method
