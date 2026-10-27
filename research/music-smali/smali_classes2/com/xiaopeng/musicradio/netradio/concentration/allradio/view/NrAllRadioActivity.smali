.class public Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "NrAllRadioActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/xpnetradio/activity/allradio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NrAllRadioActivity"


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

.field private mAllradioTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

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

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mViews:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabs:Ljava/util/List;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mHasTag:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabStrings:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Lcom/xiaopeng/xui/widget/XViewPager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mCurrentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->setViewPageState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->loadRegionData()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabStrings:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->inflaterTab(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;Landroid/view/View;)Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    move-result-object p0

    return-object p0
.end method

.method private createVuiScene(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 348
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setSceneId(Ljava/lang/String;)V

    .line 354
    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setVuiElementId(I)V

    .line 355
    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getTabText(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbyb;->LEVEL1:Lbyb;

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V

    .line 356
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->k()V

    .line 357
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->i()V

    .line 358
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->onBuildScene()V

    :cond_1
    return-void
.end method

.method private destroyVuiScene(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 337
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->j()V

    .line 342
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->b(Z)V

    :cond_1
    return-void
.end method

.method private enterTitleScene()V
    .locals 5

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mMenuIndex:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mMenuIndex:I

    .line 323
    invoke-static {v3}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mMenuIndex:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/vui/c;->g(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 322
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setSubSceneList(Ljava/util/List;)V

    .line 324
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setSceneId(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->c()V

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->a()V

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->onBuildScene()V

    return-void
.end method

.method private enterVuiScene(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 374
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->i()V

    :cond_1
    return-void
.end method

.method private exitTitleScene()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->b()V

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->a(Z)V

    return-void
.end method

.method private exitVuiScene(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 364
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->j()V

    :cond_1
    return-void
.end method

.method private getCategoryDetailLayout(Landroid/view/View;)Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;
    .locals 1

    if-eqz p1, :cond_0

    .line 251
    sget v0, Lbuc$d;->layout_allradio_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getTabText(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private inflaterTab(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->newTab()Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v0

    .line 288
    sget v1, Lbuc$f;->x_tab_item_v5:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    .line 289
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->a()Landroid/view/View;

    move-result-object v1

    sget v2, Lbuc$d;->x_tab_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    .line 290
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 291
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->enableViewVuiMode(Z)V

    return-object v0
.end method

.method private loadRegionData()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    sget v1, Lbuc$d;->layout_allradio_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h()V

    :cond_1
    return-void
.end method

.method private setViewPageState(I)V
    .locals 2

    .line 257
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getTabText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getTabText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbkg;->b(Ljava/lang/String;)V

    .line 260
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    if-eq v0, p1, :cond_2

    if-ltz v0, :cond_1

    .line 262
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 263
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->destroyVuiScene(Landroid/view/View;Z)V

    .line 265
    :cond_1
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    .line 266
    iget p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    if-ltz p1, :cond_2

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->d(I)Landroid/view/View;

    move-result-object p1

    .line 268
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->createVuiScene(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 2

    .line 102
    sget v0, Lbuc$d;->allradio_act_top_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAllradioTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 103
    sget v0, Lbuc$d;->layout_tab_allradio:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 104
    sget v0, Lbuc$d;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    .line 105
    sget v0, Lbuc$d;->loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setAutoClickLoadingEnable(Z)V

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

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAllradioTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 98
    sget v0, Lbuc$f;->fragment_allradio_detail_main:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->exitTitleScene()V

    .line 203
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mHasTag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mHasTag:Z

    .line 207
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 231
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    new-instance v3, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$6;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$6;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lcom/xiaopeng/musicradio/widget/a$a;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->d(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mCurrentView:Landroid/view/View;

    .line 240
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->loadRegionData()V

    return-void
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 298
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ah(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_NetRadio_SubPage_All"

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBuildScene()V
    .locals 4

    .line 303
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getBuildViewList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->isMainScene()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 283
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 409
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroyView()V

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    if-eqz v0, :cond_0

    .line 411
    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    if-ltz v1, :cond_0

    .line 412
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->destroyVuiScene(Landroid/view/View;Z)V

    .line 416
    :cond_0
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    invoke-virtual {v0}, Lbjw;->b()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 398
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 399
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    if-ltz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->exitVuiScene(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 384
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 385
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mIndex:I

    if-ltz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAdapter:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->enterVuiScene(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$2;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$3;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$4;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 3

    .line 111
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAllradioTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lbuc$g;->netradio_allradio_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAllradioTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mAllradioTopTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->enterTitleScene()V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->setVisibility(I)V

    const/4 p1, 0x2

    .line 191
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setState(I)V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->setClickable(Z)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setVisibility(I)V

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->setVisibility(I)V

    const/4 p1, 0x3

    .line 197
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->showLoadingTip(I)V

    return-void
.end method
