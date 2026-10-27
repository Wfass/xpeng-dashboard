.class public Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;
.super Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;
.source "GuessLikeListFragment.java"

# interfaces
.implements Lblm;
.implements Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/fragment/sub/guess_you_like"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment<",
        "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;",
        "Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;",
        ">;",
        "Lblm;",
        "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GuessLikeListFragment"


# instance fields
.field private mAdapter:Lblw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)Lblw;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mAdapter:Lblw;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method


# virtual methods
.method public addGuessLikeList(Ljava/util/List;IZ)V
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

    .line 119
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mAdapter:Lblw;

    invoke-virtual {p2, p1}, Lblw;->a(Ljava/util/List;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mAdapter:Lblw;

    invoke-virtual {p3, p1, p2}, Lblw;->a(Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;
    .locals 1

    .line 113
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;-><init>()V

    return-object v0
.end method

.method protected getAdapter()Lbll;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mAdapter:Lblw;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 79
    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->as(I)Ljava/lang/String;

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

    const-string v0, "Music_Program_SubPage_GuessLike"

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

    .line 84
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mMenuIndex:I

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

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a(J)Z

    move-result p1

    return p1
.end method

.method protected loadNextPageData()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->d()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mAdapter:Lblw;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)V

    invoke-virtual {v0, v1}, Lblw;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 89
    invoke-super {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->setView()V

    .line 90
    new-instance v0, Lblw;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->item_rank_album:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, p0, v3}, Lblw;-><init>(Landroid/content/Context;ILblm;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mAdapter:Lblw;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mAdapter:Lblw;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$2;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$3;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
