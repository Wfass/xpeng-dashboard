.class public abstract Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;
.source "SearchResultBaseListLayout.java"

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
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout<",
        "TUIInterface;TPresenter;>;",
        "Lbnn;",
        "Lcom/xiaopeng/musicradio/search/result/view/b;"
    }
.end annotation


# instance fields
.field protected c:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

.field protected d:Landroidx/recyclerview/widget/GridLayoutManager;

.field protected e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

.field protected f:Landroid/view/ViewGroup;

.field private g:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 101
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->search_result_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->g:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->c:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    .line 104
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->top_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->f:Landroid/view/ViewGroup;

    return-void
.end method

.method protected c()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->f:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 111
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getSpanCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIIZ)V

    .line 112
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    const/16 v1, 0x64

    .line 113
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 117
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getSpanCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->d:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->d:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setGridLayoutManager(Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$1;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setOnLoadMoreListener(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$2;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout$3;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->no_search_result_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setNoRecordTipText(I)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->h:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->ab(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->g:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getTabNameId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method protected abstract f()V
.end method

.method public favOrNot(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    return-void
.end method

.method protected abstract getAdapter()Lbnm;
.end method

.method protected getBottomSpacingId()I
    .locals 1

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/search/a$b;->dp_0:I

    return v0
.end method

.method protected getColumnSpacing()I
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->fragment_searchresult_list:I

    return v0
.end method

.method public getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getRowSpacingId()I
    .locals 1

    .line 79
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

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object v0

    invoke-virtual {v0}, Lbnm;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object v0

    invoke-virtual {v0}, Lbnm;->g()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isLove(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z

    move-result p1

    return p1
.end method

.method public isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMusicSingerPlaying(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isNetRadioPlaying(I)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b(I)Z

    move-result p1

    return p1
.end method

.method public isProgramPlaying(J)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b(J)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public openCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lboo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public openMusicAlbumDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    invoke-static {v0, p1, p2, p3, v1}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public openMusicSingerDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 313
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v5

    const/4 v4, 0x3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result p1

    invoke-static {p1, p3}, Lbom;->a(ILjava/lang/String;)V

    return-void
.end method

.method public openProgramDetail(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 2

    .line 320
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/program/fragment/sub/detail"

    invoke-static {v0, v1, p1}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
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

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;II)V

    return-void
.end method

.method public playControlMusicAlbumListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playControlMusicSingerListSign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->h()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public playMusic(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    return-void
.end method

.method public playNetRadio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method public playProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void
.end method

.method public refreshData()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    .line 292
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const-string v3, "payload_playstate"

    .line 291
    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public showLoading(ZII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-ne p2, v1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipViewClickable(Z)V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    goto :goto_1

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    if-lt p2, v1, :cond_1

    if-lt p3, v1, :cond_1

    if-ge p2, p3, :cond_1

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLoadMoreEnable(Z)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLoadMoreEnable(Z)V

    .line 181
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c()V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object p1

    invoke-virtual {p1}, Lbnm;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

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
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 278
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    .line 282
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipViewClickable(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object p1

    invoke-virtual {p1}, Lbnm;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultBaseListLayout;->getAdapter()Lbnm;

    move-result-object p1

    invoke-virtual {p1}, Lbnm;->g()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
