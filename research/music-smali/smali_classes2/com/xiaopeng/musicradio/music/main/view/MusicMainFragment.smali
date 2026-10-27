.class public Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MusicMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/main/view/a;
.implements Lcom/xiaopeng/musicradio/music/main/view/d;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/main"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/main/view/d;",
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/main/view/a;",
        "Lcom/xiaopeng/musicradio/music/main/view/d;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicMainFragment"


# instance fields
.field protected mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

.field protected mLeftView:Landroid/view/View;

.field protected mMusicInit:Z

.field protected mMusicMainLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field protected mMyMusicMaskLayout:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

.field protected mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

.field protected mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mSceneView:Landroid/view/View;

.field protected mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMusicInit:Z

    return-void
.end method

.method private setAuthLayoutVisibility(ILandroid/view/View;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 130
    :cond_0
    instance-of v0, p2, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    if-eqz v0, :cond_1

    .line 131
    check-cast p2, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->setVuiVisible(I)V

    goto :goto_0

    .line 132
    :cond_1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 133
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->setAuthLayoutVisibility(ILandroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setMusicMainView()V
    .locals 4

    .line 138
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMusicInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMusicInit:Z

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mOffscreenPageLimit"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v2, Lbez$g;->music_main_selection_title:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/music/fragment/concentration"

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v2, Lbez$g;->music_main_rank_title:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/music/fragment/rank"

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v2, Lbez$g;->music_main_singer_title:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/music/fragment/singer"

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_tab_selected:I

    sget v3, Lbez$g;->music_main_selection_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_tab_ranking:I

    sget v3, Lbez$g;->music_main_rank_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lbez$c;->ic_tab_singer:I

    sget v3, Lbez$g;->music_main_singer_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setData(Ljava/util/ArrayList;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setClickChange(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;)V

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->onBuildScene()V

    return-void
.end method


# virtual methods
.method public backToHistory()V
    .locals 0

    return-void
.end method

.method public clearFocus()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;
    .locals 1

    .line 80
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainWithSearchPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewAgain()V
    .locals 4

    .line 167
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->createViewAgain()V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(Landroidx/fragment/app/FragmentManager;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->a(IZZ)V

    :cond_0
    return-void
.end method

.method protected findView()V
    .locals 0

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 60
    sget v0, Lbez$f;->music_fragment_main:I

    return v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MusicMainFragment"

    const-string v0, "onCreate: ================"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "MusicMainFragment"

    const-string v1, "onCreateView: ========"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroy()V

    const-string v0, "MusicMainFragment"

    const-string v1, "onDestroy: =========="

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onIdleViewInit()V
    .locals 0

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 224
    invoke-static {p1, p2, p2, p2, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;IIIZ)V

    :cond_0
    return p2
.end method

.method public onMusicAuthCheck()V
    .locals 3

    .line 85
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 86
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMyMusicMaskLayout:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMyMusicMaskLayout:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->setAuthLayoutVisibility(ILandroid/view/View;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMusicMainLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-nez v0, :cond_2

    .line 92
    sget v0, Lbez$d;->stub_music_main:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_1
    sget v0, Lbez$d;->music_main_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMusicMainLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 97
    sget v0, Lbez$d;->left_select_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    .line 98
    sget v0, Lbez$d;->music_viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mSceneView:Landroid/view/View;

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMusicMainLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->setMusicMainView()V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMusicMainLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMyMusicMaskLayout:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    if-nez v0, :cond_7

    .line 110
    sget v0, Lbez$d;->stub_auth_mask:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_6

    .line 112
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 114
    :cond_6
    sget v0, Lbez$d;->auth_mask:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMyMusicMaskLayout:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMyMusicMaskLayout:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    if-eqz v0, :cond_8

    .line 117
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mMyMusicMaskLayout:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->setAuthLayoutVisibility(ILandroid/view/View;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 0

    return-void
.end method

.method public onNeteaseAuthCheck()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 201
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    const-string v0, "MusicMainFragment"

    const-string v1, "onPause: ========"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 195
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    const-string v0, "MusicMainFragment"

    const-string v1, "onResume: ======"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 217
    invoke-static {p1, p2, p2, p2, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;IIIZ)V

    return-void
.end method

.method public openSearch()V
    .locals 0

    return-void
.end method

.method public selectTab(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mLeftSelectLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setIndex(I)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    const-string v0, "MusicMainFragment"

    const-string v1, "setView: ==========="

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
