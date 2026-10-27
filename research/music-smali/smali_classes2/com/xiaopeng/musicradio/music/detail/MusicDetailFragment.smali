.class public Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MusicDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/main/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/music_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/main/view/b;",
        "Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/main/view/b;"
    }
.end annotation


# static fields
.field public static final ALBUM:I = 0x1

.field public static final SINGER:I


# instance fields
.field protected mAccountType:I

.field protected mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

.field protected mAlbumFrom:I

.field protected mAudioLogo:Lcom/xiaopeng/xui/widget/XImageView;

.field protected mCollectFrom:I

.field protected mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field public mCurrentState:I

.field private mDissExtraId:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field private mIsLove:Z

.field protected mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field public mLogo:Ljava/lang/String;

.field protected mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

.field protected mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

.field protected mQuality:I

.field protected mRankFrom:I

.field protected mSingerFrom:I

.field protected mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field public mTitle:Ljava/lang/String;

.field private mType:I

.field protected mZoneFrom:I

.field protected mZoneModelSource:I

.field protected mZoneModelType:I

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const-string v0, "0"

    .line 92
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mQuality:I

    const/4 v1, 0x3

    .line 99
    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lbez$g;->bt_play_all:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lbez$g;->bt_continue_all:I

    .line 100
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget v2, Lbez$g;->bt_pause_all:I

    .line 101
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->vuilabels:[Ljava/lang/String;

    .line 109
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCollectFrom:I

    .line 110
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSingerFrom:I

    .line 111
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mRankFrom:I

    .line 112
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAlbumFrom:I

    .line 113
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneFrom:I

    .line 115
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneModelType:I

    .line 116
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneModelSource:I

    .line 587
    iput v3, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCurrentState:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mDissExtraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mDissExtraId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mIsLove:Z

    return p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mIsLove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->loveStat()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setLoveSate()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mType:I

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->zoneStat()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->fromStat()V

    return-void
.end method

.method private delayUpdateState()V
    .locals 3

    .line 617
    new-instance v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$8;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private fromStat()V
    .locals 4

    .line 400
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCollectFrom:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {}, Lbjl;->n()V

    .line 420
    invoke-static {}, Lbjl;->l()V

    goto :goto_0

    .line 415
    :cond_1
    invoke-static {}, Lbjl;->p()V

    .line 416
    invoke-static {}, Lbjl;->l()V

    goto :goto_0

    .line 411
    :cond_2
    invoke-static {}, Lbjl;->o()V

    .line 412
    invoke-static {}, Lbjl;->l()V

    goto :goto_0

    .line 408
    :cond_3
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->x(I)V

    goto :goto_0

    .line 405
    :cond_4
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0, v3}, Lbjl;->d(ILjava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_5
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->s(I)V

    .line 424
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mRankFrom:I

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_1

    .line 429
    :cond_6
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->u(I)V

    goto :goto_1

    .line 426
    :cond_7
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->t(I)V

    .line 433
    :goto_1
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSingerFrom:I

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_8

    goto :goto_2

    .line 438
    :cond_8
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->w(I)V

    goto :goto_2

    .line 435
    :cond_9
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->v(I)V

    .line 442
    :goto_2
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAlbumFrom:I

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_a

    goto :goto_3

    .line 454
    :cond_a
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->w(I)V

    goto :goto_3

    .line 444
    :cond_b
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSingerFrom:I

    if-eq v0, v2, :cond_d

    if-eq v0, v1, :cond_c

    goto :goto_3

    .line 449
    :cond_c
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->w(I)V

    goto :goto_3

    .line 446
    :cond_d
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-static {v0}, Lbjl;->v(I)V

    :goto_3
    return-void
.end method

.method private loveStat()V
    .locals 4

    .line 370
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCollectFrom:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {v2}, Lbjl;->y(I)V

    goto :goto_0

    .line 378
    :cond_1
    invoke-static {v3}, Lbjl;->y(I)V

    goto :goto_0

    .line 375
    :cond_2
    invoke-static {v2}, Lbjl;->y(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 372
    invoke-static {v0}, Lbjl;->y(I)V

    .line 384
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mQuality:I

    if-ne v0, v1, :cond_4

    .line 385
    invoke-static {}, Lbjl;->m()V

    :cond_4
    return-void
.end method

.method private resetPlayState()V
    .locals 0

    return-void
.end method

.method private setLoveSate()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mIsLove:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLove(Z)V

    return-void
.end method

.method private zoneStat()V
    .locals 2

    .line 390
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneModelType:I

    if-ltz v0, :cond_0

    .line 391
    invoke-static {v0}, Lbjl;->z(I)V

    .line 393
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneModelType:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneModelSource:I

    if-ltz v1, :cond_1

    .line 394
    invoke-static {v0, v1}, Lbjl;->e(II)V

    :cond_1
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

    const/4 v0, 0x3

    .line 548
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->refreshLoadMoreState(I)V

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->b(Ljava/util/List;Z)V

    .line 550
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
    .locals 1

    .line 127
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewFirst()V
    .locals 0

    .line 194
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->createViewFirst()V

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getData()V

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->updatePlayAll()V

    return-void
.end method

.method public findView()V
    .locals 2

    .line 137
    sget v0, Lbez$d;->audio_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAudioLogo:Lcom/xiaopeng/xui/widget/XImageView;

    .line 138
    sget v0, Lbez$d;->common_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 139
    sget v0, Lbez$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 140
    sget v0, Lbez$d;->song_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 141
    sget v0, Lbez$d;->music_top_Layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    .line 142
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 143
    sget v0, Lbez$d;->music_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->setOnTopListener(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;)V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 132
    sget v0, Lbez$f;->fragment_music_detail:I

    return v0
.end method

.method public getData()V
    .locals 7

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "COLLECT_FROM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCollectFrom:I

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ZONE_FROM_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneFrom:I

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_LOGO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLogo:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "zone_model_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneModelType:I

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "zone_model_source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneModelSource:I

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_account_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_quality"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mQuality:I

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(I)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCollectFrom:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setCollectFrom(I)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mZoneFrom:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setZoneFrom(I)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTitle(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLogo(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "detail_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(I)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "DETAIL_C_TYPE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v4, 0x0

    const-string v6, "DETAIL_CACHE_ID"

    invoke-virtual {v1, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(J)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->showLoadingView()V

    .line 237
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Lbac;->a(I)Lbab;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLoveVisible(Z)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLoveVisible(Z)V

    .line 243
    :goto_0
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Lazz;->a(I)Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lazy;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mIsLove:Z

    .line 244
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setLoveSate()V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setLogo()V

    :cond_3
    return-void
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 533
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->showLoadingTip(I)V

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 535
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->a(Ljava/util/List;Z)V

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyItemRangeChanged(II)V

    .line 541
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 542
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->delayUpdateState()V

    const/4 p1, 0x3

    .line 543
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->refreshLoadMoreState(I)V

    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 742
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "arguments"

    .line 746
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 642
    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mQuality:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_SongList_Detail"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 650
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->e(I)Ljava/lang/String;

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

    .line 655
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initPlayAll()V
    .locals 2

    .line 607
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    .line 608
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->isPlayCurrentCollect()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 610
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setPlayState(I)V

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->resetPlayAll()V

    :goto_0
    return-void
.end method

.method public isPlayCurrentCollect()Z
    .locals 3

    .line 672
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"collectId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

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

.method public loadEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 691
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->refreshLoadMoreState(I)V

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->d()V

    return-void
.end method

.method public loadMoreListener()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$7;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 525
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 526
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 697
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyDataSetChanged()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 704
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getPlayAll()Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 705
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 707
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 708
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 718
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lbez$g;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 719
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 720
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getPlayAllBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    goto :goto_1

    .line 722
    :cond_1
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lbez$g;->vui_feed_back_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 723
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 710
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lbez$g;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 711
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lbez$g;->vui_feed_back_play:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 712
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 714
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 715
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getPlayAllBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public recordItem()V
    .locals 3

    .line 630
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 631
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogo(Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 637
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-virtual {v1, v2}, Lbak;->b(I)Lbaj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method protected refreshLoadMoreState(I)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$9;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/a;->b(I)V

    :goto_0
    return-void
.end method

.method public refreshLove(Z)V
    .locals 0

    .line 555
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mIsLove:Z

    .line 556
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setLoveSate()V

    return-void
.end method

.method public resetPlayAll()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setPlayState(I)V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 1

    .line 755
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->reviewOnScreenChange()V

    .line 756
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyDataSetChanged()V

    return-void
.end method

.method public setAdapter()V
    .locals 5

    .line 200
    new-instance v0, Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbez$f;->music_list_item:I

    new-instance v3, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$2;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/xiaopeng/musicradio/widget/common/a;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->d(I)V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$3;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$4;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setLoveClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$5;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    new-instance v1, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$6;-><init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->a(Lcom/xiaopeng/musicradio/widget/common/b$a;)V

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->loadMoreListener()V

    return-void
.end method

.method protected setLogo()V
    .locals 2

    .line 251
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAudioLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_music_logo_top_right_qqmusic:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAudioLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_music_logo_top_right_kugou:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAudioLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_music_logo_top_right_netease:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setTotalSong(I)V
    .locals 5

    .line 732
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    const-string v1, ""

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTipsText(Ljava/lang/String;)V

    goto :goto_1

    .line 733
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbez$g;->song_count:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setTipsText(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 750
    iput p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mType:I

    return-void
.end method

.method public setView()V
    .locals 10

    .line 170
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setSceneId(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail_account_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAccountType:I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setAdapter()V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v2, Lbez$g;->copyright_restrict_hint:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->setLogo()V

    .line 187
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mCommonTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitleVisible(Z)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 2

    .line 498
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->i()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 500
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 501
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->showLoadingTip(I)V

    .line 503
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->refreshLoadMoreState(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 517
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 493
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 509
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 510
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->showLoadingTip(I)V

    const/4 p1, 0x2

    .line 511
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->refreshLoadMoreState(I)V

    return-void
.end method

.method public updateEstimateLoadingTime(D)V
    .locals 0

    return-void
.end method

.method public updateLove(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public updatePlayAll()V
    .locals 2

    .line 589
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 593
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mMusicTopLayout:Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->setPlayState(I)V

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->resetPlayAll()V

    goto :goto_0

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->resetPlayAll()V

    :goto_0
    return-void
.end method

.method public updatePlayState()V
    .locals 5

    .line 561
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->updatePlayAll()V

    .line 562
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/a;->k()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyItemChanged(I)V

    .line 567
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 569
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 570
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 571
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 572
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
