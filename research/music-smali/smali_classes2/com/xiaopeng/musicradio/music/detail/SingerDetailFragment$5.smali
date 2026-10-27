.class Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SingerDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->loadMoreListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-eqz p1, :cond_3

    .line 313
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 314
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 315
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 316
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    .line 317
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_3

    if-lez p1, :cond_3

    .line 319
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/a;->g()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$500(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->h()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 325
    :cond_1
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 326
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$600(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$5;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->refreshLoadMoreState(I)V

    :cond_3
    return-void
.end method
