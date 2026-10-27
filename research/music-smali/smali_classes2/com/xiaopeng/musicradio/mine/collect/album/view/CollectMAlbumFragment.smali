.class public Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "CollectMAlbumFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/album/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/collect_album_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Lauk;",
        "Lcom/xiaopeng/musicradio/mine/collect/album/view/a;",
        "Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumDetailPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/album/view/a;"
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

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mEditable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mEditable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mEditable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method private delete(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 2

    const/4 v0, 0x0

    .line 180
    invoke-static {p1, v0}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$6;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method private getAlbumById(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->i()Ljava/util/List;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 247
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 7

    .line 72
    new-instance v6, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;Landroid/content/Context;ILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Z)V

    return-object v6
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumDetailPresenter;
    .locals 3

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumDetailPresenter;

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumDetailPresenter;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 82
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_album_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 210
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->B(I)Ljava/lang/String;

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

    .line 215
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleAlbum(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 221
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getAlbumById(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 223
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/d;->i()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 225
    invoke-interface {p2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 230
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onResume()V

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Laxu;->f(I)V

    return-void
.end method

.method public resetDataList()V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 161
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$5;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    return-void
.end method

.method public setMode(I)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setMode(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->complete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mEditable:Z

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mEditable:Z

    .line 155
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public setView()V
    .locals 6

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mActivityStarted:Z

    .line 88
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v3, Lauk;

    iget-object v3, v3, Lauk;->e:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->getSpanCount()I

    move-result v3

    sget v4, Lcom/xiaopeng/musicradio/mine/a$a;->music_rm_spacing:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 91
    sget v3, Lcom/xiaopeng/musicradio/mine/a$a;->music_rm_row:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 92
    invoke-virtual {v2, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauk;

    iget-object v1, v1, Lauk;->e:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 94
    new-instance v1, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 95
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 96
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lauk;

    iget-object v2, v2, Lauk;->e:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    .line 97
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauk;

    iget-object v1, v1, Lauk;->e:Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;

    const/16 v2, 0x28

    invoke-static {v1, v2}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauk;

    iget-object v1, v1, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v2, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setOnEditModeChange(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;)V

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lauk;

    iget-object v1, v1, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauk;

    iget-object v0, v0, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_album:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauk;

    iget-object v0, v0, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setManageBtnVisible(Z)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauk;

    iget-object v0, v0, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->complete:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setEditRes(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lauk;

    iget-object v0, v0, Lauk;->f:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->back:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 120
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->btn_management:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment$4;-><init>(Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateLoadingTips()V
    .locals 4

    .line 198
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->updateLoadingTips()V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    if-nez v0, :cond_1

    .line 202
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mEditable:Z

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectMAlbumFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
