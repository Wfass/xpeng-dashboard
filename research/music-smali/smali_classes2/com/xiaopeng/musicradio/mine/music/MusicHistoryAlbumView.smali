.class public Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;
.super Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;
.source "MusicHistoryAlbumView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;
    .locals 3

    .line 45
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->getPageSize()I

    move-result v1

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicHistoryAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->getPageSize()I

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->b(I)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->h()V

    return-void
.end method

.method protected setView()V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_album:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(III)V

    .line 51
    new-instance v0, Lawi;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v3}, Lawi;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mAdapter:Lawi;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mAdapter:Lawi;

    invoke-virtual {v0, v2}, Lawi;->b(Z)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mAdapter:Lawi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_36:I

    .line 56
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    .line 55
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->n(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const-string v1, "history_album_list"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiLabel(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 60
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_album:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title_history_album"

    invoke-static {v1, v2, v3}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mAdapter:Lawi;

    .line 63
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 64
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 65
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v1

    const-string v2, "FROM_MAIN"

    .line 68
    invoke-virtual {v1, v2, v2}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {v1, v0}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
