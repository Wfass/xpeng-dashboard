.class public Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsRankLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/rank/rank/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/rank/rank/view/a;",
        "Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/rank/rank/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NRCategoryLayout"


# instance fields
.field private mAdapter:Lbiu;

.field private mContext:Landroid/content/Context;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lbiu;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    return-object p0
.end method

.method private refreshAll()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbiu;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v0}, Lbiu;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "payload"

    invoke-virtual {v0, v2, v1, v3}, Lbiu;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v0}, Lbiu;->getItemCount()I

    move-result v1

    const-string v3, "payload_song_name"

    invoke-virtual {v0, v2, v1, v3}, Lbiu;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupListView()V
    .locals 4

    .line 156
    new-instance v0, Lbiu;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbiu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 158
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    const/16 v1, 0x24

    .line 159
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    const/16 v1, 0x18

    .line 160
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    const/16 v1, 0x64

    .line 161
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 162
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 163
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 204
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;
    .locals 1

    .line 86
    new-instance v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 8

    .line 97
    sget v0, Lbez$d;->netradio_loading_item_category:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 99
    sget v0, Lbez$d;->netradio_rv_category:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    .line 102
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 91
    sget v0, Lbez$f;->music_layout_rank:I

    return v0
.end method

.method public getData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->showLoadingTip(I)V

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v1}, Lbiu;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbiu;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v1, p1, v0}, Lbiu;->a(Ljava/util/List;Z)V

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lbiu;->notifyItemRangeChanged(II)V

    :goto_0
    return-void
.end method

.method public notifySpeechChange()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->refreshAll()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 280
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 271
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 273
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->refreshAll()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 243
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e()V

    return-void
.end method

.method public setAccountType(I)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a(I)V

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    new-instance v1, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)V

    invoke-virtual {v0, v1}, Lbiu;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->setupListView()V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 179
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 173
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 185
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->showLoadingTip(I)V

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 6

    const/4 v0, -0x1

    const-string v1, "payload_playstate"

    if-eqz p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {p1}, Lbiu;->g()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v0, p1, v1}, Lbiu;->notifyItemChanged(ILjava/lang/Object;)V

    .line 217
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v0}, Lbiu;->j()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 220
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 221
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v4, "listsign_rank_music"

    .line 222
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"collectId\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v3, v2, v1}, Lbiu;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {p1}, Lbiu;->g()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->mAdapter:Lbiu;

    invoke-virtual {v0, p1, v1}, Lbiu;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
