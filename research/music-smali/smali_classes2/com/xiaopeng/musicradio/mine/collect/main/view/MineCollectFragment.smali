.class public Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;
.source "MineCollectFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/fragment/collect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BindingFragment<",
        "Lauo;",
        "Lcom/xiaopeng/musicradio/mine/collect/main/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/main/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MineCollectFragment"


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;
    .locals 1

    .line 141
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/collect/main/presenter/MineCollectPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewAgain()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->createViewAgain()V

    .line 62
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 66
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->f()Z

    move-result v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->e()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 71
    invoke-static {}, Lasz;->a()Lasz;

    move-result-object v0

    invoke-virtual {v0}, Lasz;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->updateLoadingStatus(I)V

    .line 76
    :cond_2
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    invoke-static {}, Lasz;->a()Lasz;

    move-result-object v0

    invoke-virtual {v0}, Lasz;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->updateLoadingStatus(I)V

    :cond_3
    return-void
.end method

.method protected findView()V
    .locals 2

    .line 91
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 86
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_mine_collect:I

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

    .line 167
    invoke-static {}, Laxt;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-static {}, Latr;->a()V

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 172
    invoke-static {p1, p2}, Laxt;->a(Landroid/view/View;Lbyf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onVuiEvent(Landroid/view/View;Lbyf;)V

    :cond_0
    return-void
.end method

.method protected setView()V
    .locals 7

    .line 96
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->a()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->collected_music_view_layout:I

    invoke-static {}, Lasz;->a()Lasz;

    move-result-object v5

    const-string v6, "collected_music_view_layout"

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->b()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->collected_album_view_layout:I

    invoke-static {}, Lasz;->a()Lasz;

    move-result-object v5

    const-string v6, "collected_album_view_layout"

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->c()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->collected_program_view_layout:I

    invoke-static {}, Lasz;->a()Lasz;

    move-result-object v5

    const-string v6, "collected_program_view_layout"

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->d()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->collected_netradio_view_layout:I

    invoke-static {}, Lasz;->a()Lasz;

    move-result-object v5

    const-string v6, "collected_netradio_view_layout"

    invoke-direct {v3, v4, v6, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 102
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_collected:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(I)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "fragment_list"

    invoke-static {v0, v2, v1, v3, v4}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-array v2, v1, [Lbxx;

    sget-object v4, Lbxx;->SCROLLBYY:Lbxx;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Laxt;->a(Landroid/view/View;[Lbxx;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemViewCacheSize(I)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setDrawingCacheEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setDrawingCacheQuality(I)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {v0, v3}, Laxt;->b(Landroid/view/View;Z)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_collect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setGotoLoginText(I)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V

    return-void
.end method

.method public updateAlbumLove(Z)V
    .locals 0

    return-void
.end method

.method public updateLoadingStatus(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauo;

    iget-object v0, v0, Lauo;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    invoke-static {p1, v0}, Laqy;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public updateMusicLove(Z)V
    .locals 0

    return-void
.end method
