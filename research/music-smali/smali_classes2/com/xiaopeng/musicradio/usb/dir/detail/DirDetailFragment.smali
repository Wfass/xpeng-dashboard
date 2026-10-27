.class public Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "DirDetailFragment.java"

# interfaces
.implements Lbqu;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/usbview/usb_dir_detail_fragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lbqu;",
        "Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;",
        ">;",
        "Lbqu;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DirDetailFragment"


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field private mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field private mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field private mCurrentState:I

.field private mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mDirSpanCount:I

.field private mDirSpanCount13:I

.field private mDirSpanCountFull:I

.field private mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

.field protected mFirstVisibleItemPosition:I

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastVisibleItemPosition:I

.field protected mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field protected mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field protected mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

.field protected mRvState:I

.field private mSongSpanCount:I

.field private mSongSpanCount13:I

.field private mSongSpanCountFull:I

.field private mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field protected mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mTotalItemCount:I

.field private mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

.field private scrollY:I

.field private scrollYOld:I

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mInfos:Ljava/util/List;

    const/4 v0, 0x2

    .line 86
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mCurrentState:I

    const/4 v1, 0x3

    .line 90
    new-array v2, v1, [Ljava/lang/String;

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_play_all:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_continue_all:I

    .line 91
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause_all:I

    .line 92
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->vuilabels:[Ljava/lang/String;

    .line 97
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mRvState:I

    const/4 v0, 0x4

    .line 99
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCount:I

    .line 100
    iput v5, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirSpanCount:I

    const/4 v0, 0x6

    .line 102
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCountFull:I

    .line 103
    iput v5, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirSpanCountFull:I

    .line 105
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCount13:I

    .line 106
    iput v5, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirSpanCount13:I

    .line 120
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->scrollY:I

    .line 121
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->scrollYOld:I

    .line 125
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mTotalItemCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mTotalItemCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->scrollY:I

    return p0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->scrollY:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirSpanCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCount13:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirSpanCount13:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCountFull:I

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirSpanCountFull:I

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    return-object p0
.end method

.method private initBinder()V
    .locals 3

    .line 272
    new-instance v0, Lbqs;

    invoke-direct {v0}, Lbqs;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbqv;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 274
    new-instance v0, Lbqt;

    invoke-direct {v0}, Lbqt;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbqw;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    return-void
.end method

.method private resetPlayAll()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    return-void
.end method

.method private setListView()V
    .locals 13

    .line 390
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->scrollY:I

    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->scrollYOld:I

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->b()Ljava/util/List;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a()Ljava/util/List;

    move-result-object v1

    .line 394
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "DirDetailFragment"

    const-string v1, "setListView: treeBeanNoData"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    return-void

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 402
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 403
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-static {v2}, Lbrp;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)Ljava/util/List;

    move-result-object v2

    .line 406
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 407
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    .line 408
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 409
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    new-instance v5, Lbqv;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v2, v7}, Lbqv;-><init>(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 412
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 413
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    new-instance v12, Lbqw;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mInfos:Ljava/util/List;

    iget-object v8, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int v9, v2, v5

    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lbqw;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/util/List;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;IILjava/lang/String;)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setCountText(I)V

    .line 416
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 418
    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLastVisibleItemPosition:I

    if-lez v2, :cond_5

    iget v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mTotalItemCount:I

    if-lez v4, :cond_5

    .line 419
    iget v4, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFirstVisibleItemPosition:I

    if-nez v4, :cond_3

    .line 420
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    goto :goto_2

    .line 422
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mTotalItemCount:I

    div-int/2addr v2, v3

    .line 423
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_4

    .line 424
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 426
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    .line 430
    :cond_5
    :goto_2
    invoke-static {v1}, Lbrp;->a(Ljava/util/List;)I

    move-result v1

    .line 431
    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->scrollYOld:I

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    if-ltz v1, :cond_7

    .line 434
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    .line 437
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->updatePlayAll()V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    return-void
.end method

.method private updatePlayAll()V
    .locals 5

    .line 450
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 452
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    .line 454
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_3

    :cond_0
    move v1, v2

    goto :goto_0

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->resetPlayAll()V

    goto :goto_0

    .line 464
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->resetPlayAll()V

    .line 466
    :cond_3
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mCurrentState:I

    if-eq v1, v0, :cond_4

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->vuilabels:[Ljava/lang/String;

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

    .line 468
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 469
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mCurrentState:I

    :cond_4
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;
    .locals 1

    .line 130
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/present/UsbDirDetailPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 2

    .line 140
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 141
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->dir_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 142
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    .line 143
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->no_usb_music:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    .line 145
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->song_fastscroller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    .line 146
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 135
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_dir_detail:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 535
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 536
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 498
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->w(I)Ljava/lang/String;

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

    .line 503
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isPlayCurrentCollect()Z
    .locals 3

    .line 479
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 481
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 482
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb_dir_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 541
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->updatePlayAll()V

    :cond_0
    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 509
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 511
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 512
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 523
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 524
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    goto :goto_1

    .line 526
    :cond_1
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->vui_feed_back_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 527
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 514
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 515
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->vui_feed_back_play:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 516
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 518
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 519
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->setListView()V

    :cond_2
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$7;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$8;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setView()V
    .locals 12

    .line 151
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 153
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCount:I

    invoke-direct {v0, p0, v2, v3}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 163
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 177
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCount:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbez$b;->item_space_36:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v4, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a(I)V

    .line 180
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$3;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCount13:I

    invoke-direct {v0, p0, v2, v3}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$3;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 190
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$4;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 204
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCount13:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lbez$b;->item_space_24:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v5, v4, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a(I)V

    .line 207
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$5;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCountFull:I

    invoke-direct {v0, p0, v2, v3}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$5;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 217
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$6;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 231
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mSongSpanCountFull:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lbez$b;->item_space_36:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v5, v4, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a(I)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 238
    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mList:Ljava/util/List;

    .line 241
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 243
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->initBinder()V

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_dir_path"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setView: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DirDetailFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbne;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v0

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setView: usbMusicTreeBean = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 252
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->showData(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    .line 260
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->vuilabels:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;)V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->b(Lcom/xiaopeng/xui/vui/VuiView;)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVuiPriority(Lbyb;)V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$c;->recycler_view_fast_scroller:I

    sget v2, Lcom/xiaopeng/musicradio/usb/a$b;->fastscroller_handle:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(II)V

    return-void
.end method

.method public showData(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->reviewOnScreenChange()V

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView()V
    .locals 0

    return-void
.end method

.method public updateLogo()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;-><init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFirstVisibleItemPosition:I

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLastVisibleItemPosition:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePlayState()V
    .locals 0

    .line 445
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->updatePlayAll()V

    return-void
.end method
