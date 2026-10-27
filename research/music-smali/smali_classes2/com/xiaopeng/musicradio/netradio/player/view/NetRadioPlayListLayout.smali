.class public Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "NetRadioPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/player/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/netradio/player/view/a;",
        "Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/player/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetRadioPlayListLayout"


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/netradio/player/view/d;

.field private mLoadingTips:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mScrollRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance p1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    new-instance p1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    new-instance p1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->scrollToPlayRun()V

    return-void
.end method

.method private scrollToPlayRun()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->createPresenter()Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;
    .locals 2

    .line 50
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 56
    sget v0, Lbuc$d;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 57
    sget v0, Lbuc$d;->loading_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mLoadingTips:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 85
    sget v0, Lbuc$f;->layout_netradio_playlist:I

    return v0
.end method

.method public notifyList()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->notifyDataSetChanged()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->notifyList()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_1

    const-string p1, "VIEW_PLAY_LIST"

    if-nez p2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->scrollToPlay()V

    .line 151
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshState(II)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshState: pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " playState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioPlayListLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->a(II)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->scrollToPlay()V

    return-void
.end method

.method public scrollToPlay()V
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$1;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->a(Lcom/xiaopeng/musicradio/netradio/player/view/d$b;)V

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbuc$b;->netradio_player_list_deco_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/commonui/widget/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbuc$b;->netradio_player_list_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bD:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->enableViewVuiMode(Z)V

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->a(Ljava/util/List;)V

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mLoadingTips:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mLoadingTips:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->scrollToPlay()V

    return-void
.end method

.method public updateError()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mLoadingTips:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method

.method public updateLoading()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->mLoadingTips:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method
