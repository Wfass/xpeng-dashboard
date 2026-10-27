.class public Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;
.super Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;
.source "SearchResultSongFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/result/song/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/search/fragment/result/song"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment<",
        "Lcom/xiaopeng/musicradio/search/result/song/view/a;",
        "Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/result/song/view/a;"
    }
.end annotation


# instance fields
.field protected mAccountType:I

.field private mAdapter:Lbnv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lbnv;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private updateHighlightWordsAsync()V
    .locals 1

    .line 185
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;-><init>(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->createPresenter()Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;
    .locals 1

    .line 132
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;-><init>()V

    return-object v0
.end method

.method protected getAdapter()Lbnm;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    return-object v0
.end method

.method protected getColumnSpacing()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->fragment_search_result_song_list:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method protected getRowSpacingId()I
    .locals 1

    .line 66
    sget v0, Lcom/xiaopeng/musicradio/search/a$b;->dp_12:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 208
    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ac(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpanCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getTabNameId()I
    .locals 1

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_search_song:I

    return v0
.end method

.method protected getTopSpacing()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public hasData()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    invoke-virtual {v0}, Lbnv;->getItemCount()I

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

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->g()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->updateHighlightWordsAsync()V

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$d;->play_all:I

    if-ne v0, v1, :cond_0

    .line 278
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    const/4 p1, 0x0

    return p1

    .line 282
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z

    move-result p1

    return p1
.end method

.method public playMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAccountType:I

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)V

    return-void
.end method

.method public resetData()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbnv;->a(Ljava/util/List;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;-><init>(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->setView()V

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAccountType:I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAccountType:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->d(I)V

    .line 91
    new-instance v0, Lbnv;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_song_list_item:I

    iget v4, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAccountType:I

    invoke-direct {v0, v2, v3, p0, v4}, Lbnv;-><init>(Landroid/content/Context;ILbnn;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$1;-><init>(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->e()V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v1, v1, v0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->showLoading(ZII)V

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

.method public showLoadingFailed(Ljava/lang/String;I)V
    .locals 0

    .line 271
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->showLoadingFailed(Ljava/lang/String;I)V

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setVisibility(I)V

    return-void
.end method

.method public showMusicLoading(ZII)V
    .locals 0

    return-void
.end method

.method public showNoData()V
    .locals 2

    .line 265
    invoke-super {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->showNoData()V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setVisibility(I)V

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
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 138
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lbnv;->a(Ljava/util/List;)V

    .line 139
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setVisibility(I)V

    .line 140
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    :cond_0
    if-le p3, v1, :cond_1

    const/4 p2, 0x2

    .line 142
    invoke-virtual {p0, v1, p2, p3}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->showLoading(ZII)V

    .line 143
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p3, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->c(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->showNoData()V

    .line 146
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbnv;->c(Ljava/util/List;)V

    .line 151
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setVisibility(I)V

    .line 153
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->updateHighlightWordsAsync()V

    .line 154
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getSongList()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAccountType:I

    invoke-static {p1, p2}, Lboq;->a(Ljava/util/List;I)V

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->onBuildScene()V

    return-void
.end method

.method public updateMusicData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V
    .locals 0

    return-void
.end method

.method public updateMusicLove(Lasj$r;)V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    invoke-virtual {v0}, Lbnv;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 225
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAdapter:Lbnv;

    invoke-virtual {v2, v1}, Lbnv;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {p1}, Lasj$r;->c()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->setHot(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
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
