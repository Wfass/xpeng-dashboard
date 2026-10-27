.class public Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "CollectNetradioActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/collect/netradio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Laue;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/netradio/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CollectNetradioActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-static {p1, v0}, Laxv;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method public addLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    return-void
.end method

.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 46
    new-instance v6, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;
    .locals 3

    .line 41
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/netradio/presenter/CollectedNetradioPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 56
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->activity_netradio_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 101
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->D(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Laxv;->d()V

    return-void
.end method

.method public removeLoveNetradio(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setView()V
    .locals 7

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_netradio:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->setTitle(I)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laue;

    iget-object v0, v0, Laue;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laue;

    iget-object v0, v0, Laue;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setActivity(Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laue;

    iget-object v1, v1, Laue;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v2, Latj;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Laue;

    iget-object v4, v4, Laue;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->mine_netradio_view_item_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->mine_netradio_view_item_margin_top:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v2, v4, v5, v0}, Latj;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 68
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 69
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laue;

    iget-object v1, v1, Laue;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 70
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectNetradioActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laue;

    iget-object v0, v0, Laue;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
