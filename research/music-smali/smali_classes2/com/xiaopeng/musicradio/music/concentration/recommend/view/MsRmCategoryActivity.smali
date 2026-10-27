.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MsRmCategoryActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/recommend/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/activity/rm_category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/a;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/a;"
    }
.end annotation


# instance fields
.field private mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/d;

.field private mRmCategoryActLayout:Landroid/widget/LinearLayout;

.field private mRmCategoryTab:Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;

.field private mRmCategoryTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

.field private mRmCategoryViewpager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 1

    .line 52
    sget v0, Lbez$d;->rm_category_act_top_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    .line 53
    sget v0, Lbez$d;->rm_category_act_tab:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryTab:Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;

    .line 54
    sget v0, Lbez$d;->rm_category_act_viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryViewpager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    .line 55
    sget v0, Lbez$d;->rm_category_act_loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 56
    sget v0, Lbez$d;->rm_category_act_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryActLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 48
    sget v0, Lbez$f;->music_activity_rm_category:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->showLoadingTip(I)V

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryActLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/d;->a()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    new-instance p1, Lcom/xiaopeng/musicradio/commonui/adapter/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/d;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/d;

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;

    .line 130
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 131
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rm_category_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rm_category_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getType()I

    move-result v3

    const-string v4, "rm_category_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getSort()I

    move-result v3

    const-string v4, "rm_category_sort"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    new-instance v3, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/music/activity/rm_category_detail"

    invoke-direct {v3, v4, v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/d;->a(Ljava/util/List;)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryViewpager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/d;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryTab:Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryViewpager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->setUpWithViewPager(Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;)V

    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 144
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->showRtLayout(Z)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryTopTitle:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    sget v1, Lbez$g;->music_main_selection_rm_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryTab:Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryTab:Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;

    sget v1, Lbez$g;->vui_left:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicRecyclerTabLayout;->setVuiLabel(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryActLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x2

    .line 94
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 107
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryActLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->mRmCategoryActLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x3

    .line 100
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryActivity;->showLoadingTip(I)V

    return-void
.end method
