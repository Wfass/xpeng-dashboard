.class public Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;
.source "HistoryAlbumView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/album/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout<",
        "Lcom/xiaopeng/musicradio/mine/history/album/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/album/view/a;"
    }
.end annotation


# static fields
.field protected static final MAX_DATA_LIST_SIZE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "HistoryAlbumView"


# instance fields
.field protected mAdapter:Lawi;

.field protected mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;
    .locals 3

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    const/4 v1, 0x6

    const-string v2, "FROM_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->findView()V

    .line 73
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 120
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->mine_category_album_view:I

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 125
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mMeunIndex:I

    invoke-virtual {v0, v1}, Lawv;->a(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mAdapter:Lawi;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lawi;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mAdapter:Lawi;

    invoke-virtual {p1}, Lawi;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_0

    const/16 p1, 0x8

    .line 131
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 133
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 p2, 0x320

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->updateVuiScene(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mAdapter:Lawi;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;)V

    invoke-virtual {v0, v1}, Lawi;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 152
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mPosition:I

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiPosition(I)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 157
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->setVuiMode(Lbya;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVuiMode(Lbya;)V

    return-void
.end method

.method protected setView()V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_album:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(III)V

    .line 79
    new-instance v0, Lawi;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lawi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mAdapter:Lawi;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mAdapter:Lawi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Latk;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v4}, Latk;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/16 v0, 0x8

    .line 83
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_album:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "title_history_album"

    invoke-static {v0, v1, v4}, Laxt;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->n(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "history_album_list"

    invoke-static {v0, v1, v3, v2, v4}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 86
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mAdapter:Lawi;

    .line 87
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 88
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 89
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    const-string v1, "FROM_MAIN"

    .line 92
    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mCategoryViewHolder:Lcom/xiaopeng/musicradio/mine/widget/a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public updateHistoryAlbum()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->h()V

    :cond_0
    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumView;->mAdapter:Lawi;

    invoke-virtual {v0, p1, p2}, Lawi;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    return-void
.end method
