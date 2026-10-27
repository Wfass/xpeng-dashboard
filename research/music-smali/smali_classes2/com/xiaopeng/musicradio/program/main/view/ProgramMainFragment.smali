.class public Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "ProgramMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/main/view/a;
.implements Lcom/xiaopeng/musicradio/program/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/fragment/main"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/program/main/view/a;",
        "Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/main/view/a;",
        "Lcom/xiaopeng/musicradio/program/main/view/a;"
    }
.end annotation


# static fields
.field private static final SEARCH_VIEWPAGER_POS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ProgramMainFragment"


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

.field protected mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

.field private mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

.field private mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->handleCloseSearch()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->setViewPagerCurrentItem(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    return-object p0
.end method

.method private handleCloseSearch()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, ""

    .line 166
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Ljava/lang/String;Z)V

    .line 167
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbnz;->a(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lbnw$e;

    invoke-direct {v0}, Lbnw$e;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setViewPagerCurrentItem(I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 160
    iput p1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mLastViewPagerIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method public backToHistory()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 175
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Ljava/lang/String;Z)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i()V

    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->j()V

    return-void
.end method

.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 297
    invoke-static {}, Lcom/xiaopeng/musicradio/program/main/view/b;->a()Lcom/xiaopeng/musicradio/program/main/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/main/view/b;->r()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;
    .locals 1

    .line 224
    new-instance v0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewAgain()V
    .locals 4

    .line 182
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->createViewAgain()V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(Landroidx/fragment/app/FragmentManager;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->a(IZZ)V

    return-void
.end method

.method protected findView()V
    .locals 1

    .line 73
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tab_program_main:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->program_viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->voice_search_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    .line 76
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->left_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mLeftView:Landroid/view/View;

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->item_space:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->left_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->right_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 80
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->search_img_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

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

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->fragment_program_main:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bs:Ljava/lang/String;

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

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 256
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroyView()V

    .line 292
    invoke-static {}, Lcom/xiaopeng/musicradio/program/main/view/b;->a()Lcom/xiaopeng/musicradio/program/main/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/main/view/b;->c()V

    return-void
.end method

.method public onIdleViewInit()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->enableAdapter()V

    .line 320
    :cond_0
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i()V

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->openSearch()V

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 243
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 244
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PROGRAM"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 237
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 238
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_PROGRAM"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public openSearch()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setSearchBarEnable(Z)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mLastViewPagerIndex:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->a(I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/program/main/presenter/ProgramMainWithSearchPresenter;->a(I)V

    .line 141
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->setViewPagerCurrentItem(I)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

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

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reviewOnScreenChange: 13? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 263
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 264
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

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

    .line 265
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v9, v9}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLeftVisible(IZ)V

    .line 266
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 269
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 270
    sget v2, Lbez$d;->left_view:I

    invoke-virtual {v0, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 272
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 273
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 276
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 277
    sget v2, Lbez$d;->item_space:I

    invoke-virtual {v0, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 278
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v9, v9}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLeftVisible(IZ)V

    .line 279
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    .line 281
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 282
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 283
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 285
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public selectTab(I)V
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setIndex(I)V

    .line 231
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->setViewPagerCurrentItem(I)V

    .line 232
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->handleCloseSearch()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 6

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setView: ======= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->f()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mOffscreenPageLimit"

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->program_choice:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/program/fragment/choice"

    invoke-direct {v2, v4, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->program_category:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/program/fragment/category"

    invoke-direct {v2, v4, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->tab_main_mine:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/mine/program_mine"

    invoke-direct {v2, v4, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->search_top_hint:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/search/activity/main"

    invoke-direct {v2, v4, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_musicalnste:I

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->program_choice:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_sort:I

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->program_category:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mDatas:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_me:I

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->tab_main_mine:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setData(Ljava/util/ArrayList;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->initVuiAttr(Ljava/lang/String;)V

    .line 104
    invoke-static {v1}, Lbmx;->a(I)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setClickChange(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchTabBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    new-instance v1, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->mSearchImgLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/main/view/ProgramMainFragment;->reviewOnScreenChange()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
