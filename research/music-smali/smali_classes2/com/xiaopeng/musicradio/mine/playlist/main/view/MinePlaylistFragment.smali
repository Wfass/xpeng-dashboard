.class public Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;
.super Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;
.source "MinePlaylistFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/i;
.implements Lcom/xiaopeng/musicradio/datalist/j;
.implements Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/fragment/playlist"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BindingFragment<",
        "Lauu;",
        "Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;",
        "Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/datalist/i;",
        "Lcom/xiaopeng/musicradio/datalist/j;",
        "Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MinePlaylistFragment"


# instance fields
.field private mAdapter:Laxk;

.field private mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

.field private mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

.field private mLastStatus:I

.field protected mMenuIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mLastStatus:I

    .line 64
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mMenuIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->showImportCustomDialog()V

    return-void
.end method

.method private showImportCustomDialog()V
    .locals 2

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-static {}, Lats;->a()V

    .line 302
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauu;

    iget-object v1, v1, Lauu;->c:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/u;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method private updateTitleIfLogin()V
    .locals 2

    .line 168
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 172
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->f()Z

    move-result v0

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->e()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;
    .locals 3

    .line 219
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected createViewAgain()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->createViewAgain()V

    .line 88
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 92
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->f()Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->e()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 97
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->updateLoadingStatus(I)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->scrollToPosition(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected createViewFirst()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->createViewFirst()V

    return-void
.end method

.method protected findView()V
    .locals 2

    .line 112
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 107
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_mine_playlist:I

    return v0
.end method

.method public getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 279
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->z(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-static {}, Laxt;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 68
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mMenuIndex:I

    .line 69
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isShowing()Z
    .locals 1

    .line 258
    invoke-static {}, Lawv;->a()Lawv;

    move-result-object v0

    invoke-virtual {v0}, Lawv;->c()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Laxk;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 308
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 309
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    invoke-virtual {p1}, Laxk;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    invoke-virtual {p1}, Laxk;->notifyDataSetChanged()V

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->w()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 80
    invoke-static {}, Latv;->a()V

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 0

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->updateLoadingTips()V

    return-void
.end method

.method public onPreGetDataList()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laxk;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 230
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->updateLoadingStatus(I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 208
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onResume()V

    .line 209
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 210
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->tips_playlist_custom_1:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 212
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->tips_playlist_custom_1_netease:I

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->h:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 159
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->updateTitleIfLogin()V

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    invoke-virtual {p1}, Laxk;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    invoke-virtual {p1}, Laxk;->notifyDataSetChanged()V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->w()V

    :cond_0
    return-void
.end method

.method public setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BindingFragment;->setListener()V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;)V

    invoke-virtual {v0, v1}, Laxk;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->c:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$4;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    .line 125
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_playlist:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(I)V

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauu;

    iget-object v1, v1, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "fragment_list"

    invoke-static {v1, v2, v3, v3, v4}, Laxt;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauu;

    iget-object v1, v1, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->enableVuiInvisibleFeature(I)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lauu;

    iget-object v2, v2, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v4, Latj;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v5, Lauu;

    iget-object v5, v5, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v5

    sget v6, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/xiaopeng/musicradio/mine/a$a;->mine_album_view_item_margin_top:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v4, v5, v6, v1}, Latj;-><init>(III)V

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauu;

    iget-object v1, v1, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v2, Lati;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$a;->mine_data_list_item_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v4}, Lati;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 131
    new-instance v1, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    .line 132
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 133
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauu;

    iget-object v1, v1, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 134
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->d:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_playlist:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setGotoLoginText(I)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->d:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V

    return-void
.end method

.method public updateLoadingStatus(I)V
    .locals 1

    .line 262
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mLastStatus:I

    if-ne v0, p1, :cond_0

    return-void

    .line 265
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mLastStatus:I

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lauu;

    iget-object p1, p1, Lauu;->e:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lauu;

    iget-object p1, p1, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 268
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->updateTitleIfLogin()V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lauu;

    iget-object p1, p1, Lauu;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVisibility(I)V

    .line 274
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauu;

    iget-object v0, v0, Lauu;->d:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    invoke-static {p1, v0}, Laqy;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected updateLoadingTips()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    invoke-virtual {v0}, Laxk;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->updateLoadingStatus(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 238
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->updateLoadingStatus(I)V

    :goto_0
    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/MinePlaylistFragment;->mAdapter:Laxk;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p1, p2}, Laxk;->a(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_0
    return-void
.end method
