.class public Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "UsbBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "TUIInterface;TPresenter;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbBaseFragment"


# instance fields
.field protected mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

.field protected mFirstVisibleItemPosition:I

.field protected mLastVisibleItemPosition:I

.field protected mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field protected mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field protected mRvState:I

.field protected mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRvState:I

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 56
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 57
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 58
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 59
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method public getAdapter()Lcom/xiaopeng/musicradio/commonui/adapter/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_base_fragment:I

    return v0
.end method

.method public getManager()Lbnh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbnh<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpacing()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getTitle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyItemChanged(I)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 226
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene()V

    return-void
.end method

.method public request()V
    .locals 3

    .line 177
    new-instance v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getAdapter()Lcom/xiaopeng/musicradio/commonui/adapter/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getSpanCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getSpacing()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 68
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 69
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 70
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 72
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getSpanCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->copyright_restrict_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget v1, Lbez$g;->vui_right:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiLabel(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->reviewOnScreenChange()V

    return-void
.end method

.method public showData()V
    .locals 2

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showLoadingTip(I)V

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->request()V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showLoadingTip(I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    return-void
.end method

.method public showNoDataView()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->a(Ljava/util/List;)V

    const/4 v0, 0x3

    .line 115
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showLoadingTip(I)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    return-void
.end method

.method public updateLogo()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mFirstVisibleItemPosition:I

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLastVisibleItemPosition:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePlayState()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$2;-><init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
