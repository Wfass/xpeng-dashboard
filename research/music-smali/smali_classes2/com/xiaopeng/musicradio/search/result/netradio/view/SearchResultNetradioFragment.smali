.class public Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;
.super Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;
.source "SearchResultNetradioFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/result/netradio/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/search/fragment/result/netradio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment<",
        "Lcom/xiaopeng/musicradio/search/result/netradio/view/a;",
        "Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/result/netradio/view/a;"
    }
.end annotation


# instance fields
.field private mAdapter:Lbnq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)Lbnq;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mAdapter:Lbnq;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method private updateHighlightWordsAsync()V
    .locals 1

    .line 84
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;-><init>(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->createPresenter()Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;
    .locals 1

    .line 105
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;-><init>()V

    return-object v0
.end method

.method protected getAdapter()Lbnm;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mAdapter:Lbnq;

    return-object v0
.end method

.method protected getColumnSpacing()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 149
    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTabNameId()I
    .locals 1

    .line 40
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_net_radio:I

    return v0
.end method

.method public hasData()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mAdapter:Lbnq;

    invoke-virtual {v0}, Lbnq;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected loadNextPageData()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/netradio/presenter/SearchResultNetRadioPresenter;->g()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->updateHighlightWordsAsync()V

    return-void
.end method

.method public resetData()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mAdapter:Lbnq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbnq;->a(Ljava/util/List;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->setView()V

    .line 51
    new-instance v0, Lbnq;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbnq;-><init>(Landroid/content/Context;Lbnn;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mAdapter:Lbnq;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mAdapter:Lbnq;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$1;-><init>(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method

.method public showAlbumLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showCollectLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showMusicLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showRadioLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showReadLoading(ZII)V
    .locals 0

    return-void
.end method

.method public updateAlbumData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateCollectData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 111
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mAdapter:Lbnq;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getRadioList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbnq;->a(Ljava/util/List;)V

    .line 112
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getRadioList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getRadioList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->showNoData()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->mAdapter:Lbnq;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getRadioList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbnq;->c(Ljava/util/List;)V

    .line 118
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->updateHighlightWordsAsync()V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->onBuildScene()V

    return-void
.end method

.method public updateMusicData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateRadioData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateReadData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method
