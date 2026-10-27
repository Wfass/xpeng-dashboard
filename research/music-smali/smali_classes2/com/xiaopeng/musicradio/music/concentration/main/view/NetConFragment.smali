.class public Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;
.super Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;
.source "NetConFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/netconcentration"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetConFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;-><init>()V

    return-void
.end method

.method private openDolbyZone()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected addTop()V
    .locals 3

    .line 51
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lbfn;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->getAccountType()I

    move-result v2

    invoke-direct {v0, v2}, Lbfn;-><init>(I)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbfn;->a(Landroid/content/Context;)V

    .line 54
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iput v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lbfq;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->getAccountType()I

    move-result v2

    invoke-direct {v0, v2}, Lbfq;-><init>(I)V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbfq;->a(Landroid/content/Context;)V

    .line 59
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iput v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    :goto_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/NetConPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/NetConPresenter;
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/NetConPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/NetConPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/NetConPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/music/fragment/netconcentration"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Netease"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->aY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleRadioData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->handleRadioData(Ljava/util/List;)V

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mList:Ljava/util/List;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mRadioStartPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfo;

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Lbfo;->a(Z)V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mRadioStartPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyItemChanged(I)V

    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 82
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object p1

    invoke-interface {p1}, Lbeg;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "/music/fragment/netconcentration"

    invoke-static {p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->isHasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->openDolbyZone()V

    .line 110
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a()Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b()V

    return-void
.end method

.method protected registerTop()V
    .locals 4

    .line 66
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 68
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v3, Lbfn;

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v2, Lbfn;

    invoke-interface {v0, v2}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 70
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Lbfl;

    invoke-direct {v0}, Lbfl;-><init>()V

    .line 73
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v3, Lbfq;

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v2, Lbfq;

    invoke-interface {v0, v2}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 75
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    :goto_0
    return-void
.end method

.method public showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;->showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    .line 101
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->openDolbyZone()V

    return-void
.end method
