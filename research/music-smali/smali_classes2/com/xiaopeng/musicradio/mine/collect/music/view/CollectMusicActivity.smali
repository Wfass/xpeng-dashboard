.class public Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;
.super Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;
.source "CollectMusicActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/music/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/collect/music"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame<",
        "Laty;",
        "Lcom/xiaopeng/musicradio/mine/collect/music/view/a;",
        "Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/music/view/a;"
    }
.end annotation


# static fields
.field private static final MAX_SELECTED_SIZE:I = 0x32

.field public static final TAG:Ljava/lang/String; = "CollectMusicActivity"

.field public static final USER_PLAYLIST_ENABLE:Z = false


# instance fields
.field private mPage:I

.field private mTotalPage:I

.field public mode:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mPage:I

    .line 61
    iput v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mTotalPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->isSelectMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->isDeleteMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setEditBarEnabled(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->showEditBar()V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->hideEditBar()V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->deleteSelectedList()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->showNoResult()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mPage:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mTotalPage:I

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method private deleteSelectedList()V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CollectMusicActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 305
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {v1}, Laxu;->a(Ljava/util/List;)V

    .line 308
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->c(Ljava/util/List;)V

    .line 309
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->p()V

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbni;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setMode(I)V

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->updateLoadingTips()V

    .line 318
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->updateCollectedMusicCount()V

    return-void
.end method

.method private fixPage(I)V
    .locals 6

    .line 322
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfd;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfd;

    .line 323
    invoke-interface {v0}, Lbfd;->getCachedCollectedMusicList()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 324
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

    const-string v2, "CollectMusicActivity"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/d;->j()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

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

    .line 331
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 332
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

    .line 341
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move v3, v4

    .line 342
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    add-int v5, v4, p1

    if-ge v3, v5, :cond_5

    .line 343
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 345
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/datalist/d;->b(Ljava/util/List;)V

    .line 346
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

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method private initMode()V
    .locals 7

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->isSelectMode()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v5, Lcom/xiaopeng/musicradio/mine/a$b;->ic_title_btn_plus_add_list_text_color:I

    sget v6, Lcom/xiaopeng/musicradio/mine/a$e;->playlist_user_add_other:I

    invoke-virtual {v0, v5, v6, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v5, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitleBtnEnable(Z)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setMode(I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(Z)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->j:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v5, Lcom/xiaopeng/musicradio/mine/a$e;->title_music_select_template:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setMode(I)V

    .line 132
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->showEditBar()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_setting:I

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->management:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V

    :goto_0
    return-void
.end method

.method private isDeleteMode()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mode:Ljava/lang/String;

    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSelectMode()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mode:Ljava/lang/String;

    const-string v1, "select"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setEditBarEnabled(Z)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/datalist/d;->o()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Laxp;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$8;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$8;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    iget v4, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mMenuIndex:I

    .line 297
    invoke-static {v4}, Lcom/xiaopeng/musicradio/vui/c;->K(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v0, v1, v2, v3, v4}, Laxp;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/utils/ca;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method private showEditBar()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 265
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setEditBarEnabled(Z)V

    return-void
.end method

.method private updateCollectedMusicCount()V
    .locals 6

    .line 163
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laty;

    iget-object v1, v1, Laty;->e:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->desc_collected_music:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Laxu;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setDescriptionText(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->e:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListItem(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected createAdapter()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 2

    .line 87
    new-instance v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$1;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;
    .locals 1

    .line 82
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 107
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->activity_collected_music_list:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 406
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->A(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHasMore(IZ)V
    .locals 0

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 363
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->notifyDataSetChanged()V

    .line 364
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->updateCollectedMusicCount()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 66
    invoke-static {p1}, Laxu;->e(I)V

    return-void
.end method

.method public onDataListLoaded(Ljava/util/List;I)V
    .locals 0

    .line 375
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onDataListLoaded(Ljava/util/List;I)V

    .line 376
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mTotalPage:I

    return-void
.end method

.method public onLoveTotalChanged()V
    .locals 0

    .line 381
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->updateCollectedMusicCount()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mode:Ljava/lang/String;

    .line 73
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mode:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->initMode()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 253
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->onResume()V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getPlayAllText()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v2, v1}, Laxu;->a(II)Lfe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a(Lfe;)Z

    .line 255
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->updateCollectedMusicCount()V

    return-void
.end method

.method public onUpdatePage(II)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mPage:I

    .line 370
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mTotalPage:I

    return-void
.end method

.method public removeListItem(Ljava/lang/Object;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/d;->d(Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->updateLoadingTips()V

    return-void
.end method

.method public resetDataList()V
    .locals 0

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setListener()V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$2;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Lcom/xiaopeng/musicradio/datalist/d$b;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$3;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setOnModeChangedListener(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->i:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$4;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->j:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$5;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->h:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->getTitleBtn()Landroid/widget/TextView;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$6;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->e:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity$7;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 4

    .line 140
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->setView()V

    .line 141
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 142
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->title_collected_music:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->setTitle(I)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->initMode()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Latl;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$a;->mine_music_view_item_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Latl;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object v1, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 148
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/c$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mAdapter:Lcom/xiaopeng/musicradio/datalist/d;

    .line 149
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    .line 150
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Laty;

    iget-object v1, v1, Laty;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 151
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->a(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/c$a;->b(Z)Lcom/xiaopeng/musicradio/datalist/c$a;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c$a;->a()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    .line 156
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "CUSTOM_ADDED"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->i:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, v1}, Laxt;->c(Landroid/view/View;Z)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->j:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0, v1}, Laxt;->c(Landroid/view/View;Z)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Laty;

    iget-object v0, v0, Laty;->g:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Laxx;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V
    .locals 1

    .line 352
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrame;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    .line 353
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectMusicActivity;->mDataListViewHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getPlayAllText()I

    move-result p2

    const/16 v0, 0x32

    invoke-static {v0, p2}, Laxu;->a(II)Lfe;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a(Lfe;)Z

    return-void
.end method

.method public updateTitlePlayingState()V
    .locals 0

    return-void
.end method
