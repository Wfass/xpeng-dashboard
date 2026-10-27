.class Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DirDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    iput p2, v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mRvState:I

    .line 307
    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$1200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$1200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 308
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$1200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFirstVisibleItemPosition:I

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$1302(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;I)I

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    iput p2, p1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLastVisibleItemPosition:I

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFirstVisibleItemPosition:I

    if-gez p1, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mRvState:I

    if-nez p1, :cond_3

    .line 316
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    iget p2, p2, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFirstVisibleItemPosition:I

    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLastVisibleItemPosition:I

    add-int/lit8 v0, v0, 0x1

    if-ge p2, v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 319
    instance-of v1, v0, Lbqw;

    if-eqz v1, :cond_1

    .line 320
    check-cast v0, Lbqw;

    .line 321
    invoke-virtual {v0}, Lbqw;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 324
    :cond_2
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbne;->a(Ljava/util/List;)V

    .line 325
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbnf;->a(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 331
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 332
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$1400(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$1402(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;I)I

    return-void
.end method
