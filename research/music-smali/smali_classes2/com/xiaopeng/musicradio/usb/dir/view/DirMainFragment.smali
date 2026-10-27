.class public Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "DirMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/usb/dir/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/usb/main/dir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/usb/dir/view/b;",
        "Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/usb/dir/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DirMainFragment"


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

.field private mLastVisibleItemPosition:I

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

.field private mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

.field protected mRvState:I

.field private mSongSpanCount:I

.field private mSongSpanCount13:I

.field private mSongSpanCountFull:I

.field private mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mTotalItemCount:I

.field private mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

.field private scrollY:I

.field private scrollYOld:I

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mInfos:Ljava/util/List;

    const/4 v0, 0x2

    .line 80
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mCurrentState:I

    const/4 v1, 0x3

    .line 83
    new-array v2, v1, [Ljava/lang/String;

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_play_all:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_continue_all:I

    .line 84
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause_all:I

    .line 85
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->vuilabels:[Ljava/lang/String;

    const/4 v0, 0x4

    .line 87
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCount:I

    .line 88
    iput v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirSpanCount:I

    const/4 v0, 0x6

    .line 90
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCountFull:I

    .line 91
    iput v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirSpanCountFull:I

    .line 93
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCount13:I

    .line 94
    iput v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirSpanCount13:I

    .line 111
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLastVisibleItemPosition:I

    .line 112
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mTotalItemCount:I

    .line 113
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mRvState:I

    .line 115
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollY:I

    .line 116
    iput v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollYOld:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mTotalItemCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLastVisibleItemPosition:I

    return p0
.end method

.method static synthetic access$1402(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLastVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$1500(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollY:I

    return p0
.end method

.method static synthetic access$1502(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollY:I

    return p1
.end method

.method static synthetic access$1600(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollYRecycleView()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirSpanCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCount13:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirSpanCount13:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCountFull:I

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirSpanCountFull:I

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    return-object p0
.end method

.method private initBinder()V
    .locals 3

    .line 238
    new-instance v0, Lbqs;

    invoke-direct {v0}, Lbqs;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbqv;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 240
    new-instance v0, Lbqt;

    invoke-direct {v0}, Lbqt;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbqw;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    return-void
.end method

.method private resetPlayAll()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    return-void
.end method

.method private scrollYRecycleView()V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$10;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 408
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollY:I

    .line 409
    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollYOld:I

    if-lez v1, :cond_1

    .line 410
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollBy(II)V

    .line 412
    :cond_1
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollYOld:I

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private setListView()V
    .locals 15

    .line 355
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollY:I

    iput v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollYOld:I

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->showLoadingTip(I)V

    .line 358
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 359
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->b()Ljava/util/List;

    move-result-object v1

    .line 361
    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->a()Ljava/util/List;

    move-result-object v3

    .line 362
    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-static {v4}, Lbrp;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)Ljava/util/List;

    move-result-object v4

    .line 363
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 364
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v5, v0

    .line 365
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 366
    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    new-instance v7, Lbqv;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v5, v9}, Lbqv;-><init>(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;ILjava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v0

    .line 369
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 370
    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    new-instance v14, Lbqw;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v9, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mInfos:Ljava/util/List;

    iget-object v10, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int v11, v5, v7

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v13

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lbqw;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/util/List;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;IILjava/lang/String;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 372
    :cond_1
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setCountText(I)V

    .line 373
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 374
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    .line 375
    iget v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLastVisibleItemPosition:I

    if-lez v5, :cond_4

    iget v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mTotalItemCount:I

    if-lez v6, :cond_4

    .line 376
    iget v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mFirstVisibleItemPosition:I

    if-nez v6, :cond_2

    .line 377
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v5, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    goto :goto_2

    .line 379
    :cond_2
    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mTotalItemCount:I

    div-int/2addr v5, v6

    .line 380
    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_3

    .line 381
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 383
    :cond_3
    iget-object v6, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    .line 386
    :cond_4
    :goto_2
    invoke-static {v3}, Lbrp;->a(Ljava/util/List;)I

    move-result v3

    .line 387
    iget v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->scrollYOld:I

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    if-ltz v3, :cond_6

    .line 390
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v5, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    .line 393
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->updatePlayAll()V

    .line 394
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    return-void
.end method

.method private updatePlayAll()V
    .locals 5

    .line 424
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 428
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setPlayState(I)V

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_3

    :cond_0
    move v1, v2

    goto :goto_0

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->resetPlayAll()V

    goto :goto_0

    .line 438
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->resetPlayAll()V

    .line 440
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->vuilabels:[Ljava/lang/String;

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

    .line 441
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 442
    iput v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mCurrentState:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;
    .locals 1

    .line 301
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 127
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 128
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->dir_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 129
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    .line 130
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 131
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->song_fastscroller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    .line 132
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 122
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_dir_main:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Usb_Folder_Page"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 470
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->u(I)Ljava/lang/String;

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

    .line 475
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mMenuIndex:I

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

    .line 450
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 452
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb_dir_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

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

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 526
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 461
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->updatePlayAll()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 499
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 501
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 502
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 513
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 514
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    goto :goto_1

    .line 516
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

    .line 517
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 504
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->bt_pause:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 505
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

    .line 506
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 508
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 509
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayBtn()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->performClick()Z

    :cond_4
    :goto_1
    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 349
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->setListView()V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setVisibility(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$8;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$9;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected setView()V
    .locals 11

    .line 137
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_dir_title:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 139
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCount:I

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 149
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 163
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCount:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->item_space_50:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbez$b;->item_space_36:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a(I)V

    .line 166
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$4;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCount13:I

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$4;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 176
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$5;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 190
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCount13:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->item_space_50:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lbez$b;->item_space_24:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a(I)V

    .line 193
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$6;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCountFull:I

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$6;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 203
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 217
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mSongSpanCountFull:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->item_space_50:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lbez$b;->item_space_36:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a(I)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 222
    iget-object v5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(I)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->no_usb_music:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    .line 227
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 229
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->initBinder()V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget v1, Lbez$g;->vui_right:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiLabel(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mFastScroller:Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$c;->recycler_view_fast_scroller:I

    sget v2, Lcom/xiaopeng/musicradio/usb/a$b;->fastscroller_handle:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(II)V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showData(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;)V
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showData: UsbTreeBean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 331
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->reviewOnScreenChange()V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const/4 v0, 0x1

    .line 310
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->showLoadingTip(I)V

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    return-void
.end method

.method public showNoDataView()V
    .locals 3

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 318
    iput-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyDataSetChanged()V

    const/4 v0, 0x3

    .line 322
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->showLoadingTip(I)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setVisibility(I)V

    return-void
.end method

.method public updateLogo()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mDirRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mFirstVisibleItemPosition:I

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->mLastVisibleItemPosition:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePlayState()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->updatePlayAll()V

    return-void
.end method
