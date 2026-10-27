.class public abstract Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;
.source "DataListDetailLayout.java"

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
        "Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout<",
        "TVDB;TUIInterface;TPresenter;>;",
        "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;",
        "Lcom/xiaopeng/musicradio/datalist/i;",
        "Lcom/xiaopeng/musicradio/datalist/j;",
        "Lcom/xiaopeng/musicradio/datalist/m;",
        "Lcom/xiaopeng/musicradio/mine/common/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataListDetailLayout"


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

.field protected mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

.field private mTitleId:I

.field protected mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mEmptyTips:Ljava/lang/String;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleId:I

    .line 90
    new-instance p1, Lcom/xiaopeng/musicradio/utils/ca;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/utils/ca;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    .line 91
    new-instance p1, Lcom/xiaopeng/musicradio/utils/t;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/utils/t;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    .line 198
    new-instance p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mEmptyTips:Ljava/lang/String;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleId:I

    .line 90
    new-instance p1, Lcom/xiaopeng/musicradio/utils/ca;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/utils/ca;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    .line 91
    new-instance p1, Lcom/xiaopeng/musicradio/utils/t;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/utils/t;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    .line 198
    new-instance p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mEmptyTips:Ljava/lang/String;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleId:I

    .line 90
    new-instance p1, Lcom/xiaopeng/musicradio/utils/ca;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/utils/ca;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    .line 91
    new-instance p1, Lcom/xiaopeng/musicradio/utils/t;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/utils/t;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    .line 198
    new-instance p1, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private registerReceiver()V
    .locals 2

    .line 195
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/y;->a()Lcom/xiaopeng/musicradio/utils/y;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/y;->a(Lcom/xiaopeng/musicradio/utils/y$a;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 206
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/y;->a()Lcom/xiaopeng/musicradio/utils/y;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mExitDialogListener:Lcom/xiaopeng/musicradio/utils/y$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/y;->b(Lcom/xiaopeng/musicradio/utils/y$a;)V

    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
.end method

.method public findView()V
    .locals 2

    .line 178
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->f()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    .line 179
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

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

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object v0
.end method

.method public getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-object v0
.end method

.method public getDialogReference()Lcom/xiaopeng/musicradio/utils/t;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    return-object v0
.end method

.method protected getEmptyTips()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mEmptyTips:Ljava/lang/String;

    return-object v0
.end method

.method public getXDialogReference()Lcom/xiaopeng/musicradio/utils/ca;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 2

    .line 110
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_INDEX"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mMenuIndex:I

    .line 111
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public hideTitleBtn()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->b()V

    return-void
.end method

.method protected initVuiAttr()V
    .locals 4

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "activity_list"

    invoke-static {v0, v1, v2, v2, v3}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

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

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

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

    .line 315
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mActivityStarted:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 350
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 351
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    instance-of p1, p1, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->notifyDataSetChanged()V

    .line 354
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->w()V

    :cond_0
    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 2

    const/4 p2, 0x1

    .line 254
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListLoaded:Z

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataListLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->g()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/util/List;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->updateLoadingTips()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->e()V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onDestroy(Landroidx/lifecycle/n;)V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onLoadingCompleted()V
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListLoaded:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->updateLoadingTips()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onPreGetDataList()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    :cond_1
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laqy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onStart(Landroidx/lifecycle/n;)V

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mActivityStarted:Z

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->registerReceiver()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onStop(Landroidx/lifecycle/n;)V

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mActivityStarted:Z

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->unregisterReceiver()V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/utils/ca;->b()V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/utils/t;->b()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 333
    invoke-static {p1, p2}, Laxt;->a(Landroid/view/View;Lbyf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->onVuiEvent(Landroid/view/View;Lbyf;)V

    :cond_0
    return-void
.end method

.method public setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-void
.end method

.method protected setEmptyTips(Ljava/lang/String;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mEmptyTips:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mEmptyTips:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 233
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->setListener()V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$a;)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout$3;-><init>(Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLoadingStatus(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 159
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleId:I

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    if-eqz v0, :cond_1

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setVisibility(I)V

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setView()V
    .locals 4

    .line 212
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFrameLayout;->setView()V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->createAdapter()Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Lati;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$a;->mine_data_list_item_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lati;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->initVuiAttr()V

    :cond_0
    return-void
.end method

.method protected showNoResult()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(IZ)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->interruptSetLogoView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public showTitleBtn()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mTitleBar:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a()V

    :cond_0
    return-void
.end method

.method protected updateLoadingTips()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->showTitleBtn()V

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->interruptSetLogoView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    .line 269
    instance-of v2, v0, Lcom/xiaopeng/musicradio/datalist/p;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/xiaopeng/musicradio/datalist/p;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/p;->b()Ljava/lang/Object;

    move-result-object v0

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-static {v0, v1}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->hideTitleBtn()V

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->showNoResult()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListDetailLayout;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/datalist/d;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    return-void
.end method
