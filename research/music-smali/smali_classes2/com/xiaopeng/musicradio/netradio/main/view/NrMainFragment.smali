.class public Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "NrMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/main/view/c;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/netradio/fragment/main"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/netradio/main/view/c;",
        "Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/main/view/c;"
    }
.end annotation


# static fields
.field private static final SEARCH_VIEWPAGER_POS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NrMainFragment"


# instance fields
.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mLastViewPagerIndex:I

.field private mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mLeftView:Landroid/view/View;

.field private mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

.field protected mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mSceneView:Landroid/view/View;

.field protected mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

.field private mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

.field private mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->initTab()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->handleCloseSearch()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->setViewPagerCurrentItem(I)V

    return-void
.end method

.method private delayInitTab()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)V

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleCloseSearch()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, ""

    .line 192
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Ljava/lang/String;Z)V

    .line 193
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbnz;->a(Ljava/lang/String;)V

    .line 194
    new-instance v0, Lbnw$e;

    invoke-direct {v0}, Lbnw$e;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initTab()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getData()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbuc$c;->ic_music_musicalnste:I

    sget v3, Lbuc$g;->netradio_selection:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v3, Lbuc$c;->ic_music_sort:I

    sget v4, Lbuc$g;->netradio_category:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbuc$c;->ic_music_me:I

    sget v3, Lbuc$g;->tab_main_mine:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setData(Ljava/util/ArrayList;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->initVuiAttr(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$4;-><init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setClickChange(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;)V

    return-void
.end method

.method private setViewPagerCurrentItem(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 173
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mLastViewPagerIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public backToHistory()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 201
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Ljava/lang/String;Z)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i()V

    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->j()V

    return-void
.end method

.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 342
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/main/view/d;->a()Lcom/xiaopeng/musicradio/netradio/main/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/d;->r()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;
    .locals 1

    .line 213
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewAgain()V
    .locals 4

    .line 179
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->createViewAgain()V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(Landroidx/fragment/app/FragmentManager;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->a(IZZ)V

    return-void
.end method

.method protected findView()V
    .locals 2

    const-string v0, "NrMainFragment"

    const-string v1, "findView: 1 == "

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget v1, Lbuc$d;->search_img_layout:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 77
    sget v1, Lbuc$d;->netradio_left_tab_layout:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    .line 78
    sget v1, Lbuc$d;->netradio_viewpager:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    .line 79
    sget v1, Lbuc$d;->voice_search_layout:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    .line 80
    sget v1, Lbuc$d;->left_view:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mLeftView:Landroid/view/View;

    .line 81
    sget v1, Lbuc$d;->item_space:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 82
    sget v1, Lbuc$d;->left_content_layout:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 83
    sget v1, Lbuc$d;->right_content_layout:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 84
    sget v1, Lbuc$d;->configuration_changed_view:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSceneView:Landroid/view/View;

    const-string v1, "findView: 2 ===="

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 69
    sget v0, Lbuc$f;->netradio_fragment_main:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBuildScene()V
    .locals 5

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 296
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 336
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroyView()V

    .line 337
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/main/view/d;->a()Lcom/xiaopeng/musicradio/netradio/main/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/d;->c()V

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return p2

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i()V

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->openSearch()V

    :cond_1
    if-eqz p1, :cond_2

    .line 270
    invoke-static {p1, p2, p2, p2, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;IIIZ)V

    :cond_2
    return p2
.end method

.method public onPause()V
    .locals 2

    .line 284
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 285
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_NETRADIO"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 277
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    const-string v0, "NrMainFragment"

    const-string v1, "onResume: =========="

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_NETRADIO"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 256
    invoke-static {p1, p2, p2, p2, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;IIIZ)V

    return-void
.end method

.method public openSearch()V
    .locals 3

    .line 159
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->initTab()V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setSearchBarEnable(Z)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;

    iget v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mLastViewPagerIndex:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->a(I)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrMainWithSearchPresenter;->a(I)V

    .line 166
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->setViewPagerCurrentItem(I)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setIndex(I)V

    return-void
.end method

.method protected preCacheLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected reviewOnScreenChange()V
    .locals 10

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 302
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x9

    const/16 v5, 0xe

    const/16 v6, 0xf

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v9, v9}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLeftVisible(IZ)V

    .line 306
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 309
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 310
    sget v2, Lbuc$d;->left_view:I

    invoke-virtual {v0, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 311
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 312
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 313
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 316
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 317
    sget v2, Lbuc$d;->item_space:I

    invoke-virtual {v0, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 318
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v9, v9}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLeftVisible(IZ)V

    .line 319
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 320
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    .line 321
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 322
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 323
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public selectTab(I)V
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->initTab()V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setIndex(I)V

    .line 246
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->setViewPagerCurrentItem(I)V

    .line 247
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->handleCloseSearch()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 6

    .line 91
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "densityDpi: 1==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->g()I

    move-result v0

    const-string v2, "SELECT_MENU_SCENE"

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mOffscreenPageLimit"

    invoke-static {v0, v4, v3}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v3, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v4, Lbuc$g;->netradio_selection:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/netradio/fragment/concentration"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v3, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v4, Lbuc$g;->netradio_category:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/netradio/fragment/category"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v4, Lbuc$g;->tab_main_mine:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/mine/radio_mine"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v4, Lbuc$g;->search_top_hint:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/search/activity/main"

    invoke-direct {v3, v5, v4}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    .line 103
    invoke-static {v2}, Lbkg;->a(I)V

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->delayInitTab()V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    new-instance v2, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v2, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrMainFragment;->reviewOnScreenChange()V

    const-string v0, "setView: 2====="

    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
