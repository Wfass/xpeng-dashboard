.class public Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;
.super Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;
.source "SearchResultProgramFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/result/program/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/search/fragment/result/program"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment<",
        "Lcom/xiaopeng/musicradio/search/result/program/view/a;",
        "Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/result/program/view/a;"
    }
.end annotation


# instance fields
.field private mAdapter:Lbnr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;)Lbnr;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mAdapter:Lbnr;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method private updateHighlightWordsAsync()V
    .locals 1

    .line 116
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment$2;-><init>(Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->createPresenter()Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;
    .locals 1

    .line 72
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;-><init>()V

    return-object v0
.end method

.method protected getAdapter()Lbnm;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mAdapter:Lbnr;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 143
    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->af(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTabNameId()I
    .locals 1

    .line 40
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_program:I

    return v0
.end method

.method public hasData()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mAdapter:Lbnr;

    invoke-virtual {v0}, Lbnr;->getItemCount()I

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
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->g()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->updateHighlightWordsAsync()V

    return-void
.end method

.method public resetData()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mAdapter:Lbnr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbnr;->a(Ljava/util/List;)V

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
    new-instance v0, Lbnr;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbnr;-><init>(Landroid/content/Context;Lbnn;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mAdapter:Lbnr;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mAdapter:Lbnr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment$1;-><init>(Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;)V

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

    .line 78
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mAdapter:Lbnr;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbnr;->a(Ljava/util/List;)V

    .line 79
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->showNoData()V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->mAdapter:Lbnr;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbnr;->c(Ljava/util/List;)V

    .line 85
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->updateHighlightWordsAsync()V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramFragment;->onBuildScene()V

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
