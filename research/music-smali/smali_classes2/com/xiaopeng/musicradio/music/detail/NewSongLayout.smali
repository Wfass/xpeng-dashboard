.class public Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "NewSongLayout.java"

# interfaces
.implements Lbgq;
.implements Lbxt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "Lbgq;",
        "Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;",
        ">;",
        "Lbgq;",
        "Lbxt;"
    }
.end annotation


# instance fields
.field protected mAccountType:I

.field protected mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

.field public mCurrentState:I

.field private mHasData:Z

.field public mId:Ljava/lang/String;

.field private mLine:Landroid/view/View;

.field protected mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field public mLogo:Ljava/lang/String;

.field private mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

.field private mSceneId:Ljava/lang/String;

.field protected mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field public mTitle:Ljava/lang/String;

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "0"

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mId:Ljava/lang/String;

    const/4 p1, 0x3

    .line 69
    new-array p1, p1, [Ljava/lang/String;

    sget v0, Lbez$g;->bt_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget v0, Lbez$g;->bt_continue_all:I

    .line 70
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    sget v0, Lbez$g;->bt_pause_all:I

    .line 71
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->vuilabels:[Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mHasData:Z

    const/4 p1, -0x1

    .line 300
    iput p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "0"

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mId:Ljava/lang/String;

    const/4 p1, 0x3

    .line 69
    new-array p1, p1, [Ljava/lang/String;

    sget p2, Lbez$g;->bt_play_all:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    sget p2, Lbez$g;->bt_continue_all:I

    .line 70
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, p1, v1

    sget p2, Lbez$g;->bt_pause_all:I

    .line 71
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, p1, v1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->vuilabels:[Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mHasData:Z

    const/4 p1, -0x1

    .line 300
    iput p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mCurrentState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "0"

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mId:Ljava/lang/String;

    const/4 p1, 0x3

    .line 69
    new-array p1, p1, [Ljava/lang/String;

    sget p2, Lbez$g;->bt_play_all:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    sget p2, Lbez$g;->bt_continue_all:I

    .line 70
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    sget p2, Lbez$g;->bt_pause_all:I

    .line 71
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->vuilabels:[Ljava/lang/String;

    .line 77
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mHasData:Z

    const/4 p1, -0x1

    .line 300
    iput p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mCurrentState:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method private delayUpdateState()V
    .locals 3

    .line 339
    new-instance v0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$6;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private refreshLoadMoreState(I)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$7;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$7;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/a;->b(I)V

    :goto_0
    return-void
.end method

.method private resetPlayState()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 284
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->refreshLoadMoreState(I)V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->b(Ljava/util/List;Z)V

    .line 286
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;
    .locals 1

    .line 96
    new-instance v0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 1

    .line 106
    sget v0, Lbez$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 107
    sget v0, Lbez$d;->song_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 108
    sget v0, Lbez$d;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    .line 109
    sget v0, Lbez$d;->line:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLine:Landroid/view/View;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 101
    sget v0, Lbez$f;->new_song_layout:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 264
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->showLoadingTip(I)V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0, p1, v3}, Lcom/xiaopeng/musicradio/widget/common/a;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->a(Ljava/util/List;Z)V

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyItemRangeChanged(II)V

    .line 272
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 273
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->delayUpdateState()V

    const/4 p1, 0x2

    .line 274
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->refreshLoadMoreState(I)V

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mHasData:Z

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->updatePlayAll()V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    return-void
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public initPlayAll()V
    .locals 2

    .line 329
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    .line 330
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->isPlayCurrentCollect()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 331
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 332
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setPlayState(I)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->resetPlayAll()V

    :goto_0
    return-void
.end method

.method public isHasData()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mHasData:Z

    return v0
.end method

.method public isPlayCurrentCollect()Z
    .locals 3

    .line 367
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"collectId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadData()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->c()V

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->showLoadingView()V

    return-void
.end method

.method public loadEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 382
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->refreshLoadMoreState(I)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->d()V

    return-void
.end method

.method public loadMoreListener()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 257
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyDataSetChanged()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->vuilabels:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_4

    .line 424
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    sget p2, Lbez$g;->bt_pause:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 436
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 437
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    goto :goto_1

    .line 439
    :cond_1
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lbez$g;->vui_feed_back_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 440
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 427
    :cond_2
    :goto_0
    sget p2, Lbez$g;->bt_pause:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 428
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lbez$g;->vui_feed_back_play:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 429
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 431
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public resetPlayAll()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setPlayState(I)V

    return-void
.end method

.method public setAdapter()V
    .locals 7

    .line 130
    new-instance v6, Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbez$f;->music_list_item:I

    new-instance v4, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v3, 0xc

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/common/a;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v6, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAccountType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->d(I)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .line 391
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mId:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->a(Lcom/xiaopeng/musicradio/widget/common/b$a;)V

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->loadMoreListener()V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 407
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setVuiMode(Lbya;)V

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setVuiMode(Lbya;)V

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 6

    .line 400
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSceneId:Ljava/lang/String;

    .line 401
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->updatePlayAll()V

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method public setView()V
    .locals 5

    .line 114
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAccountType:I

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setAdapter()V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lbez$g;->copyright_restrict_hint:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->updatePlayAll()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->initPlayAll()V

    return-void
.end method

.method public setVuiElementId(I)V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPosition(I)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiElementId(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->i()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->showLoadingTip(I)V

    .line 236
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 249
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 242
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->showLoadingTip(I)V

    const/4 p1, 0x2

    .line 243
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->refreshLoadMoreState(I)V

    return-void
.end method

.method public updatePlayAll()V
    .locals 5

    .line 303
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;->setPlayState(I)V

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->resetPlayAll()V

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->resetPlayAll()V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->vuilabels:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 321
    iput v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mCurrentState:I

    return-void
.end method

.method public updatePlayState()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyDataSetChanged()V

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->updatePlayAll()V

    return-void
.end method
