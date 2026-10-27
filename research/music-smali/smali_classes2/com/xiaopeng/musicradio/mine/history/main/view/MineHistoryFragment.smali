.class public Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;
.source "MineHistoryFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/fragment/history"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BindingFragment<",
        "Lauq;",
        "Lcom/xiaopeng/musicradio/mine/history/main/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/main/presenter/MineHistoryPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/main/view/a;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/main/presenter/MineHistoryPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/main/presenter/MineHistoryPresenter;
    .locals 1

    .line 128
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/main/presenter/MineHistoryPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/history/main/presenter/MineHistoryPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewAgain()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->createViewAgain()V

    .line 59
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 63
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->f()Z

    move-result v0

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->e()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 69
    invoke-static {}, Lawm;->a()Lawm;

    move-result-object v0

    invoke-virtual {v0}, Lawm;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->updateLoadingStatus(I)V

    :cond_2
    return-void
.end method

.method protected findView()V
    .locals 2

    .line 83
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_mine_history:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-static {}, Laxt;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 50
    invoke-static {}, Latt;->a()V

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 153
    invoke-static {p1, p2}, Laxt;->a(Landroid/view/View;Lbyf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onVuiEvent(Landroid/view/View;Lbyf;)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 7

    .line 88
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->a()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->history_music_view_layout:I

    invoke-static {}, Lawm;->a()Lawm;

    move-result-object v5

    const-string v6, "history_music_view_layout"

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->b()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->history_album_view_layout:I

    invoke-static {}, Lawm;->a()Lawm;

    move-result-object v5

    const-string v6, "history_album_view_layout"

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->c()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->history_program_view_layout:I

    invoke-static {}, Lawm;->a()Lawm;

    move-result-object v5

    const-string v6, "history_program_view_layout"

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->d()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->history_netradio_view_layout:I

    invoke-static {}, Lawm;->a()Lawm;

    move-result-object v5

    const-string v6, "history_netradio_view_layout"

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_history:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(I)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauq;

    iget-object v0, v0, Lauq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauq;

    iget-object v0, v0, Lauq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemViewCacheSize(I)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauq;

    iget-object v0, v0, Lauq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setDrawingCacheEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauq;

    iget-object v0, v0, Lauq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/high16 v2, 0x100000

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setDrawingCacheQuality(I)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauq;

    iget-object v0, v0, Lauq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v2, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauq;

    iget-object v0, v0, Lauq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "fragment_list"

    invoke-static {v0, v2, v1, v3, v4}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauq;

    iget-object v0, v0, Lauq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-array v1, v1, [Lbxx;

    sget-object v2, Lbxx;->SCROLLBYY:Lbxx;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Laxt;->a(Landroid/view/View;[Lbxx;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauq;

    iget-object v0, v0, Lauq;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {v0, v3}, Laxt;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public updateHistoryInfo()V
    .locals 0

    return-void
.end method

.method public updateLoadingStatus(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/main/view/MineHistoryFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    return-void
.end method
