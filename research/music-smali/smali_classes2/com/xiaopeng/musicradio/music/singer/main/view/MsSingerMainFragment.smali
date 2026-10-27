.class public Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MsSingerMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;
.implements Lcom/xiaopeng/musicradio/music/singer/main/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/singer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/b;",
        "Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsSingerMainFragment"


# instance fields
.field private mHasLoadData:Z

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mSingerAdapter:Lbjh;

.field private mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

.field private mTopMargin:I

.field private oldY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/16 v0, 0xd2

    .line 60
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mTopMargin:I

    .line 61
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->oldY:I

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mHasLoadData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lbjh;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mTopMargin:I

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mHasLoadData:Z

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->oldY:I

    return p0
.end method

.method static synthetic access$902(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->oldY:I

    return p1
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 291
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addHotData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;
    .locals 1

    .line 185
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 71
    sget v0, Lbez$d;->singer_select_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    .line 72
    sget v0, Lbez$d;->hot_recycleview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 73
    sget v0, Lbez$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    :cond_0
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 66
    sget v0, Lbez$f;->music_fragment_singer_qq:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 190
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 195
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_artist_radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadEnd()V
    .locals 0

    return-void
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {v0}, Lbjh;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 349
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {p1}, Lbjh;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroy()V

    const-string v0, "MsSingerMainFragment"

    const-string v1, "onDestroy"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 342
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {v0}, Lbjh;->notifyDataSetChanged()V

    return-void
.end method

.method public selectArea(Ljava/lang/String;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selectLayoutChange(Z)V
    .locals 0

    return-void
.end method

.method public selectType(Ljava/lang/String;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->c(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAreaDatas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setAreaData(Ljava/util/List;)V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaCode()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHotData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbjh;->a(Ljava/util/List;Z)V

    const/4 p1, 0x0

    .line 250
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->showLoadingTip(I)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 252
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mHasLoadData:Z

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)V

    invoke-virtual {v0, v1}, Lbjh;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setStateChange(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$4;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setClickCloseListener(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;)V

    return-void
.end method

.method public setTypeDatas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setTypeData(Ljava/util/List;)V

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getTypeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->c(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getTypeCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public setTypeListDatas(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 81
    new-instance v0, Lbjh;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbjh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 83
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 84
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 85
    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mTopMargin:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/16 v4, 0x64

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 88
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerSelectLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setVuiElementType(Lbxy;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mHasLoadData:Z

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 216
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mHasLoadData:Z

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 209
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mHasLoadData:Z

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 223
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->showLoadingTip(I)V

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {p1}, Lbjh;->j()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {v0, p1}, Lbjh;->notifyItemChanged(I)V

    .line 304
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {v0}, Lbjh;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 307
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 308
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {v2, v1}, Lbjh;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {p1}, Lbjh;->j()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 316
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {v1, p1}, Lbjh;->notifyItemChanged(I)V

    .line 317
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->mSingerAdapter:Lbjh;

    invoke-virtual {p1, v0}, Lbjh;->d(I)V

    :cond_3
    return-void
.end method
