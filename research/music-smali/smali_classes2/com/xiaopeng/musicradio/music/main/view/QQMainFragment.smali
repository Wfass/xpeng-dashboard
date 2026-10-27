.class public Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;
.super Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;
.source "QQMainFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/qqmain"
.end annotation


# static fields
.field protected static final AUTH_VIEWPAGER_POS:I = 0x5

.field protected static final MUSIC_VIEWPAGER_POS:I = 0x0

.field protected static final SEARCH_VIEWPAGER_POS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MusicMainFragment"


# instance fields
.field protected mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;"
        }
    .end annotation
.end field

.field private mLastViewPagerIndex:I

.field private mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPosition:I

.field protected mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field protected mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPosition:I

    return p0
.end method

.method private setViewPagerCurrentItem(I)V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewPagerCurrentItem: index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastViewPagerIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLastViewPagerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 314
    iput p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLastViewPagerIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public backToHistory()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 292
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Ljava/lang/String;Z)V

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i()V

    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 461
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->clearFocus()V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->j()V

    :cond_0
    return-void
.end method

.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 480
    invoke-static {}, Lcom/xiaopeng/musicradio/music/main/view/g;->a()Lcom/xiaopeng/musicradio/music/main/view/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/g;->r()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object v0

    return-object v0
.end method

.method protected doInitSearchTopBar()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$MvxCVzjZXLlZPhlzScuTOMSi3Nc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$MvxCVzjZXLlZPhlzScuTOMSi3Nc;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V

    invoke-static {v0}, Lbql;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$MvxCVzjZXLlZPhlzScuTOMSi3Nc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$MvxCVzjZXLlZPhlzScuTOMSi3Nc;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected enableLeftSelectAdapter()V
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLeftSelectAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->hasSetAdapter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->enableAdapter()V

    goto :goto_0

    .line 494
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$QQMainFragment$t6xMi5EjWK2OqWAB34rVEvILXZs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$QQMainFragment$t6xMi5EjWK2OqWAB34rVEvILXZs;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V

    invoke-static {v0}, Lbql;->i(Ljava/lang/Runnable;)V

    .line 501
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->hasSetAdapter()Z

    move-result v0

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->enableAdapter()V

    :cond_2
    return-void
.end method

