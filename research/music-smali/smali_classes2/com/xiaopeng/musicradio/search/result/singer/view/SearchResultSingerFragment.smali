.class public Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;
.super Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;
.source "SearchResultSingerFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/result/singer/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/search/fragment/result/singer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment<",
        "Lcom/xiaopeng/musicradio/search/result/singer/view/a;",
        "Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/result/singer/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "tangrh: "


# instance fields
.field protected mAccountType:I

.field private mAdapter:Lbnt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)Lbnt;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAdapter:Lbnt;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method private updateHighlightWordsAsync()V
    .locals 1

    .line 150
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$2;-><init>(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->createPresenter()Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;
    .locals 1

    .line 106
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;-><init>()V

    return-object v0
.end method

.method protected getAdapter()Lbnm;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAdapter:Lbnt;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 210
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 170
    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ad(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTabNameId()I
    .locals 1

    .line 42
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_singer:I

    return v0
.end method

.method public hasData()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAdapter:Lbnt;

    invoke-virtual {v0}, Lbnt;->getItemCount()I

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

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->g()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->updateHighlightWordsAsync()V

    return-void
.end method

.method public openMusicSingerDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 90
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p3, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAccountType:I

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v1, v0}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->b(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public playControlMusicSingerListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAccountType:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->b(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 85
    iget p1, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAccountType:I

    invoke-static {p1}, Lbom;->j(I)V

    return-void
.end method

.method public resetData()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAdapter:Lbnt;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbnt;->a(Ljava/util/List;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->setView()V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAccountType:I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAccountType:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->d(I)V

    .line 57
    new-instance v0, Lbnt;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAccountType:I

    invoke-direct {v0, v2, p0, v3}, Lbnt;-><init>(Landroid/content/Context;Lbnn;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAdapter:Lbnt;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAdapter:Lbnt;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$1;-><init>(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->e()V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v1, v1, v0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->showLoading(ZII)V

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

    .line 112
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAdapter:Lbnt;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbnt;->a(Ljava/util/List;)V

    .line 113
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->showNoData()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->mAdapter:Lbnt;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getArtistList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbnt;->c(Ljava/util/List;)V

    .line 119
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->updateHighlightWordsAsync()V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->onBuildScene()V

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
