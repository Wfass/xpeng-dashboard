.class public abstract Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;
.source "DataListFrame.java"

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
        "Lcom/xiaopeng/musicradio/commonui/base/BindingFragment<",
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

.field protected mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

.field private mEmptyTips:Ljava/lang/String;

.field private mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

.field protected mMenuIndex:I

.field protected mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

.field private mTitleId:I

.field protected mView:Landroid/view/View;

.field protected mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;-><init>()V

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mEmptyTips:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleId:I

    .line 67
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mMenuIndex:I

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/utils/ca;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/ca;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    .line 78
    new-instance v0, Lcom/xiaopeng/musicradio/utils/t;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/t;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    .line 219
    new-instance v0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$2;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private registerReceiver()V
    .locals 2

    .line 216
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/y;->a()Lcom/xiaopeng/musicradio/utils/y;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/y;->a(Lcom/xiaopeng/musicradio/utils/y$a;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 227
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/y;->a()Lcom/xiaopeng/musicradio/utils/y;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/y;->b(Lcom/xiaopeng/musicradio/utils/y$a;)V

    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
.end method

.method protected createViewFirst()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->createViewFirst()V

    return-void
.end method

.method public findView()V
    .locals 2

    .line 199
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->f()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    .line 200
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

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

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object v0
.end method

.method public getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-object v0
.end method

.method public getDialogReference()Lcom/xiaopeng/musicradio/utils/t;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    return-object v0
.end method

.method protected getEmptyTips()Ljava/lang/String;
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mEmptyTips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mEmptyTips:Ljava/lang/String;

    return-object v0

    .line 84
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_template:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 422
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 423
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getXDialogReference()Lcom/xiaopeng/musicradio/utils/ca;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 93
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mMenuIndex:I

    .line 94
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public hideTitleBtn()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->b()V

    :cond_0
    return-void
.end method

.method protected initVuiAttr()V
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "activity_list"

    invoke-static {v0, v1, v2, v2, v3}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

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

.method public isDialogShown()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mActivityStarted:Z

    return v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 395
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 396
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    instance-of p1, p1, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->notifyDataSetChanged()V

    .line 399
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->w()V

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->needSetRootView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$b;->bg_app_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mView:Landroid/view/View;

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setRootView(Landroid/view/View;)V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 2

    const/4 p2, 0x1

    .line 278
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListLoaded:Z

    if-eqz p1, :cond_0

    .line 280
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

    .line 281
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 282
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/util/List;)V

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->updateLoadingTips()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->e()V

    .line 117
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->e()V

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onDestroyView()V

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingCompleted()V
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListLoaded:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->updateLoadingTips()V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onPause()V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onPreGetDataList()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/datalist/l;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getEmptyTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onStart()V

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mActivityStarted:Z

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->registerReceiver()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onStop()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mActivityStarted:Z

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->unregisterReceiver()V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->b()V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/t;->b()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 378
    invoke-static {p1, p2}, Laxt;->a(Landroid/view/View;Lbyf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onVuiEvent(Landroid/view/View;Lbyf;)V

    :cond_0
    return-void
.end method

.method public setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-void
.end method

.method protected setEmptyTips(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mEmptyTips:Ljava/lang/String;

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->setListener()V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    .line 256
    new-instance v1, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$3;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$4;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLoadingStatus(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    return-void
.end method

.method public setMode(I)V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(I)V

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->d()V

    .line 351
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    move v2, v3

    goto :goto_0

    .line 354
    :cond_0
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleId:I

    if-lez p1, :cond_1

    .line 355
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(I)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    if-eqz p1, :cond_2

    .line 362
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected setRootView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->needSetRootView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$b;->bg_app_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    new-instance v0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame$1;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 185
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleId:I

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView()V
    .locals 4

    .line 233
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->setView()V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->createAdapter()Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Lati;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$a;->mine_data_list_item_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lati;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->initVuiAttr()V

    :cond_0
    return-void
.end method

.method protected showNoResult()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IZ)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->interruptSetLogoView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public showTitleBtn()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mTitleBar:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a()V

    :cond_0
    return-void
.end method

.method protected updateLoadingTips()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->showTitleBtn()V

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->interruptSetLogoView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    instance-of v2, v0, Lcom/xiaopeng/musicradio/datalist/p;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/xiaopeng/musicradio/datalist/p;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/p;->b()Ljava/lang/Object;

    move-result-object v0

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-static {v0, v1}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->hideTitleBtn()V

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->showNoResult()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/d;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    return-void
.end method
