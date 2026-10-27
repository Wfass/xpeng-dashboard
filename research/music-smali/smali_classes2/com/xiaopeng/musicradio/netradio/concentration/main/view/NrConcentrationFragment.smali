.class public Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "NrConcentrationFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/netradio/fragment/concentration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/main/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NrConcentrationFragment"


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mItemViewBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/drakeet/multitype/c;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearLayoutManager:Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemViewBinders:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mLinearLayoutManager:Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;)Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mLinearLayoutManager:Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;Lcom/xiaopeng/musicradio/widget/recyclerview/e;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemViewBinders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mMenuIndex:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private delayInitList()V
    .locals 2

    const-string v0, "NrConcentrationFragment"

    const-string v1, "delayInitList start : ====="

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 218
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/b;->a()Lcom/xiaopeng/musicradio/netradio/concentration/main/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/b;->r()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;
    .locals 1

    .line 128
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 62
    sget v0, Lbuc$d;->netradio_rv_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 63
    sget v0, Lbuc$d;->loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 66
    sget v0, Lbuc$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 57
    sget v0, Lbuc$f;->netradio_fragment_concentration:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_NetRadio_Choice"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->ak(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroy()V

    .line 187
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0}, Lbda;->e()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 212
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroyView()V

    .line 213
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/b;->a()Lcom/xiaopeng/musicradio/netradio/concentration/main/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/b;->c()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    const-string v0, "NrConcentrationFragment"

    const-string v1, "onResume: ========= "

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected preCacheLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected reviewOnScreenChange()V
    .locals 0

    .line 228
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->reviewOnScreenChange()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$2;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    const-string v0, "NrConcentrationFragment"

    const-string v1, "setView: =========== "

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->delayInitList()V

    const-string v1, "setView: ===== 2 "

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showData()V
    .locals 2

    const-string v0, "NrConcentrationFragment"

    const-string v1, "showData"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    const-string p1, "NrConcentrationFragment"

    const-string v0, "showErrorView"

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 168
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 178
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const-string v0, "NrConcentrationFragment"

    const-string v1, "showLoadingView"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->showLoadingTip(I)V

    return-void
.end method
