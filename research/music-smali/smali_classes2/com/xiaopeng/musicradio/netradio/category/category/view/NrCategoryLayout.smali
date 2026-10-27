.class public Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "NrCategoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/category/category/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/netradio/category/category/view/b;",
        "Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/category/category/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NRCategoryLayout"


# instance fields
.field private mAdapter:Lbjv;

.field private mContext:Landroid/content/Context;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)Lbjv;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    return-object p0
.end method

.method private refreshAll()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$3;-><init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbjv;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lbjv;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbjv;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupListView()V
    .locals 6

    .line 134
    new-instance v0, Lbjv;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbjv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 136
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {v0, v4, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v1, v5}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    const/16 v1, 0x64

    .line 139
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 140
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {v0, v1}, Lbxo;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 213
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->createPresenter()Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;
    .locals 1

    .line 80
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 91
    sget v0, Lbuc$d;->netradio_loading_item_category:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 93
    sget v0, Lbuc$d;->netradio_rv_category:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiCanControlScroll(Z)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->aj(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 85
    sget v0, Lbuc$f;->netradio_layout_category:I

    return v0
.end method

.method public getData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->showLoadingTip(I)V

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    invoke-virtual {v1}, Lbjv;->getItemCount()I

    move-result v1

    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v0, "NRCategoryLayout"

    const-string v1, "NrCategoryLayout getData notify data changed"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbjv;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    invoke-virtual {v1, p1, v0}, Lbjv;->a(Ljava/util/List;Z)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lbjv;->notifyItemRangeChanged(II)V

    .line 180
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public notifySpeechChange()V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->refreshAll()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 221
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 223
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    invoke-virtual {p1}, Lbjv;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 234
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$1;-><init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mAdapter:Lbjv;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)V

    invoke-virtual {v0, v1}, Lbjv;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->setupListView()V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 159
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 153
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 165
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->showLoadingTip(I)V

    return-void
.end method
