.class public Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;
.super Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;
.source "MusicCollectedAlbumView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected clickCategoryView()V
    .locals 3

    .line 78
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {v0}, Latr;->f(I)V

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/mine/collect_album_detail"

    invoke-static {v1, v2, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;
    .locals 3

    .line 50
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getPageSize()I

    move-result v1

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getPageSize()I

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;->b(I)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;->h()V

    return-void
.end method

.method protected setView()V
    .locals 7

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_album:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(III)V

    .line 56
    new-instance v0, Lasw;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v3}, Lasw;-><init>(Landroid/content/Context;ILcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mAdapter:Lasw;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mAdapter:Lasw;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$a;->item_space_36:I

    .line 60
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    .line 59
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->n(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const-string v1, "collect_album_list"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiLabel(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 64
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 65
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_album:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title_collected_album"

    invoke-static {v1, v2, v3}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mAdapter:Lasw;

    .line 67
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 68
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 69
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v1

    const-string v2, "FROM_MAIN"

    .line 72
    invoke-virtual {v1, v2, v2}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {v1, v0}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
