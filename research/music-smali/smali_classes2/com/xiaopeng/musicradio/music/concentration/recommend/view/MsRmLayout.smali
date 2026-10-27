.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsRmLayout.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/common/f;
.implements Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;",
        ">;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/common/f;",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;"
    }
.end annotation


# instance fields
.field private mAdapter:Lbgb;

.field private mChange:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mRecommendMusictips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->showLoadingTip(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)Lbgb;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    return-object p0
.end method

.method private refreshAll()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbgb;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lbgb;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbgb;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 291
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;
    .locals 1

    .line 80
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 10

    const-string v0, ""

    .line 85
    sget v1, Lbez$d;->recommend_music_tips:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecommendMusictips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 86
    sget v1, Lbez$d;->ms_selection_rm_rv:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 87
    sget v1, Lbez$d;->ms_selection_rm_loading_item:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->showLoadingTip(I)V

    .line 91
    sget v3, Lbez$d;->change:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mChange:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 92
    sget v3, Lbez$d;->title_layout:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 94
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "defaultExecElementId"

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v6}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    sget v4, Lbez$d;->rm_root_layout:I

    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    new-array v1, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 101
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 179
    sget v0, Lbez$f;->ms_layout_selection_rm:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->showLoadingTip(I)V

    .line 215
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mChange:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecommendMusictips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {v1}, Lbgb;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbgb;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {v1, p1, v0}, Lbgb;->a(Ljava/util/List;Z)V

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lbgb;->notifyItemRangeChanged(II)V

    .line 225
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    .line 227
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->showLoadingTip(I)V

    :goto_1
    return-void
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {v0}, Lbgb;->notifyDataSetChanged()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reload()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mChange:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)V

    invoke-virtual {v0, v1}, Lbgb;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mTitleLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 6

    .line 106
    new-instance v0, Lbgb;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbgb;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x2d

    invoke-direct {v0, v1, v4, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    const/16 v4, 0x32

    .line 110
    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 111
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v4, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/16 v5, 0x23

    invoke-direct {v4, v3, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 113
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mChange:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 191
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 198
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->showLoadingTip(I)V

    return-void
.end method

.method public updateRmPlayState(Z)V
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {p1}, Lbgb;->j()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {v0, p1}, Lbgb;->notifyItemChanged(I)V

    .line 239
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    const-class v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz p1, :cond_3

    .line 243
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {v1}, Lbgb;->k()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 245
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 246
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listsign_recommend_music"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {v3, v2}, Lbgb;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {p1}, Lbgb;->j()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {v1, p1}, Lbgb;->notifyItemChanged(I)V

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->mAdapter:Lbgb;

    invoke-virtual {p1, v0}, Lbgb;->d(I)V

    :cond_3
    return-void
.end method
