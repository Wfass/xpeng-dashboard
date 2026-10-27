.class public abstract Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "SearchResultBaseListFragment.java"

# interfaces
.implements Lbnn;
.implements Lcom/xiaopeng/musicradio/search/result/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface::",
        "Lcom/xiaopeng/musicradio/search/result/view/b;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "TUIInterface;TPresenter;>;",
        "Lbnn;",
        "Lcom/xiaopeng/musicradio/search/result/view/b;"
    }
.end annotation


# instance fields
.field protected mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field protected mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

.field protected mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

.field private mTitleTv:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field protected mTopBar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method public favOrNot(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    return-void
.end method

.method protected findView()V
    .locals 1

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->search_result_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    .line 91
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mTitleTv:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    .line 93
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->top_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mTopBar:Landroid/view/ViewGroup;

    return-void
.end method

.method protected abstract getAdapter()Lbnm;
.end method

.method protected getBottomSpacingId()I
    .locals 1

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/search/a$b;->dp_0:I

    return v0
.end method

.method protected getColumnSpacing()I
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->fragment_searchresult_list:I

    return v0
.end method

.method public getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getRowSpacingId()I
    .locals 1

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/search/a$b;->dp_50:I

    return v0
.end method

.method protected getSpanCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected abstract getTabNameId()I
.end method

.method protected getTopSpacing()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public isLove(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z

    move-result p1

    return p1
.end method

.method public isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMusicSingerPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isNetRadioPlaying(I)Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b(I)Z

    move-result p1

    return p1
.end method

.method public isProgramPlaying(J)Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b(J)Z

    move-result p1

    return p1
.end method

.method protected abstract loadNextPageData()V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->refreshData()V

    return-void
.end method

.method public openCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lboo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result p1

    invoke-static {p1, p3}, Lbom;->a(ILjava/lang/String;)V

    return-void
.end method

.method public openMusicAlbumDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public openMusicSingerDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lboo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result p1

    invoke-static {p1, p3}, Lbom;->a(ILjava/lang/String;)V

    return-void
.end method

.method public openProgramDetail(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 2

    .line 301
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/program/fragment/sub/detail"

    invoke-static {v0, v1, p1}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public playAllMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;I)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;II)V

    return-void
.end method

.method public playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playControlMusicSingerListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public playMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    return-void
.end method

.method public playNetRadio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method public playProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void
.end method

.method public refreshData()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    .line 272
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const-string v3, "payload_playstate"

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected setView()V
    .locals 10

    .line 99
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 100
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    const/16 v1, 0x64

    .line 101
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 102
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 105
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 106
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getSpanCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setGridLayoutManager(Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$1;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setOnLoadMoreListener(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$2;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment$3;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->no_search_result_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setNoRecordTipText(I)V

    .line 151
    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mAttachedContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mTitleTv:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getTabNameId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mTitleTv:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method public showLoading(ZII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-ne p2, v1, :cond_2

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipViewClickable(Z)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    goto :goto_1

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    if-lt p2, v1, :cond_1

    if-lt p3, v1, :cond_1

    if-ge p2, p3, :cond_1

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLoadMoreEnable(Z)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLoadMoreEnable(Z)V

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c()V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mTopBar:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getAdapter()Lbnm;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getAdapter()Lbnm;

    move-result-object p1

    invoke-virtual {p1}, Lbnm;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->getAdapter()Lbnm;

    move-result-object p1

    invoke-virtual {p1}, Lbnm;->g()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showLoadingFailed(Ljava/lang/String;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 260
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    .line 264
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipViewClickable(Z)V

    .line 265
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mTopBar:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showNoData()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListFragment;->mTopBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
