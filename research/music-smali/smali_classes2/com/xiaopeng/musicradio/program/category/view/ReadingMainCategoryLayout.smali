.class public Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;
.source "ReadingMainCategoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/category/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/program/category/view/c;",
        "Lcom/xiaopeng/musicradio/program/category/presenter/a;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/category/view/c;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadingCategoryMVPLayout"


# instance fields
.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mReadingCategoryAdapter:Lblx;

.field private mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;)Lblx;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    return-object p0
.end method

.method private statCategoryClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 165
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    .line 166
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v0}, Lbrw;->g(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/program/category/presenter/a;
    .locals 1

    .line 76
    new-instance v0, Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->createPresenter()Lcom/xiaopeng/musicradio/program/category/presenter/a;

    move-result-object v0

    return-object v0
.end method

.method protected findView()V
    .locals 6

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rv_reading_category:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 82
    new-instance v0, Lblx;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lblx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->loading_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reading_main_category_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiCanControlScroll(Z)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v3

    invoke-virtual {v3}, Lbdt;->m()I

    move-result v3

    const-string v4, "SELECT_MENU_SCENE"

    invoke-static {v4, v3}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/xiaopeng/musicradio/vui/c;->ao(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {v0, v1}, Lbxo;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 179
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_reading_category:I

    return v0
.end method

.method public isDataEmpty()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    invoke-virtual {v0}, Lblx;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public loadData()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->f()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->onAttachedToWindow()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onNetworkValid()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    invoke-virtual {v0}, Lblx;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->f()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lblx;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    new-instance v1, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$1;-><init>(Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;)V

    invoke-virtual {v0, v1}, Lblx;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method public setLoadingState(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout$2;-><init>(Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method protected setView()V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 96
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {v0, v4, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v1, v5}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    const/16 v1, 0x64

    .line 99
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 101
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public showCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    invoke-virtual {p1, v0}, Lblx;->a(Ljava/util/List;)V

    return-void
.end method

.method public updateList()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/view/ReadingMainCategoryLayout;->mReadingCategoryAdapter:Lblx;

    invoke-virtual {v0}, Lblx;->notifyDataSetChanged()V

    return-void
.end method
