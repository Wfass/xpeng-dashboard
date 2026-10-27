.class public Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "NetradioMineCollectedFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/fragment/netradiominecollect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Lavo;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NetradioMineCollectedFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p1, v0}, Laxv;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method public addLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    return-void
.end method

.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 49
    new-instance v6, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;
    .locals 3

    .line 44
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 59
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->netradio_mine_collected_fragment:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 112
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->D(I)Ljava/lang/String;

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

    .line 37
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Laxv;->d()V

    return-void
.end method

.method public removeLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavo;

    iget-object v0, v0, Lavo;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavo;

    iget-object v0, v0, Lavo;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->mine_radio_collect_title:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavo;

    iget-object v0, v0, Lavo;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setManageBtnVisible(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lavo;

    iget-object v3, v3, Lavo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v4, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v5, Lavo;

    iget-object v5, v5, Lavo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_margin_top:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v4, v5, v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 70
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 71
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 72
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lavo;

    iget-object v2, v2, Lavo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 73
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavo;

    iget-object v0, v0, Lavo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavo;

    iget-object v0, v0, Lavo;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_collect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setGotoLoginText(I)V

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_collected:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->setEmptyTips(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavo;

    iget-object v0, v0, Lavo;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/NetradioMineCollectedFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V

    return-void
.end method