.method protected findView()V
    .locals 3

    .line 104
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->findView()V

    const-string v0, "QQMainFragment.findView"

    .line 105
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SELECT_MENU_SCENE"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->e()I

    move-result v0

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 119
    :goto_0
    sget v0, Lbez$d;->stub_music_main:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_3
    sget v0, Lbez$d;->music_main_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mMusicMainLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 124
    sget v0, Lbez$d;->left_select_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    .line 125
    sget v0, Lbez$d;->left_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftView:Landroid/view/View;

    .line 126
    sget v0, Lbez$d;->item_space:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 127
    sget v0, Lbez$d;->right_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 128
    sget v0, Lbez$d;->left_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 129
    sget v0, Lbez$d;->auth_select_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    .line 130
    sget v0, Lbez$d;->music_viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    .line 131
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSceneView:Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setMusicMainView()V

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

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getTypeRecyclerView()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 99
    sget v0, Lbez$f;->music_stub_layout_qq_main:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->aX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleCloseSearch()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, ""

    .line 233
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Ljava/lang/String;Z)V

    .line 234
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbnz;->a(Ljava/lang/String;)V

    .line 235
    new-instance v0, Lbnw$e;

    invoke-direct {v0}, Lbnw$e;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->preCacheLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 90
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getContentViewId()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/xiaopeng/musicradio/utils/ae;->b(ILandroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getContentViewId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected initPagerList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/commonui/adapter/e;",
            ">;)V"
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_selection_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/qqconcentration"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_rank_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/qqrank"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_singer_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/qqsinger"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->tab_main_mine:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mine/qq_mine"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->search_top_hint:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/search/activity/main"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->search_top_hint:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/qq_auth"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected initSearchImgLayout()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    sget v0, Lbez$d;->vs_search_img_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 275
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 277
    :cond_1
    sget v0, Lbez$d;->search_img_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz v0, :cond_3

    .line 279
    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$QQMainFragment$EPKwMY99OucCvBMEslAJo9K6E4g;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/-$$Lambda$QQMainFragment$EPKwMY99OucCvBMEslAJo9K6E4g;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 286
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected initSearchTopBar()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    sget v0, Lbez$d;->vs_search_top_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 245
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 247
    :cond_1
    sget v0, Lbez$d;->voice_search_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->k()V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    .line 266
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$enableLeftSelectAdapter$1$QQMainFragment()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->enableAdapter()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initSearchImgLayout$0$QQMainFragment(Landroid/view/View;)V
    .locals 0

    .line 279
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->openSearch()V

    return-void
.end method

.method public onBuildScene()V
    .locals 5

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 410
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 411
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->k()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "QQMainFragment.onCreate"

    .line 83
    invoke-static {p1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 469
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onDestroyView()V

    .line 470
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->preload()V

    return-void
.end method

.method public onIdleViewInit()V
    .locals 2

    .line 519
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onIdleViewInit()V

    const-string v0, "MusicMainFragment"

    const-string v1, "onIdleViewInit: "

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->enableLeftSelectAdapter()V

    .line 522
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->doInitSearchTopBar()V

    .line 523
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i()V

    .line 379
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->openSearch()V

    .line 381
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z

    move-result p1

    return p1
.end method

.method public onMusicAuthCheck()V
    .locals 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMusicAuthCheck: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v2

    invoke-virtual {v1, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v1

    invoke-interface {v1}, Lbeg;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 146
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPosition:I

    if-ne v0, v2, :cond_0

    .line 147
    iput v3, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPosition:I

    .line 149
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPosition:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setPosition(I)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setPosition(I)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a(I)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setVisibility(I)V

    goto :goto_1

    .line 159
    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setViewPagerCurrentItem(I)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setVisibility(I)V

    .line 163
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 164
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->k()V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->onIdleViewInit()V

    :cond_3
    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->onMusicAuthCheck()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 400
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 528
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onPause()V

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->j()V

    :cond_0
    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 0

    .line 369
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onVuiEvent(Landroid/view/View;Lbyf;)V

    return-void
.end method

.method public openSearch()V
    .locals 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSearch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 388
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setSearchBarEnable(Z)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLastViewPagerIndex:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a(I)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;->a(I)V

    .line 395
    :goto_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setPosition(I)V

    return-void
.end method

.method protected preCacheLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected preload()V
    .locals 2

    .line 474
    invoke-static {}, Lcom/xiaopeng/musicradio/music/main/view/g;->a()Lcom/xiaopeng/musicradio/music/main/view/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/view/g;->a(I)V

    .line 475
    invoke-static {}, Lcom/xiaopeng/musicradio/music/main/view/g;->a()Lcom/xiaopeng/musicradio/music/main/view/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/g;->c()V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 11

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 419
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 421
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0xe

    const/16 v5, 0x9

    const/16 v6, 0xf

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v10, v10}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLeftVisible(IZ)V

    .line 423
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v2, v10, v10}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setLeftVisible(IZ)V

    .line 424
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v9, v10}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLeftVisible(IZ)V

    .line 425
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v2, v9, v10}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setLeftVisible(IZ)V

    .line 426
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->initSearchImgLayout()V

    .line 427
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {v2, v7}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 432
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 433
    sget v2, Lbez$d;->left_view:I

    invoke-virtual {v0, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 434
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 435
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 436
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 439
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 440
    sget v2, Lbez$d;->item_space:I

    invoke-virtual {v0, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 441
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v10, v10}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLeftVisible(IZ)V

    .line 442
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v2, v10, v10}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setLeftVisible(IZ)V

    .line 443
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v9, v10}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLeftVisible(IZ)V

    .line 444
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    invoke-virtual {v2, v9, v10}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setLeftVisible(IZ)V

    .line 445
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz v2, :cond_2

    .line 446
    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 448
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v2, :cond_3

    .line 449
    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    .line 451
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 452
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 453
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 455
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public selectTab(I)V
    .locals 3

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectTab: tab = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 331
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setPosition(I)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v2

    invoke-virtual {v0, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_2

    .line 333
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setPosition(I)V

    .line 335
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->handleCloseSearch()V

    return-void
.end method

.method protected setMusicMainView()V
    .locals 5

    .line 177
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mMusicInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mMusicInit:Z

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mOffscreenPageLimit"

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->initPagerList(Ljava/util/List;)V

    .line 185
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(Ljava/util/List;)V

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v3, Lbez$c;->ic_music_musicalnste:I

    sget v4, Lbez$g;->music_main_selection_title:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v3, Lbez$c;->ic_music_ranking_01:I

    sget v4, Lbez$g;->music_main_rank_title:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v3, Lbez$c;->ic_music_singer:I

    sget v4, Lbez$g;->music_main_singer_title:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_music_me:I

    sget v3, Lbez$g;->tab_main_mine:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setData(Ljava/util/ArrayList;)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setData(Ljava/util/ArrayList;)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setIndex(I)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->initVuiAttr(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {v0}, Lbjl;->a(I)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setClickChange(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mAuthSelectLayout:Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/widget/AuthSelectLayout;->setClickChange(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;)V

    .line 226
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->reviewOnScreenChange()V

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected setPosition(I)V
    .locals 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPosition: position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iput p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mPosition:I

    .line 300
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setViewPagerCurrentItem(I)V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setIndex(I)V

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 303
    new-instance v0, Lasj$e;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->getAccountType()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lasj$e;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->hasSetAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->onIdleViewInit()V

    :cond_0
    return-void
.end method

.method protected setView()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->setView()V

    const-string v0, "QQMainFragment.setView"

    .line 139
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
