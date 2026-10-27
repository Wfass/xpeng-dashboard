.class public abstract Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "BaseSubListFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/common/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface::",
        "Lcom/xiaopeng/musicradio/program/common/view/a;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "TUIInterface;TPresenter;>;",
        "Lcom/xiaopeng/musicradio/program/common/view/a;"
    }
.end annotation


# instance fields
.field protected mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field protected mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

.field protected mTitle:Ljava/lang/String;

.field protected mTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected findView()V
    .locals 1

    .line 56
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rv_reading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    .line 57
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->dialog_top_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    return-void
.end method

.method protected abstract getAdapter()Lbll;
.end method

.method protected getArgumentParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "category_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getContentViewId()I
    .locals 1

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->fragment_common_list:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 203
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method protected getSpanCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected abstract loadNextPageData()V
.end method

.method public notifyUpdatePlayState(J)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lblw;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lblw;

    invoke-virtual {v0, p1, p2}, Lblw;->a(J)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected setView()V
    .locals 8

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$b;->dp_50:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x423c0000    # 47.0f

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 70
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 71
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 72
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 75
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setGridLayoutManager(Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setOnLoadMoreListener(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;)V

    const-string v0, "category_name"

    .line 111
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getArgumentParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mTitle:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment$2;-><init>(Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method public showLoading(ZII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-ne p2, v1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipViewClickable(Z)V

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    goto :goto_1

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    if-lt p2, v1, :cond_1

    if-lt p3, v1, :cond_1

    if-ge p2, p3, :cond_1

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLoadMoreEnable(Z)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLoadMoreEnable(Z)V

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c()V

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object p1

    invoke-virtual {p1}, Lbll;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object p1

    invoke-virtual {p1}, Lbll;->g()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showLoadingFailed(Ljava/lang/String;I)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipViewClickable(Z)V

    if-ne p2, v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object p1

    invoke-virtual {p1}, Lbll;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object p1

    invoke-virtual {p1}, Lbll;->g()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showNoData()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipViewClickable(Z)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->mListRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setTipsState(I)V

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object v0

    invoke-virtual {v0}, Lbll;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/BaseSubListFragment;->getAdapter()Lbll;

    move-result-object v0

    invoke-virtual {v0}, Lbll;->g()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
