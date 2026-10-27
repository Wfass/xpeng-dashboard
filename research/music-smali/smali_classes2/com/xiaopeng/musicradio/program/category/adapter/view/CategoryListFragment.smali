.class public Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;
.super Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;
.source "CategoryListFragment.java"

# interfaces
.implements Lblm;
.implements Lcom/xiaopeng/musicradio/program/category/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/fragment/sub/category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment<",
        "Lcom/xiaopeng/musicradio/program/category/view/a;",
        "Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;",
        ">;",
        "Lblm;",
        "Lcom/xiaopeng/musicradio/program/category/view/a;"
    }
.end annotation


# instance fields
.field protected mAlbumAdapter:Lblw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 82
    new-instance v2, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-direct {v2, v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;-><init>(J)V

    return-object v2

    .line 84
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;-><init>(J)V

    return-object v0
.end method

.method protected getAdapter()Lbll;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mAlbumAdapter:Lblw;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 134
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->aq(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Program_SubPage_Category_Detail"

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 139
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->an(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAlbumPlaying(J)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a(J)Z

    move-result p1

    return p1
.end method

.method protected loadNextPageData()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mAlbumAdapter:Lblw;

    new-instance v1, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)V

    invoke-virtual {v0, v1}, Lblw;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 100
    invoke-super {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->setView()V

    .line 101
    new-instance v0, Lblw;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->item_rank_album:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lblw;-><init>(Landroid/content/Context;ILblm;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mAlbumAdapter:Lblw;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mAlbumAdapter:Lblw;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$2;-><init>(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$3;-><init>(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public showAlbums(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;IZ)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 126
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mAlbumAdapter:Lblw;

    invoke-virtual {p2, p1}, Lblw;->a(Ljava/util/List;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->mAlbumAdapter:Lblw;

    invoke-virtual {p3, p1, p2}, Lblw;->a(Ljava/util/List;I)V

    :goto_0
    return-void
.end method
