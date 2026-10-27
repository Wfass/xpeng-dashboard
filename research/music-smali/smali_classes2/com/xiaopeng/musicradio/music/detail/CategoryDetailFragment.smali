.class public Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "CategoryDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/recommend/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/category_detail"
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


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryDetailFragment"


# instance fields
.field private mAdapter:Lbgn;

.field private mCurrentView:Landroid/view/View;

.field private mHasTag:Z

.field private mIndex:I

.field private mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

.field protected mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field protected mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

.field private mTabStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/tabs/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field protected mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabs:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mHasTag:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabStrings:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lbgn;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lcom/xiaopeng/xui/widget/XViewPager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->setViewPageState(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mCurrentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->loadCategoryData()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabStrings:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->inflaterTab(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabs:Ljava/util/List;

    return-object p0
.end method

.method private createVuiScene(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 346
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setSceneId(Ljava/lang/String;)V

    .line 352
    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setVuiElementId(I)V

    .line 353
    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getTabText(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbyb;->LEVEL1:Lbyb;

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V

    .line 354
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->k()V

    .line 355
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->i()V

    .line 356
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->onBuildScene()V

    :cond_1
    return-void
.end method

.method private destroyVuiScene(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 335
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->j()V

    .line 340
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->b(Z)V

    :cond_1
    return-void
.end method

.method private enterTitleScene()V
    .locals 5

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mMenuIndex:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mMenuIndex:I

    .line 106
    invoke-static {v3}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mMenuIndex:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/vui/c;->g(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 105
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setSubSceneList(Ljava/util/List;)V

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setSceneId(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->c()V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->a()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->onBuildScene()V

    return-void
.end method

.method private enterVuiScene(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 372
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->i()V

    :cond_1
    return-void
.end method

.method private exitTitleScene()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->b()V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->a(Z)V

    return-void
.end method

.method private exitVuiScene(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 362
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->j()V

    :cond_1
    return-void
.end method

.method private getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    sget v0, Lbez$d;->rm_category_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getTabText(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private inflaterCategoryLayout(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;)Landroid/view/View;
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbez$f;->music_fragment_rm_category:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 262
    sget v1, Lbez$d;->rm_category_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    .line 263
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmId(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->setmName(Ljava/lang/String;)V

    return-object v0
.end method

.method private inflaterTab(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 270
    sget v1, Lbez$f;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    .line 271
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->a()Landroid/view/View;

    move-result-object v1

    sget v2, Lbez$d;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    .line 272
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

    .line 273
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->enableViewVuiMode(Z)V

    return-object v0
.end method

.method private loadCategoryData()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    sget v1, Lbez$d;->rm_category_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->h()V

    :cond_0
    return-void
.end method

.method private setViewPageState(I)V
    .locals 3

    .line 175
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getTabText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getTabText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbjl;->c(ILjava/lang/String;)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 179
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    if-eq v0, p1, :cond_2

    if-ltz v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    invoke-virtual {v1, v0}, Lbgn;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 182
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->destroyVuiScene(Landroid/view/View;Z)V

    .line 184
    :cond_1
    iput p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    .line 185
    iget p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    if-ltz p1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    invoke-virtual {v0, p1}, Lbgn;->d(I)Landroid/view/View;

    move-result-object p1

    .line 187
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->createVuiScene(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;
    .locals 1

    .line 75
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 2

    .line 85
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 86
    sget v0, Lbez$d;->loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setAutoClickLoadingEnable(Z)V

    .line 88
    sget v0, Lbez$d;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    .line 89
    sget v0, Lbez$d;->layout_tab:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

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

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 80
    sget v0, Lbez$f;->fragment_category_detail:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->exitTitleScene()V

    .line 225
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mHasTag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mHasTag:Z

    .line 229
    new-instance v0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$4;-><init>(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 254
    new-instance v0, Lbgn;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0, v1, p1, v2}, Lbgn;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbgn;->d(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mCurrentView:Landroid/view/View;

    .line 257
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->loadCategoryData()V

    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 219
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Special_SubPage_SongList"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 311
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initVuiAttr()V
    .locals 0

    return-void
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBuildScene()V
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->isMainScene()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 306
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 404
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroyView()V

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    if-eqz v0, :cond_0

    .line 406
    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 407
    invoke-virtual {v0, v1}, Lbgn;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 408
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->destroyVuiScene(Landroid/view/View;Z)V

    .line 411
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/music/detail/a;->a()Lcom/xiaopeng/musicradio/music/detail/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/detail/a;->b()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 393
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 394
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    invoke-virtual {v1, v0}, Lbgn;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->exitVuiScene(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 382
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 383
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mAdapter:Lbgn;

    invoke-virtual {v1, v0}, Lbgn;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->enterVuiScene(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 3

    .line 94
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lbez$g;->music_main_selection_rm_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    sget-object v1, Lbxx;->SCROLLBYX:Lbxx;

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setVuiAction(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->enterTitleScene()V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 285
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->setVisibility(I)V

    const/4 p1, 0x2

    .line 286
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setClickable(Z)V

    goto :goto_1

    .line 298
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setVisibility(I)V

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->setVisibility(I)V

    const/4 p1, 0x3

    .line 292
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->showLoadingTip(I)V

    return-void
.end method
