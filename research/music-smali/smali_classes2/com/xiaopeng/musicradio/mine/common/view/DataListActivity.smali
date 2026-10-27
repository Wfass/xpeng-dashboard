.class public abstract Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;
.source "DataListActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;
.implements Lcom/xiaopeng/musicradio/datalist/i;
.implements Lcom/xiaopeng/musicradio/datalist/j;
.implements Lcom/xiaopeng/musicradio/datalist/m;
.implements Lcom/xiaopeng/musicradio/mine/common/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        "UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/datalist/DataListPresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/commonui/base/BindingActivity<",
        "TVDB;TUIInterface;TPresenter;>;",
        "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;",
        "Lcom/xiaopeng/musicradio/datalist/i;",
        "Lcom/xiaopeng/musicradio/datalist/j;",
        "Lcom/xiaopeng/musicradio/datalist/m;",
        "Lcom/xiaopeng/musicradio/mine/common/view/a;"
    }
.end annotation


# instance fields
.field protected mActivityStarted:Z

.field protected mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

.field protected mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

.field protected mDataListLoaded:Z

.field protected mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

.field protected mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
.end method

.method public findView()V
    .locals 2

    .line 121
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->f()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    .line 122
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    return-void
.end method

.method public getAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/xiaopeng/musicradio/datalist/d;",
            ">()TT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object v0
.end method

.method public getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-object v0
.end method

.method protected getEmptyTips()Ljava/lang/String;
    .locals 4

    .line 58
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_template:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideTitleBtn()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->b()V

    return-void
.end method

.method protected initVuiAttr()V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "activity_list"

    invoke-static {v0, v1, v2, v2, v3}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->enableVuiInvisibleFeature(I)V

    :cond_0
    return-void
.end method

.method protected interruptSetLogoView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mActivityStarted:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 278
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 279
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    instance-of p1, p1, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->notifyDataSetChanged()V

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->w()V

    :cond_0
    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 2

    const/4 p2, 0x1

    .line 170
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListLoaded:Z

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataListLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/util/List;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->updateLoadingTips()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->e()V

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onDestroy()V

    return-void
.end method

.method public onLoadingCompleted()V
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListLoaded:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->updateLoadingTips()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onPause()V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onPreGetDataList()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/datalist/l;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getEmptyTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onStart()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mActivityStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mActivityStarted:Z

    .line 100
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onStop()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 261
    invoke-static {p1, p2}, Laxt;->a(Landroid/view/View;Lbyf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->onVuiEvent(Landroid/view/View;Lbyf;)V

    :cond_0
    return-void
.end method

.method public setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->setListener()V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLoadingStatus(I)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    return-void
.end method

.method public setMode(I)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d()V

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->setTitle(I)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView()V
    .locals 4

    .line 128
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingActivity;->setView()V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->createAdapter()Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Lati;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$a;->mine_data_list_item_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lati;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->initVuiAttr()V

    :cond_0
    return-void
.end method

.method protected showNoResult()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IZ)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->interruptSetLogoView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public showTitleBtn()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a()V

    :cond_0
    return-void
.end method

.method protected updateLoadingTips()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->showTitleBtn()V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->interruptSetLogoView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    .line 185
    instance-of v2, v0, Lcom/xiaopeng/musicradio/datalist/p;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/xiaopeng/musicradio/datalist/p;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/p;->b()Ljava/lang/Object;

    move-result-object v0

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(ILjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-static {v0, v1}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->hideTitleBtn()V

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->showNoResult()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/d;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    return-void
.end method
