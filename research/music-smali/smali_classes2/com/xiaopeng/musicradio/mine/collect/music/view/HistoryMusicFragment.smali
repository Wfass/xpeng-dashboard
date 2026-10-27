.class public Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "HistoryMusicFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/music/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/history_music_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Laum;",
        "Lcom/xiaopeng/musicradio/mine/history/music/view/a;",
        "Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/music/view/a;"
    }
.end annotation


# static fields
.field private static final MAX_SELECTED_SIZE:I = 0x32

.field public static final TAG:Ljava/lang/String; = "HistoryMusicFragment"

.field public static final USER_PLAYLIST_ENABLE:Z = false


# instance fields
.field private mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field public mCurrentState:I

.field private mEditable:Z

.field private mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mPage:I

.field private mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mTotalPage:I

.field public mode:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "mode"
    .end annotation
.end field

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mPage:I

    .line 75
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mTotalPage:I

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mEditable:Z

    const/4 v2, -0x1

    .line 81
    iput v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mCurrentState:I

    const/4 v2, 0x3

    .line 83
    new-array v2, v2, [Ljava/lang/String;

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->bt_play_all:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_continue_all:I

    .line 84
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->bt_pause_all:I

    .line 85
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->vuilabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mEditable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mEditable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->isDeleteMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setEditBarEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setDeleteClickable()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->showEditBar()V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->deleteSelectedList()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->showNoResult()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->isSelectMode()Z

    move-result p0

    return p0
.end method

.method private deleteSelectedList()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HistoryMusicFragment"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    invoke-static {v1}, Laxu;->b(Ljava/util/List;)V

    .line 386
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->c(Ljava/util/List;)V

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->updateLoadingTips()V

    return-void
.end method

.method private fixPage(I)V
    .locals 6

    .line 391
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfd;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfd;

    .line 392
    invoke-interface {v0}, Lbfd;->getCachedCollectedMusicList()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HistoryMusicFragment"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/d;->j()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/datalist/d;->j()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/datalist/d;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 400
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 401
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v3

    :cond_4
    :goto_2
    if-ltz v4, :cond_6

    .line 410
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move v3, v4

    .line 411
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    add-int v5, v4, p1

    if-ge v3, v5, :cond_5

    .line 412
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 414
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/datalist/d;->b(Ljava/util/List;)V

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fixList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private hideEditBar()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->k:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method private initMode()V
    .locals 6

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->isSelectMode()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v5, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setMode(I)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->k:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v5, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setMode(I)V

    .line 153
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->showEditBar()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isDeleteMode()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mode:Ljava/lang/String;

    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSelectMode()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mode:Ljava/lang/String;

    const-string v1, "select"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setDeleteClickable()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setClickable(Z)V

    .line 351
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    return-void
.end method

.method private setEditBarEnabled(Z)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->k:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    return-void
.end method

.method private setPlayAllClickable(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setClickable(Z)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->setAlpha(F)V

    return-void
.end method

.method private setPlayAllCount()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result v0

    .line 335
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mEditable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 336
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setPlayAllClickable(Z)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 338
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setPlayAllClickable(Z)V

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laum;

    iget-object v1, v1, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->setCountText(I)V

    .line 341
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-nez v0, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Laum;

    iget-object v2, v2, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 7

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setMode(I)V

    return-void

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    .line 364
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Laxp;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$8;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$8;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    new-instance v5, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$9;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$9;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mMenuIndex:I

    .line 377
    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->K(I)Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-static/range {v1 .. v6}, Laxp;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/utils/ca;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method private showEditBar()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 288
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setEditBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 2

    .line 111
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->createPresenter()Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;
    .locals 2

    .line 106
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;-><init>(I)V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 131
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->fragment_collected_music_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 503
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->J(I)Ljava/lang/String;

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

    .line 469
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 456
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 90
    invoke-static {p1}, Laxu;->e(I)V

    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 0

    .line 462
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onDataListLoaded(Ljava/util/List;I)V

    .line 463
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mTotalPage:I

    .line 464
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setPlayAllCount()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onNewIntent(Landroid/content/Intent;)V

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mode:Ljava/lang/String;

    .line 97
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mode:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->initMode()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 279
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onResume()V

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 280
    invoke-static {v0, v1}, Laxu;->a(II)Lfe;

    move-result-object v0

    .line 281
    iget-object v0, v0, Lfe;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setPlayState(I)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laum;

    iget-object v1, v1, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 475
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 477
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 478
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Laum;

    iget-object p2, p2, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 489
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 490
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Laum;

    iget-object p1, p1, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    goto :goto_1

    .line 492
    :cond_1
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->vui_feed_back_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 480
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Laum;

    iget-object p2, p2, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 481
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->vui_feed_back_play:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 482
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 484
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 485
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Laum;

    iget-object p1, p1, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 215
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$4;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->j:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$5;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$6;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$7;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setOnEditModeChange(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;)V

    return-void
.end method

.method public setMode(I)V
    .locals 4

    .line 306
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setMode(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 309
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mEditable:Z

    .line 310
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->showEditBar()V

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->delete:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setPlayAllClickable(Z)V

    .line 313
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setDeleteClickable()V

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object p1

    .line 315
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Laum;

    iget-object v2, v2, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->hideEditBar()V

    .line 318
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setPlayAllClickable(Z)V

    .line 319
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setClickable(Z)V

    .line 322
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mEditable:Z

    .line 323
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Laum;

    iget-object p1, p1, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_music:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 325
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result p1

    if-ltz p1, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setPlayAllCount()V

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public setPlayState(I)V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->setPlayState(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 437
    :cond_1
    :goto_0
    iget p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mCurrentState:I

    if-eq v0, p1, :cond_2

    .line 438
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Laum;

    iget-object p1, p1, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->vuilabels:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Laum;

    iget-object v2, v2, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 440
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mCurrentState:I

    :cond_2
    return-void
.end method

.method public setView()V
    .locals 5

    .line 160
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 161
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 162
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_music:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setTitle(I)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->initMode()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->h:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Latl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Latl;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->g:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 168
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 169
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 170
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laum;

    iget-object v1, v1, Laum;->h:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 171
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 173
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->b(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    .line 176
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "CUSTOM_ADDED"

    invoke-virtual {v0, v4, v3}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, v1}, Laxt;->c(Landroid/view/View;Z)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->k:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, v1}, Laxt;->c(Landroid/view/View;Z)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->h:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v3, 0x14

    invoke-static {v0, v3}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->title_history_music:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setManageBtnVisible(Z)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->f:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->play_btn:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllCountButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mPlayBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laum;

    iget-object v0, v0, Laum;->i:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->back:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 185
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->btn_management:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 0

    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 421
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    const/16 p2, 0xa

    const/4 v0, 0x0

    .line 422
    invoke-static {p2, v0}, Laxu;->a(II)Lfe;

    move-result-object p2

    .line 423
    iget-object p2, p2, Lfe;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->setPlayState(I)V

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/HistoryMusicFragment;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateTitlePlayingState()V
    .locals 0

    return-void
.end method
