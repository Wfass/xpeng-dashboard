.class public Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "CollectProgramActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/program/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/collect/program"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Laui;",
        "Lcom/xiaopeng/musicradio/mine/collect/program/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/program/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CollectProgramActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->delete(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p1, v0}, Laxw;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Z)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method public addLoveProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    return-void
.end method

.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 47
    new-instance v6, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;
    .locals 3

    .line 42
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 57
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->activity_program_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 102
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->C(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Laxw;->e()V

    return-void
.end method

.method public removeLoveProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 63
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_program:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->setTitle(I)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laui;

    iget-object v0, v0, Laui;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laui;

    iget-object v0, v0, Laui;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setActivity(Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laui;

    iget-object v1, v1, Laui;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v2, Latj;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Laui;

    iget-object v4, v4, Laui;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_margin_top:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v2, v4, v5, v0}, Latj;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 68
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 69
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 70
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laui;

    iget-object v1, v1, Laui;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 71
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectProgramActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laui;

    iget-object v0, v0, Laui;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
