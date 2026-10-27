.class public Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "HistoryMusicActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/music/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/history/music"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Lauc;",
        "Lcom/xiaopeng/musicradio/mine/history/music/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/music/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HistoryMusicActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->setEditBarEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->showEditBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->hideEditBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->deleteSelectedList()V

    return-void
.end method

.method private deleteSelectedList()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HistoryMusicActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-static {v1}, Laxu;->b(Ljava/util/List;)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->c(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setMode(I)V

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->updateLoadingTips()V

    return-void
.end method

.method private hideEditBar()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method private setEditBarEnabled(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Laxp;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$6;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$6;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V

    iget v4, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mMenuIndex:I

    .line 169
    invoke-static {v4}, Lcom/xiaopeng/musicradio/vui/c;->L(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v0, v1, v2, v3, v4}, Laxp;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/utils/ca;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method private showEditBar()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 139
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->setEditBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 2

    .line 47
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;
    .locals 2

    .line 42
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;-><init>(I)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 57
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->activity_music_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 201
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->E(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .line 131
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getPlayAllText()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Laxu;->a(II)Lfe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a(Lfe;)Z

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->i:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$4;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->e:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$5;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 6

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 63
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_music:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->setTitle(I)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->e:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->desc_history_music:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setDescriptionText(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Latl;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/mine/a$a;->mine_music_view_item_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v3}, Latl;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 68
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 69
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauc;

    iget-object v1, v1, Lauc;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 70
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "HISTORY_MUSIC"

    invoke-virtual {v0, v3, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, v2}, Laxt;->c(Landroid/view/View;Z)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$a;)Z

    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 185
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getPlayAllText()I

    move-result p2

    const/16 v0, 0xa

    invoke-static {v0, p2}, Laxu;->a(II)Lfe;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a(Lfe;)Z

    return-void
.end method

.method public updateTitlePlayingState()V
    .locals 0

    return-void
.end method
