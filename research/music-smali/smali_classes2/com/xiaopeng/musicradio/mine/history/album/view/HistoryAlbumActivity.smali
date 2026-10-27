.class public Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "HistoryAlbumActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/album/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/history/album"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Latw;",
        "Lcom/xiaopeng/musicradio/mine/history/album/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/album/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HistoryAlbumActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 1

    .line 88
    invoke-static {p1}, Laxu;->d(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 40
    new-instance v6, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;
    .locals 3

    .line 35
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->activity_album_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 95
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->F(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setListener()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 55
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 56
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_album:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->setTitle(I)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Latw;

    iget-object v0, v0, Latw;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Latw;

    iget-object v0, v0, Latw;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setActivity(Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Latw;

    iget-object v1, v1, Latw;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v2, Latj;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Latw;

    iget-object v4, v4, Latw;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->music_rm_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->music_rm_row:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v2, v4, v5, v0}, Latj;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 62
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 63
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Latw;

    iget-object v1, v1, Latw;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 64
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/album/view/HistoryAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Latw;

    iget-object v0, v0, Latw;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
