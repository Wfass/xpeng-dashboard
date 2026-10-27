.class public Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;
.source "CustomDetailListActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/playlist/detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity<",
        "Laua;",
        "Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;",
        "Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/a;"
    }
.end annotation


# static fields
.field private static final EDIT_BAR_ENABLE:Z = false

.field private static final MAX_SELECTED_SIZE:I = 0x32

.field public static final TAG:Ljava/lang/String; = "CustomDetailListActivity"


# instance fields
.field public mAlbumDescription:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "album_description"
    .end annotation
.end field

.field public mAlbumId:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "album_id"
    .end annotation
.end field

.field public mAlbumLogo:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "album_logo"
    .end annotation
.end field

.field public mAlbumName:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "album_name"
    .end annotation
.end field

.field private mListSign:Ljava/lang/String;

.field private mPage:I

.field private mTotalPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPage:I

    .line 63
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mTotalPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/mine/widget/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->showEditBar()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->hideEditBar()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->deleteSelectedList()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPage:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mTotalPage:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mListSign:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->setEditBarEnabled(Z)V

    return-void
.end method

.method private deleteSelectedList()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomDetailListActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 242
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {v1}, Laxu;->a(Ljava/util/List;)V

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->c(Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setMode(I)V

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->updateLoadingTips()V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->y()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->updateMusicCount(I)V

    return-void
.end method

.method private hideEditBar()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->b(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAlbumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mListSign:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setEditBarEnabled(Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 227
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Laxp;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$7;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$7;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V

    const-string v3, ""

    .line 225
    invoke-static {p0, v0, v1, v2, v3}, Laxp;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/utils/ca;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method private showEditBar()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 204
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->setEditBarEnabled(Z)V

    return-void
.end method

.method private updateMusicCount(I)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->e:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->e:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->desc_collected_music:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setDescriptionText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 1

    .line 82
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->activity_custom_detail_list:I

    return v0
.end method

.method protected getEmptyTips()Ljava/lang/String;
    .locals 1

    .line 293
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->copyright_restrict_hint:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected interruptSetLogoView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 0

    .line 253
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->onDataListLoaded(Ljava/util/List;I)V

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;->y()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->updateMusicCount(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "CustomDetailListActivity"

    const-string v1, "onNewIntent"

    .line 67
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->setIntent(Landroid/content/Intent;)V

    .line 70
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->initData()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 196
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->onResume()V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mListSign:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getPlayAllText()I

    move-result v2

    invoke-static {v1, v2}, Laxu;->a(Ljava/lang/String;I)Lfe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a(Lfe;)Z

    return-void
.end method

.method public onUpdatePage(II)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPage:I

    .line 266
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mTotalPage:I

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->setListener()V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$3;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$4;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->i:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$5;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->e:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity$6;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 5

    .line 107
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->setView()V

    .line 108
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->initData()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Latl;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/xiaopeng/musicradio/mine/a$a;->mine_music_view_item_margin_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Latl;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 113
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 114
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 115
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laua;

    iget-object v1, v1, Laua;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 116
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/datalist/c$a;->b(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    .line 121
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "CUSTOM_ADDED"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, v3}, Laxt;->c(Landroid/view/View;Z)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laua;

    iget-object v0, v0, Laua;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->updateMusicCount(I)V

    return-void
.end method

.method public showTitleBtn()V
    .locals 0

    return-void
.end method

.method public updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$a;)Z

    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 259
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListActivity;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    .line 260
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mListSign:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/view/CustomDetailListActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getPlayAllText()I

    move-result v0

    invoke-static {p2, v0}, Laxu;->a(Ljava/lang/String;I)Lfe;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a(Lfe;)Z

    return-void
.end method
