.class public Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;
.super Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;
.source "SearchResultCollectionFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/result/collection/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/search/fragment/result/song_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment<",
        "Lcom/xiaopeng/musicradio/search/result/collection/view/a;",
        "Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/result/collection/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchResultCollectionFragment: "


# instance fields
.field protected mAccountType:I

.field private mAdapter:Lbnp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;)Lbnp;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAdapter:Lbnp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method private updateHighlightWordsAsync()V
    .locals 1

    .line 87
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2;-><init>(Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->createPresenter()Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;
    .locals 1

    .line 112
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;-><init>()V

    return-object v0
.end method

.method protected getAdapter()Lbnm;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAdapter:Lbnp;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->getArguments()Landroid/os/Bundle;

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

    .line 156
    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ae(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTabNameId()I
    .locals 1

    .line 48
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_song_list:I

    return v0
.end method

.method public hasData()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAdapter:Lbnp;

    invoke-virtual {v0}, Lbnp;->getItemCount()I

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

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->g()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->updateHighlightWordsAsync()V

    return-void
.end method

.method public playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playControlMusicAlbumListSign: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultCollectionFragment: "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAccountType:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->a(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playControlMusicAlbumListSign: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultCollectionFragment: "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAccountType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget p1, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAccountType:I

    invoke-static {p1}, Lbom;->h(I)V

    return-void
.end method

.method public resetData()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAdapter:Lbnp;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbnp;->a(Ljava/util/List;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->setView()V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAccountType:I

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAccountType:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->d(I)V

    .line 63
    new-instance v0, Lbnp;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAccountType:I

    invoke-direct {v0, v2, p0, v3}, Lbnp;-><init>(Landroid/content/Context;Lbnn;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAdapter:Lbnp;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAdapter:Lbnp;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$1;-><init>(Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->e()V

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v1, v1, v0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->showLoading(ZII)V

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

    .line 118
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAdapter:Lbnp;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getCollectList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbnp;->a(Ljava/util/List;)V

    .line 119
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getCollectList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getCollectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->showNoData()V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->mAdapter:Lbnp;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getCollectList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbnp;->c(Ljava/util/List;)V

    .line 125
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->updateHighlightWordsAsync()V

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->onBuildScene()V

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
