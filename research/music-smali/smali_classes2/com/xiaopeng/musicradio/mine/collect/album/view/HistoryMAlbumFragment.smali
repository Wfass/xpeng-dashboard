.class public Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "HistoryMAlbumFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/album/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/history_album_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Lauk;",
        "Lcom/xiaopeng/musicradio/mine/history/album/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/album/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CollectAlbumActivity"


# instance fields
.field private mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mEditable:Z

.field private mManageBtn:Lcom/xiaopeng/xui/widget/XButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mEditable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mEditable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mEditable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 1

    .line 170
    invoke-static {p1}, Laxu;->d(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->updateLoadingTips()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 61
    new-instance v6, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;
    .locals 3

    .line 56
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_album_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 189
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->F(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onResume()V

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Laxu;->f(I)V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$5;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setMode(I)V
    .locals 3

    .line 137
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setMode(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->complete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mEditable:Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mEditable:Z

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public setView()V
    .locals 6

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mActivityStarted:Z

    .line 77
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 78
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_album:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->setTitle(I)V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lauk;

    iget-object v3, v3, Lauk;->e:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->getSpanCount()I

    move-result v3

    sget v4, Lcom/xiaopeng/musicradio/mine/a$a;->music_rm_spacing:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 81
    sget v3, Lcom/xiaopeng/musicradio/mine/a$a;->music_rm_row:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 82
    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauk;

    iget-object v1, v1, Lauk;->e:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 84
    new-instance v1, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 85
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 86
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lauk;

    iget-object v2, v2, Lauk;->e:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    .line 87
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 89
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauk;

    iget-object v1, v1, Lauk;->e:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    const/16 v2, 0x28

    invoke-static {v1, v2}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauk;

    iget-object v1, v1, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v2, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setOnEditModeChange(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;)V

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauk;

    iget-object v1, v1, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauk;

    iget-object v0, v0, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_album:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauk;

    iget-object v0, v0, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setManageBtnVisible(Z)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauk;

    iget-object v0, v0, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->complete:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setEditRes(I)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauk;

    iget-object v0, v0, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->back:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 109
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->btn_management:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment$4;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateLoadingTips()V
    .locals 4

    .line 177
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->updateLoadingTips()V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    if-nez v0, :cond_1

    .line 181
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mEditable:Z

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/HistoryMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
