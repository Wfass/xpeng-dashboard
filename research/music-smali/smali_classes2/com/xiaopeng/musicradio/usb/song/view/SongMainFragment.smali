.class public Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "SongMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/usb/song/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/usb/main/song"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/usb/song/view/a;",
        "Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/usb/song/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SongMainFragment"


# instance fields
.field private mAdapter:Lbrm;

.field private mCurrentState:I

.field private mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

.field private mFirstVisibleItemPosition:I

.field private mItemSpace:Landroid/view/View;

.field private mLastVisibleItemPosition:I

.field private mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field protected mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

.field private mRequestInfoRunnable:Ljava/lang/Runnable;

.field private mRequestedFirsPos:I

.field private mRequestedLastPos:I

.field private mRvState:I

.field private mScrollToPositionRunnable:Ljava/lang/Runnable;

.field private mSongCount:I

.field private mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, 0x2

    .line 68
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mCurrentState:I

    const/4 v1, -0x1

    .line 73
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestedFirsPos:I

    .line 74
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestedLastPos:I

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRvState:I

    .line 80
    new-instance v2, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v2, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$4;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestInfoRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x3

    .line 116
    new-array v2, v2, [Ljava/lang/String;

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_play_all:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_continue_all:I

    .line 117
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause_all:I

    .line 118
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->vuilabels:[Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->scrollToRecycleView()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setPlayListener(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->removeInfo(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFirstVisibleItemPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFirstVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mLastVisibleItemPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mLastVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRvState:I

    return p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRvState:I

    return p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestedFirsPos:I

    return p0
.end method

.method static synthetic access$602(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestedFirsPos:I

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestedLastPos:I

    return p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestedLastPos:I

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->request()V

    return-void
.end method

.method private removeInfo(I)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongCount:I

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v1}, Lbrm;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setCountText(I)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInfo:info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SongMainFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {p1}, Lbrm;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->showNoDataView()V

    return-void

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {p1}, Lbrm;->notifyDataSetChanged()V

    .line 401
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->request()V

    return-void
.end method

.method private request()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestInfoRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestInfoRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private resetPlayAll()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    .line 430
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setPlayState(I)V

    return-void
.end method

.method private scrollToRecycleView()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lbrp;->a(Ljava/util/List;)I

    move-result v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToRecycleView: playIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SongMainFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPlayAll()V
    .locals 2

    .line 575
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongCount:I

    const/16 v1, 0x8

    if-lez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setPlayListener(Ljava/lang/String;)V
    .locals 4

    .line 247
    sget v0, Lbez$g;->bt_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object p1

    invoke-virtual {p1}, Lbne;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 249
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3000"

    const-string v1, "usb_song_prefix_"

    .line 250
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {p1}, Lbro;->a(Ljava/util/Collection;)I

    move-result v1

    .line 253
    invoke-static {}, Lbnc;->e()Lbng;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2, p1, v0, v1, v3}, Lbng;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 254
    invoke-static {}, Lbrn;->b()V

    .line 255
    invoke-static {}, Lbrn;->a()V

    goto :goto_0

    .line 257
    :cond_0
    sget v0, Lbez$g;->bt_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_0

    .line 259
    :cond_1
    sget v0, Lbez$g;->bt_continue_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setPlayState(I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 440
    :goto_1
    iget v3, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mCurrentState:I

    if-eq v2, v3, :cond_2

    .line 441
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->vuilabels:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v6}, Lbxx;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v6}, Lbxx;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 443
    iput v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mCurrentState:I

    :cond_2
    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 450
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v0, Lbez$g;->play_all_btn_resume:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v0, Lbez$c;->ic_music_play_s_48:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    goto :goto_3

    .line 453
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v0, Lbez$g;->play_all_btn_default:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v0, Lbez$c;->ic_music_play_s_48:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    goto :goto_3

    .line 447
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v0, Lbez$g;->play_all_btn_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    sget v0, Lbez$c;->ic_music_pause_s_48:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    :goto_3
    return-void
.end method

.method private setVui(Ljava/util/List;Ljava/lang/String;ILandroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 517
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    sget p2, Lbez$g;->bt_pause:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 534
    invoke-static {p4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 535
    instance-of p1, p4, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    if-eqz p1, :cond_1

    .line 536
    check-cast p4, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    .line 537
    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    goto :goto_1

    .line 539
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 542
    :cond_2
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    sget p2, Lbez$g;->vui_feed_back_pause:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 543
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    invoke-virtual {p2, p4, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 520
    :cond_3
    :goto_0
    sget p2, Lbez$g;->bt_pause:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 521
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    sget p2, Lbez$g;->vui_feed_back_play:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 522
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    invoke-virtual {p2, p4, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 524
    :cond_4
    invoke-static {p4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 525
    instance-of p1, p4, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    if-eqz p1, :cond_5

    .line 526
    check-cast p4, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    .line 527
    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    goto :goto_1

    .line 529
    :cond_5
    invoke-virtual {p4}, Landroid/view/View;->performClick()Z

    :cond_6
    :goto_1
    return-void
.end method

.method private updatePlayAll()V
    .locals 5

    .line 406
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 410
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    .line 411
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setPlayState(I)V

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_3

    :cond_0
    move v1, v2

    goto :goto_0

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->resetPlayAll()V

    goto :goto_0

    .line 421
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->resetPlayAll()V

    .line 423
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->vuilabels:[Ljava/lang/String;

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

    .line 424
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 425
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mCurrentState:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;
    .locals 1

    .line 273
    new-instance v0, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/song/present/SongMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 131
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->item_space:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mItemSpace:Landroid/view/View;

    .line 132
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 133
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->song_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 134
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    .line 135
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 136
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->song_fastscroller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    .line 137
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 138
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_all_bt:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 126
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_song_main:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Usb_Song_Page"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 490
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->t(I)Ljava/lang/String;

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

    .line 495
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    .line 500
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->isMainScene()Z

    move-result v0

    return v0
.end method

.method public isPlayCurrentCollect()Z
    .locals 2

    .line 459
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "usb_song_prefix_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 562
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 563
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {p1}, Lbrm;->notifyDataSetChanged()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRequestInfoRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 480
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 469
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 470
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->updatePlayAll()V

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene()V

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 8

    .line 505
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 507
    invoke-interface {v6, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move v3, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setVui(Ljava/util/List;Ljava/lang/String;ILandroid/view/View;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageButton;->getVuiLabel()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move v3, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setVui(Ljava/util/List;Ljava/lang/String;ILandroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeMusicInfo(I)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbrm;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 368
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->removeInfo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->notifyDataSetChanged()V

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mItemSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setPlayAll()V

    return-void
.end method

.method public setAdapter()V
    .locals 5

    .line 176
    new-instance v0, Lbrm;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/usb/a$c;->music_list_item:I

    new-instance v3, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$6;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$6;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lbrm;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$7;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    invoke-virtual {v0, v1}, Lbrm;->a(Lcom/xiaopeng/musicradio/widget/common/b$a;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$8;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$9;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$10;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 143
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->vuilabels:[Ljava/lang/String;

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

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setAdapter()V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->no_usb_music:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->updatePlayAll()V

    .line 166
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget v1, Lbez$g;->vui_right:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiLabel(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_song_title:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$c;->recycler_view_fast_scroller:I

    sget v2, Lcom/xiaopeng/musicradio/usb/a$b;->fastscroller_handle:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(II)V

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->reviewOnScreenChange()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongCount:I

    .line 304
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setPlayAll()V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setCountText(I)V

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->showLoadingTip(I)V

    .line 307
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v1, p1}, Lbrm;->a(Ljava/util/List;)V

    .line 308
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 309
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mScrollToPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 311
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->request()V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->showLoadingTip(I)V

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setVisibility(I)V

    return-void
.end method

.method public showNoDataView()V
    .locals 3

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongCount:I

    const/4 v1, 0x3

    .line 292
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->showLoadingTip(I)V

    .line 293
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lbrm;->a(Ljava/util/List;)V

    .line 294
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setCountText(I)V

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mPlayAll:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setVisibility(I)V

    return-void
.end method

.method public updateLogo()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbrm;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFirstVisibleItemPosition:I

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mLastVisibleItemPosition:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbrm;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMusicInfo(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 335
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mFirstVisibleItemPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mLastVisibleItemPosition:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mRvState:I

    if-nez v0, :cond_0

    .line 337
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbnf;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 339
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 340
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mSongRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;-><init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 349
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lbrm;->getItemCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 350
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {p2, p1}, Lbrm;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePlayState()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->notifyDataSetChanged()V

    .line 330
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->updatePlayAll()V

    return-void
.end method
