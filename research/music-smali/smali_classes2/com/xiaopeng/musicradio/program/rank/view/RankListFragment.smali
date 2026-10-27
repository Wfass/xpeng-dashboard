.class public Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;
.super Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;
.source "RankListFragment.java"

# interfaces
.implements Lblm;
.implements Lcom/xiaopeng/musicradio/program/rank/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/fragment/sub/rank"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment<",
        "Lcom/xiaopeng/musicradio/program/rank/view/a;",
        "Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;",
        ">;",
        "Lblm;",
        "Lcom/xiaopeng/musicradio/program/rank/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RankListFragment"


# instance fields
.field private mAdapter:Lblw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)Lblw;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mAdapter:Lblw;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method


# virtual methods
.method public addRankList(Ljava/util/List;IZ)V
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

    .line 115
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mAdapter:Lblw;

    invoke-virtual {p2, p1}, Lblw;->a(Ljava/util/List;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mAdapter:Lblw;

    invoke-virtual {p3, p1, p2}, Lblw;->a(Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "rank_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 106
    new-instance v1, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;-><init>(I)V

    return-object v1

    .line 108
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;-><init>(I)V

    return-object v0
.end method

.method protected getAdapter()Lbll;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mAdapter:Lblw;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 123
    iget v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ar(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpanCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Program_SubPage_Rank"

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

    .line 128
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mMenuIndex:I

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

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a(J)Z

    move-result p1

    return p1
.end method

.method protected loadNextPageData()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->d()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mAdapter:Lblw;

    new-instance v1, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)V

    invoke-virtual {v0, v1}, Lblw;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->setView()V

    .line 80
    new-instance v0, Lblw;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->item_rank_album:I

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, p0, v3}, Lblw;-><init>(Landroid/content/Context;ILblm;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mAdapter:Lblw;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mAdapter:Lblw;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$2;-><init>(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$3;-><init>(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
