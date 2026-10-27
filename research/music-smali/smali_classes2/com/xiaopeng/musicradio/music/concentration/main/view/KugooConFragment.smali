.class public Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;
.super Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;
.source "KugooConFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/kugoo_concentration"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KugooConFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/QQConFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addTop()V
    .locals 2

    .line 32
    new-instance v0, Lbfn;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->getAccountType()I

    move-result v1

    invoke-direct {v0, v1}, Lbfn;-><init>(I)V

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfn;->a(Landroid/content/Context;)V

    .line 34
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    return-void
.end method

.method protected addZone()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/KugooConPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/KugooConPresenter;
    .locals 1

    .line 26
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/KugooConPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/KugooConPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/KugooConPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/music/fragment/kugoo_concentration"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kugou"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->aY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMusicAuthCheck(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 57
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object p1

    invoke-interface {p1}, Lbeg;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "/music/fragment/kugoo_concentration"

    invoke-static {p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected registerTop()V
    .locals 3

    .line 40
    new-instance v0, Lbfk;

    invoke-direct {v0}, Lbfk;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbfn;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbfn;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/KugooConFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method protected registerZone()V
    .locals 0

    return-void
.end method
