.class public Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "NewSongMainFragment.java"

# interfaces
.implements Lbgp;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/new_song"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lbgp;",
        "Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;",
        ">;",
        "Lbgp;"
    }
.end annotation


# instance fields
.field private mCurrentView:Landroid/view/View;

.field private mHasTag:Z

.field private mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mSelectIndex:I

.field protected mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

.field protected mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mHasTag:Z

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mSelectIndex:I

    return-void
.end method

.method private BuildCategoryScene()V
    .locals 5

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Lcom/xiaopeng/xui/widget/XViewPager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mCurrentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->setViewPageState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->loadCategoryData()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private inflaterTab(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 179
    sget v1, Lbez$f;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    .line 180
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->a()Landroid/view/View;

    move-result-object v1

    sget v2, Lbez$d;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    .line 181
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 182
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->enableViewVuiMode(Z)V

    return-object v0
.end method

.method private loadCategoryData()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mCurrentView:Landroid/view/View;

    sget v1, Lbez$d;->new_song_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    .line 141
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->isHasData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->loadData()V

    :cond_0
    return-void
.end method

.method private setViewPageState(I)V
    .locals 3

    const/4 v0, 0x0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    if-ne v0, p1, :cond_0

    .line 191
    sget v2, Lbez$d;->new_song_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setSceneId(Ljava/lang/String;)V

    .line 193
    sget-object v2, Lbya;->NORMAL:Lbya;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setRecyclerState(Lbya;)V

    goto :goto_1

    .line 195
    :cond_0
    sget v2, Lbez$d;->new_song_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setSceneId(Ljava/lang/String;)V

    .line 197
    sget-object v2, Lbya;->DISABLED:Lbya;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setRecyclerState(Lbya;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->BuildCategoryScene()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 2

    .line 68
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 69
    sget v0, Lbez$d;->loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 71
    sget v0, Lbez$d;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    .line 72
    sget v0, Lbez$d;->layout_tab:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 63
    sget v0, Lbez$f;->fragment_category_detail:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->showLoadingTip(I)V

    .line 155
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mHasTag:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mHasTag:Z

    move v1, v0

    .line 160
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 161
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lbez$f;->fragment_new_song:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 163
    sget v4, Lbez$d;->new_song_layout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    .line 164
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setId(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v4, v1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setVuiElementId(I)V

    .line 166
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->inflaterTab(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 167
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/widget/i;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViews:Ljava/util/List;

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/widget/i;-><init>(Ljava/util/List;)V

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mCurrentView:Landroid/view/View;

    .line 172
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mSelectIndex:I

    .line 173
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->setViewPageState(I)V

    .line 174
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->loadCategoryData()V

    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 245
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Special_SubPage_NewSong"

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

    .line 255
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initVuiAttr()V
    .locals 0

    return-void
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBuildScene()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mCurrentView:Landroid/view/View;

    sget v1, Lbez$d;->new_song_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->onVuiEvent(Landroid/view/View;Lbyf;)V

    :cond_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lbez$g;->music_main_new_song_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x2

    .line 221
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 232
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 1

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x3

    .line 226
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongMainFragment;->showLoadingTip(I)V

    return-void
.end method
