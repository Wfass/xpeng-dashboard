.class public Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "QQSingerMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;
.implements Lcom/xiaopeng/musicradio/music/singer/main/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/music/fragment/qqsinger"
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
.field private static final TAG:Ljava/lang/String; = "QQSingerMainFragment"


# instance fields
.field protected mAdapter:Lbje;

.field protected mCurrentView:Landroid/view/View;

.field private mHasTag:Z

.field private mIndex:I

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field protected mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field protected mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

.field protected mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

.field protected mTabStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTypeAdapter:Lbji;

.field private mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field protected mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mHasTag:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabStrings:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lbji;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeAdapter:Lbji;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setViewPageState(I)V

    return-void
.end method

.method private createVuiScene(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 471
    sget v0, Lbez$d;->singer_list_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    if-nez p1, :cond_0

    return-void

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setSceneId(Ljava/lang/String;)V

    .line 477
    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setVuiElementId(I)V

    .line 478
    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getTabText(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbyb;->LEVEL1:Lbyb;

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->setRecyclerViewVuiAttr(Ljava/lang/String;Ljava/lang/String;Lbyb;)V

    .line 479
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->onCreateVuiScene()V

    .line 480
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->enterScene()V

    .line 481
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->onBuildScene()V

    :cond_1
    return-void
.end method

.method private destroyVuiScene(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 460
    sget v0, Lbez$d;->singer_list_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    if-nez p1, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->exitScene()V

    .line 465
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->onDestroyVuiScene(Z)V

    :cond_1
    return-void
.end method

.method private enterVuiScene(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 497
    sget v0, Lbez$d;->singer_list_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    if-nez p1, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->enterScene()V

    :cond_1
    return-void
.end method

.method private exitVuiScene(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 487
    sget v0, Lbez$d;->singer_list_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    if-nez p1, :cond_0

    return-void

    .line 491
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->exitScene()V

    :cond_1
    return-void
.end method

.method private getTabText(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private setViewPageState(I)V
    .locals 2

    .line 273
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    if-eq v0, p1, :cond_1

    if-ltz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {v1, v0}, Lbje;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 276
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->destroyVuiScene(Landroid/view/View;Z)V

    .line 278
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    .line 279
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    if-ltz v0, :cond_1

    .line 280
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {v1, v0}, Lbje;->d(I)Landroid/view/View;

    move-result-object v0

    .line 281
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->createVuiScene(Landroid/view/View;)V

    .line 284
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getTabText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getTabText(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbjl;->k(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private showContent(Z)V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XViewPager;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    return-void
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 328
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

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

.method protected createAdapter(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 269
    new-instance v6, Lbje;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getAccountType()I

    move-result v3

    sget v4, Lbez$f;->singer_list_music_layout:I

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lbje;-><init>(Landroid/content/Context;Ljava/util/List;IILandroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    iput-object v6, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;
    .locals 1

    .line 208
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewFirst()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->createViewFirst()V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->p()V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(I)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->q()V

    return-void
.end method

.method protected findView()V
    .locals 2

    .line 85
    sget v0, Lbez$d;->layout_tab:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 86
    sget v0, Lbez$d;->singer_type_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 87
    sget v0, Lbez$d;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    .line 88
    sget v0, Lbez$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 90
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 91
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBuildViewList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 80
    sget v0, Lbez$f;->music_fragment_singer_main_qq:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 436
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mMenuIndex:I

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

    .line 214
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlayIng(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadEnd()V
    .locals 0

    return-void
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifySpeechChange()V
    .locals 0

    return-void
.end method

.method public onBuildScene()V
    .locals 4

    .line 441
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->isMainScene()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 427
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 219
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroy()V

    const-string v0, "QQSingerMainFragment"

    const-string v1, "onDestroy"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 509
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroyView()V

    .line 510
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {v1, v0}, Lbje;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 512
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->destroyVuiScene(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 372
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object p1

    invoke-interface {p1}, Lbeg;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "/music/fragment/qqsinger"

    invoke-static {p1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 394
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 395
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_RANK"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    if-eqz v0, :cond_2

    .line 397
    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 398
    invoke-virtual {v0, v1}, Lbje;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->exitVuiScene(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {v1}, Lbje;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 404
    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    if-eq v0, v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {v1, v0}, Lbje;->d(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 406
    instance-of v2, v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    if-eqz v2, :cond_1

    .line 407
    check-cast v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    .line 408
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->clear()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 380
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 381
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_RANK"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    if-eqz v0, :cond_0

    .line 383
    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 384
    invoke-virtual {v0, v1}, Lbje;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->enterVuiScene(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method public selectArea(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public selectLayoutChange(Z)V
    .locals 0

    return-void
.end method

.method public selectType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAreaDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

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

    return-void
.end method

.method protected setListLayout(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->createAdapter(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 261
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 262
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    .line 263
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/musicradio/utils/bu;->a(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeAdapter:Lbji;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)V

    invoke-virtual {v0, v1}, Lbji;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$4;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    return-void
.end method

.method protected setSingerType()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    if-eqz v1, :cond_0

    .line 201
    sget v1, Lbez$d;->singer_list_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getTypeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerListLayout;->selectType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTypeData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeAdapter:Lbji;

    invoke-virtual {v0, p1}, Lbji;->a(Ljava/util/List;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeAdapter:Lbji;

    invoke-virtual {v0}, Lbji;->notifyDataSetChanged()V

    .line 191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 192
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    .line 193
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbjl;->l(ILjava/lang/String;)V

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mAdapter:Lbje;

    invoke-virtual {p1, v1}, Lbje;->d(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mCurrentView:Landroid/view/View;

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setSingerType()V

    return-void
.end method

.method public setTypeDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setTypeListDatas(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    .line 349
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mHasTag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->showLoadingTip(I)V

    const/4 v0, 0x1

    .line 353
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->showContent(Z)V

    .line 354
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mHasTag:Z

    .line 355
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setListLayout(Ljava/util/List;)V

    .line 356
    new-instance p1, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$5;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$5;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;Ljava/util/List;)V

    const-wide/16 v0, 0x1e

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 104
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 105
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XViewPager;->setOffscreenPageLimit(I)V

    .line 108
    new-instance v0, Lbji;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lbji;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeAdapter:Lbji;

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 111
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeAdapter:Lbji;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 116
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->reviewOnScreenChange()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 231
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->showContent(Z)V

    const/4 p1, 0x2

    .line 232
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->showContent(Z)V

    const/4 v0, 0x1

    .line 226
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->showContent(Z)V

    const/4 p1, 0x3

    .line 238
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->showLoadingTip(I)V

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 0

    return-void
.end method
