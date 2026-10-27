.class public Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;
.super Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;
.source "KugooSingerListLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method private refreshLoadMoreState(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mSingerAdapter:Lbjh;

    check-cast v0, Lbjg;

    invoke-virtual {v0, p1}, Lbjg;->b(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addHotData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mSingerAdapter:Lbjh;

    invoke-virtual {v0, p1}, Lbjh;->c(Ljava/util/List;)V

    const/4 p1, 0x2

    .line 121
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->refreshLoadMoreState(I)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mSceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected createAdapter()V
    .locals 2

    .line 109
    new-instance v0, Lbjg;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbjg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mSingerAdapter:Lbjh;

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;
    .locals 1

    .line 55
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public loadMoreListener()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected loadSingerData(Ljava/lang/String;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a(I)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHotData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setHotData(Ljava/util/List;)V

    const/4 p1, 0x2

    .line 115
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setListener()V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->loadMoreListener()V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setView()V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method
