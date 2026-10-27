.class public Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "ProgramMineCollectedFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/program/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/fragment/programminecollect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Lawa;",
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

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->delete(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-static {p1, v0}, Laxw;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Z)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method public addLoveProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    return-void
.end method

.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 50
    new-instance v6, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;
    .locals 3

    .line 45
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/program/presenter/CollectedProgramPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 60
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->program_mine_collected_fragment:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 114
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->C(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Laxw;->e()V

    return-void
.end method

.method public removeLoveProgram(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawa;

    iget-object v0, v0, Lawa;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawa;

    iget-object v0, v0, Lawa;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->mine_program_collect_title:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawa;

    iget-object v0, v0, Lawa;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setManageBtnVisible(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lawa;

    iget-object v3, v3, Lawa;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v4, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v5, Lawa;

    iget-object v5, v5, Lawa;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_margin_top:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v4, v5, v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 71
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 72
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 73
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lawa;

    iget-object v2, v2, Lawa;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 74
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawa;

    iget-object v0, v0, Lawa;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawa;

    iget-object v0, v0, Lawa;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_collect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setGotoLoginText(I)V

    .line 80
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_subscribe:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->setEmptyTips(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawa;

    iget-object v0, v0, Lawa;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/program/view/ProgramMineCollectedFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V

    return-void
.end method
