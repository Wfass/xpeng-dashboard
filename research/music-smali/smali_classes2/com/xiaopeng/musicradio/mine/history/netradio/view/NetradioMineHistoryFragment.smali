.class public Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "NetradioMineHistoryFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/fragment/netradiominehistory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Lavq;",
        "Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NetradioMineHistoryFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 89
    invoke-static {p1}, Laxv;->c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 40
    new-instance v6, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;
    .locals 3

    .line 35
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->netradio_mine_history_fragment:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 96
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->H(I)Ljava/lang/String;

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

    .line 74
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 55
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavq;

    iget-object v0, v0, Lavq;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavq;

    iget-object v0, v0, Lavq;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->mine_radio_history_title:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavq;

    iget-object v0, v0, Lavq;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setManageBtnVisible(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lavq;

    iget-object v3, v3, Lavq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v4, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v5, Lavq;

    iget-object v5, v5, Lavq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_margin_top:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v4, v5, v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 62
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 63
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lavq;

    iget-object v2, v2, Lavq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 64
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavq;

    iget-object v0, v0, Lavq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_history:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/history/netradio/view/NetradioMineHistoryFragment;->setEmptyTips(Ljava/lang/String;)V

    return-void
.end method
