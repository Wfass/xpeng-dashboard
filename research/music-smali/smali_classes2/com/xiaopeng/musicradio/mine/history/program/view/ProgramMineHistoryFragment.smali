.class public Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "ProgramMineHistoryFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/program/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/fragment/programminehistory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Lawc;",
        "Lcom/xiaopeng/musicradio/mine/history/program/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/program/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ProgramMineHistoryFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->delete(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 1

    .line 92
    invoke-static {p1}, Laxw;->c(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 41
    new-instance v6, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;
    .locals 3

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->program_mine_history_fragment:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 99
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->G(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setListener()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawc;

    iget-object v0, v0, Lawc;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawc;

    iget-object v0, v0, Lawc;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->mine_program_history_title:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawc;

    iget-object v0, v0, Lawc;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setManageBtnVisible(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lawc;

    iget-object v3, v3, Lawc;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v4, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v5, Lawc;

    iget-object v5, v5, Lawc;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_margin_top:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v4, v5, v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 62
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 63
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 64
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lawc;

    iget-object v2, v2, Lawc;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 65
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lawc;

    iget-object v0, v0, Lawc;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 70
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_history:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/history/program/view/ProgramMineHistoryFragment;->setEmptyTips(Ljava/lang/String;)V

    return-void
.end method
