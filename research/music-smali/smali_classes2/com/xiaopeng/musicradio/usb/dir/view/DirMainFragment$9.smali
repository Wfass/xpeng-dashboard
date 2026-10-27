.class Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DirMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    iput p2, v0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mRvState:I

    .line 272
    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$1200(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$1200(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 273
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$1200(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mFirstVisibleItemPosition:I

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$1302(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;I)I

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$1402(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;I)I

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    iget p1, p1, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mRvState:I

    if-nez p1, :cond_2

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    iget p2, p2, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mFirstVisibleItemPosition:I

    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$1400(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p2, v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 281
    instance-of v1, v0, Lbqw;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Lbqw;

    .line 283
    invoke-virtual {v0}, Lbqw;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbne;->a(Ljava/util/List;)V

    .line 287
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbnf;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$1500(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$1502(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;I)I

    return-void
.end method
