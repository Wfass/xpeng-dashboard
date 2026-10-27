.class public Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "CollectAlbumActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/album/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/collect/album"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Latw;",
        "Lcom/xiaopeng/musicradio/mine/collect/album/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/album/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CollectAlbumActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->updateLoadingTips()V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 2

    const/4 v0, 0x0

    .line 100
    invoke-static {p1, v0}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity$3;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 52
    new-instance v6, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;
    .locals 3

    .line 47
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->activity_album_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 118
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->B(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleAlbum(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onResume()V

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Laxu;->f(I)V

    return-void
.end method

.method public resetDataList()V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_album:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->setTitle(I)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Latw;

    iget-object v0, v0, Latw;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Latw;

    iget-object v0, v0, Latw;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setActivity(Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;)V

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Latw;

    iget-object v1, v1, Latw;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v2, Latj;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

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

    .line 73
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 74
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 75
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Latw;

    iget-object v1, v1, Latw;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 76
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectAlbumActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Latw;

    iget-object v0, v0, Latw;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
