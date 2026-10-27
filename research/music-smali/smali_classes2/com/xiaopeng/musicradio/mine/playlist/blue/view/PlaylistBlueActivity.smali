.class public Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;
.source "PlaylistBlueActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/playlist/blue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity<",
        "Laug;",
        "Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;",
        "Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlaylistBlueActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->setEditBarEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->showEditBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->hideEditBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->deleteSelectedList()V

    return-void
.end method

.method private deleteSelectedList()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlaylistBlueActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    invoke-static {v1}, Laxu;->c(Ljava/util/List;)V

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->c(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->g:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setMode(I)V

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->updateLoadingTips()V

    return-void
.end method

.method private hideEditBar()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->e:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->h:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method private setEditBarEnabled(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->h:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 157
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Laxp;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$6;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$6;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V

    const-string v3, ""

    .line 155
    invoke-static {p0, v0, v1, v2, v3}, Laxp;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/utils/ca;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method private showEditBar()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->e:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->h:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 136
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->setEditBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 2

    .line 46
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p0, v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;
    .locals 3

    .line 41
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 56
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->activity_playlist_blue:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected onResume()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getPlayAllText()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v2, v1}, Laxu;->a(II)Lfe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a(Lfe;)Z

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->setListener()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->g:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->h:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$4;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->d:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$5;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 5

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->setView()V

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_playlist_blue:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->setTitle(I)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->g:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Latl;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/xiaopeng/musicradio/mine/a$a;->mine_music_view_item_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Latl;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->d:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setTvSourceVisibility(I)V

    .line 66
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 67
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 68
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laug;

    iget-object v1, v1, Laug;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 69
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->e:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->h:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, v3}, Laxt;->c(Landroid/view/View;Z)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$a;)Z

    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 180
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getPlayAllText()I

    move-result p2

    const/16 v0, 0x14

    invoke-static {v0, p2}, Laxu;->a(II)Lfe;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a(Lfe;)Z

    return-void
.end method
