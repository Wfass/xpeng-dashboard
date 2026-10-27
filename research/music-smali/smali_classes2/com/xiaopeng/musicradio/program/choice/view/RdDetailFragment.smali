.class public Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "RdDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/musicradio/program/category/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/fragment/sub/detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/program/category/view/b;",
        "Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/xiaopeng/musicradio/program/category/view/b;"
    }
.end annotation


# static fields
.field public static final SELECT_PAGE_ARRAY:[Ljava/lang/String;

.field public static final SORT_LABEL_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RdDetailFragment"


# instance fields
.field private mAlbumLogo:Lcom/xiaopeng/xui/widget/XImageView;

.field private mCenterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCuttingLine:Lcom/xiaopeng/xui/widget/XImageView;

.field private mEnableRefresh:Z

.field private mEverSelected:Z

.field private mHasUpdateData:Z

.field private mIsSetPreviousText:Z

.field private mIsSetPreviousTextFull:Z

.field private mIvSelectPage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mIvSort:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mLine13:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLineLL:Landroid/view/View;

.field protected mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

.field private mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

.field protected mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

.field protected mParamAlbumBeanGson:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "album_bean_gson"
    .end annotation
.end field

.field protected mParamAlbumId:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "album_id"
    .end annotation
.end field

.field protected mParamAutoPlay:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "auto_play"
    .end annotation
.end field

.field protected mParamTrackId:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "track_id"
    .end annotation
.end field

.field private mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

.field private mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

.field private mPlayTopView:Landroid/view/View;

.field private mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

.field private mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

.field private mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mSelectPageAdapter:Lblz;

.field private mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

.field private mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSelectPageLogoRes:I

.field private mShowPreTrackAfterPageSelected:Z

.field private mSortRes:I

.field private mSortSelectLayout:Landroid/widget/LinearLayout;

.field private mStatusType:Lbtq;

.field private mStatusTypeFull:Lbtq;

.field private mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

.field private mTitleTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mTopHeight:I

.field private mTopRightLabel:Lcom/xiaopeng/xui/widget/XImageView;

.field private mTracksAdapter:Lbly;

.field private mTvAlbumPlayCount:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

.field private mTvPreviousTrack:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTvSort:Lcom/xiaopeng/xui/widget/XTextView;

.field private mllBtn13:Landroid/widget/LinearLayout;

.field public playModeVuiLabels:[Ljava/lang/String;

.field private vuiLablels:[Ljava/lang/String;

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 107
    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_reverseorder:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_normalorder:I

    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->SORT_LABEL_ARRAY:[Ljava/lang/String;

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->tracks_selectpage_state:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->tracks_selectList_state:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->SELECT_PAGE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, 0x3

    .line 106
    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_play_all:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_play_goon:I

    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v5, Lcom/xiaopeng/musicradio/program/b$g;->vui_label_stop:I

    invoke-virtual {v2, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->playModeVuiLabels:[Ljava/lang/String;

    .line 136
    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_arrow_down_o:I

    iput v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogoRes:I

    .line 137
    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_ranking_40:I

    iput v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSortRes:I

    .line 140
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mHasUpdateData:Z

    .line 152
    new-array v1, v4, [Ljava/lang/String;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->vui_play_last:I

    .line 153
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->vuiLablels:[Ljava/lang/String;

    .line 156
    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lbez$g;->bt_play_all:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lbez$g;->bt_continue_all:I

    .line 157
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lbez$g;->vui_label_stop:I

    .line 158
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->vuilabels:[Ljava/lang/String;

    .line 179
    sget-object v0, Lbtq;->STATUS_CONTRACT:Lbtq;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mStatusType:Lbtq;

    .line 180
    sget-object v0, Lbtq;->STATUS_CONTRACT:Lbtq;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mStatusTypeFull:Lbtq;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTitleTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableSwiperRefresh(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mEverSelected:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mEverSelected:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lblz;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->openPageView(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Lbtq;)Lbtq;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mStatusType:Lbtq;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showXmlyBuyDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Lbtq;)Lbtq;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mStatusTypeFull:Lbtq;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->stopPlay()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private checkPlayState()V
    .locals 10

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lbly;->a(II)V

    .line 931
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 933
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->u()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updatePlayState(I)V

    .line 935
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    return-void

    .line 940
    :cond_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v2

    invoke-virtual {v2}, Lbmt;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v2

    invoke-virtual {v2}, Lbmt;->y()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reading_album_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 941
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v2

    invoke-virtual {v2}, Lbmt;->y()Ljava/lang/String;

    move-result-object v2

    const-string v3, "headspeech"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 949
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v4, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 954
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v3

    invoke-virtual {v3}, Lbmt;->getPlayState()I

    move-result v3

    .line 955
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v4}, Lbly;->g()Ljava/util/List;

    move-result-object v4

    .line 956
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 957
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    const/4 v2, 0x1

    .line 959
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lbly;->a(II)V

    :cond_5
    if-nez v2, :cond_6

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0, v1, v1}, Lbly;->a(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method private enableLayout(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 757
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->refreshMiddle()V

    .line 758
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 759
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setClickable(Z)V

    .line 760
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setClickable(Z)V

    if-eqz p1, :cond_1

    .line 762
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 763
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setSortEnable(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 766
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setSortEnable(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private enableSwiperRefresh(Z)V
    .locals 2

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSwiperRefresh: bEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdDetailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setEnableRefresh(Z)V

    return-void
.end method

.method private findAndGoOnPlayingItem()Z
    .locals 9

    .line 882
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reading_album_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 886
    :cond_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 887
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 891
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v4, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 896
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v2}, Lbly;->g()Ljava/util/List;

    move-result-object v2

    .line 897
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 898
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 900
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n()V

    .line 901
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lbly;->a(II)V

    move v1, v4

    :cond_4
    if-nez v1, :cond_5

    .line 907
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_5

    .line 909
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n()V

    move v1, v4

    :cond_5
    :goto_0
    return v1
.end method

.method private onClickSort()V
    .locals 4

    .line 784
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->h()V

    const/4 v0, 0x0

    .line 785
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mEverSelected:Z

    .line 786
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 787
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeAsc"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    const-string v2, "timeDesc"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->h()V

    .line 790
    invoke-static {v0}, Lbmx;->b(I)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->h()V

    .line 794
    invoke-static {v3}, Lbmx;->b(I)V

    .line 796
    :goto_0
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showLoadingTip(I)V

    return-void
.end method

.method private onSelectPageVisible()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lblz;->a(Ljava/util/List;)V

    .line 750
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lblz;->a(I)V

    return-void
.end method

.method private openPageView(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 691
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 694
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c()I

    move-result p1

    if-gtz p1, :cond_1

    .line 695
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->no_page_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 696
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setSortEnable(Z)V

    return-void

    .line 700
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mShowPreTrackAfterPageSelected:Z

    if-eqz p1, :cond_2

    .line 701
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 704
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setVisibility(I)V

    .line 705
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->setVisibility(I)V

    .line 707
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->onSelectPageVisible()V

    .line 709
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    .line 710
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 712
    sget p1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_arrow_up_primary:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogoRes:I

    .line 713
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogoRes:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 714
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->SELECT_PAGE_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v3, v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setSortEnable(Z)V

    .line 716
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setPlayAllBtnEnable(Z)V

    .line 717
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setPlayAllBtnEnable(Z)V

    .line 718
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$a;->m_color_primary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 719
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIvSelectPage:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_anthology_primary:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 721
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 725
    :cond_4
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mShowPreTrackAfterPageSelected:Z

    if-eqz p1, :cond_5

    .line 726
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 728
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setVisibility(I)V

    .line 729
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->setVisibility(I)V

    .line 730
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    .line 731
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 732
    sget p1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_arrow_down_o:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogoRes:I

    .line 733
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogoRes:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 734
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setSortEnable(Z)V

    .line 735
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setPlayAllBtnEnable(Z)V

    .line 736
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setPlayAllBtnEnable(Z)V

    .line 737
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->SELECT_PAGE_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v2, v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 739
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIvSelectPage:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_anthology_o:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 741
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 742
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 743
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->refreshMiddle()V

    return-void
.end method

.method private refreshMiddle()V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getCurrentTextColor()I

    return-void
.end method

.method private setPrevious()V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    goto :goto_2

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    goto :goto_2

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setVisibility(I)V

    .line 386
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getIntro()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getShortIntro()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    .line 392
    :cond_6
    :goto_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setPreviousText(Ljava/lang/String;)V

    return-void
.end method

.method private setPreviousText(Ljava/lang/String;)V
    .locals 2

    .line 1252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIsSetPreviousText:Z

    if-nez v0, :cond_0

    .line 1254
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIsSetPreviousText:Z

    .line 1255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setContent(Ljava/lang/String;)V

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIsSetPreviousTextFull:Z

    if-nez v0, :cond_2

    .line 1257
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIsSetPreviousTextFull:Z

    .line 1258
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 1261
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->detail_no_desc:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->detail_no_desc:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumPlayCount:Lcom/xiaopeng/xui/widget/XTextView;

    const/high16 v0, -0x3de00000    # -40.0f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setTranslationY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setPreviousTextColor()V
    .locals 5

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setTextColor(I)V

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setContractTextColor(I)V

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setExpandTextColor(I)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setSelfTextColor(I)V

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setTextColor(I)V

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setContractTextColor(I)V

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setExpandTextColor(I)V

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setSelfTextColor(I)V

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_text_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$a;->m_color_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 421
    instance-of v0, v0, Landroid/text/SpannableString;

    if-eqz v0, :cond_4

    instance-of v0, v1, Landroid/text/SpannableString;

    if-eqz v0, :cond_4

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 423
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableString;

    .line 424
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 425
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->detail_no_desc:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mStatusType:Lbtq;

    sget-object v3, Lbtq;->STATUS_CONTRACT:Lbtq;

    if-ne v1, v3, :cond_1

    .line 428
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_1

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b(Landroid/text/SpannableStringBuilder;)V

    .line 432
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->detail_no_desc:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 435
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mStatusTypeFull:Lbtq;

    sget-object v3, Lbtq;->STATUS_CONTRACT:Lbtq;

    if-ne v1, v3, :cond_3

    .line 436
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_2

    .line 438
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b(Landroid/text/SpannableStringBuilder;)V

    .line 440
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private setSortEnable(Z)V
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private setupRefreshLayout()V
    .locals 3

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/category/view/d;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/program/category/view/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setHeaderView(Lcom/lcodecore/tkrefreshlayout/b;)V

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setOverScrollRefreshShow(Z)V

    .line 778
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setEnableOverScroll(Z)V

    .line 779
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setTargetView(Landroid/view/View;)V

    .line 780
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setEnableLoadmore(Z)V

    return-void
.end method

.method private showPreviousTrack(Z)V
    .locals 2

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPreviousTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdDetailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 924
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mShowPreTrackAfterPageSelected:Z

    .line 925
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private showXmlyBuyDialog()V
    .locals 3

    .line 684
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "RdDetailFragment"

    const-string v2, "showXmlyBuyDialog"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbtg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtg;

    .line 686
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lbtg;->startVipBuy(Landroid/content/Context;I)V

    return-void
.end method

.method private stopPlay()V
    .locals 3

    .line 821
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->pause()V

    .line 822
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->i()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lbly;->a(II)V

    return-void
.end method

.method private syncPlayButtonState(I)V
    .locals 5

    .line 826
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setPlayState(I)V

    .line 827
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setPlayState(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 834
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->vuilabels:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 836
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->vuilabels:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private updateInvisibleItemFirstIndex(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;Ljava/lang/String;)V
    .locals 2

    .line 1039
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbly;->g()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lbly;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1041
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lbly;->g()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RdDetailFragment"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableVuiInvisibleFeature(II)V

    :cond_0
    return-void
.end method

.method private updatePlayState(I)V
    .locals 6

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdDetailFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_play_all:I

    .line 846
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    .line 848
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 849
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showPreviousTrack(Z)V

    .line 850
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->syncPlayButtonState(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 855
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showPreviousTrack(Z)V

    .line 856
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->syncPlayButtonState(I)V

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 860
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 861
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->syncPlayButtonState(I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    const/4 v5, 0x5

    if-ne p1, v5, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 864
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 865
    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->syncPlayButtonState(I)V

    .line 866
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showPreviousTrackIfNeed()V

    goto :goto_0

    .line 869
    :cond_4
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 870
    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->syncPlayButtonState(I)V

    .line 871
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showPreviousTrackIfNeed()V

    .line 874
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v4, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v5, Lcom/xiaopeng/musicradio/program/b$g;->vui_play_last:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v4, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiAction(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->enableViewVuiMode(Z)V

    .line 877
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    if-eq p1, v1, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :cond_6
    :goto_1
    invoke-static {v0, v4, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 878
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private updateTopRightLabel(IZ)V
    .locals 1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 1028
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTopRightLabel:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1030
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTopRightLabel:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lcom/xiaopeng/musicradio/program/b$c;->ic_xmly_cover_label_vip_16:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1032
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTopRightLabel:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lcom/xiaopeng/musicradio/program/b$c;->ic_xmly_cover_label_payment_16:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 1034
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTopRightLabel:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateViewData()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-static {v0}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/program/b$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAlbumLogo:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v1, v0, v2, v3}, Lbxo;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$c;->reading_last_track_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lblz;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    invoke-virtual {v0}, Lblz;->notifyDataSetChanged()V

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->refreshMiddle()V

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->refreshLove(Z)V

    .line 364
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setPrevious()V

    .line 365
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setPreviousTextColor()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;
    .locals 1

    .line 670
    new-instance v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 3

    .line 189
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rv_tracks_list_detail:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 190
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_album_playcount:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumPlayCount:Lcom/xiaopeng/xui/widget/XTextView;

    .line 191
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_album_sort:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSort:Lcom/xiaopeng/xui/widget/XTextView;

    .line 192
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rv_select_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    .line 193
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_album_select:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    .line 194
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->allow_selectpage:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

    .line 195
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ll_album_previous_track:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 196
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_album_previous_track:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvPreviousTrack:Lcom/xiaopeng/xui/widget/XTextView;

    .line 197
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->swipe_refresh:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    .line 198
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->txt_album_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    .line 199
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ll_selectpage:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 200
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ll_sort:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 201
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ic_selectpage_sort_unnor:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIvSort:Lcom/xiaopeng/xui/widget/XImageView;

    .line 202
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->logo_selectpage:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIvSelectPage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 203
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rd_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTitleTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 204
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->play_all_layout_top:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    .line 205
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->iv_album_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAlbumLogo:Lcom/xiaopeng/xui/widget/XImageView;

    .line 206
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->center_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mCenterLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 207
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->top_right_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTopRightLabel:Lcom/xiaopeng/xui/widget/XImageView;

    .line 208
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->btn_subscribe:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    .line 209
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->expand_text_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    .line 210
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->expand_text_view_full:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    .line 211
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->play_top_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayTopView:Landroid/view/View;

    .line 212
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->sort_slect_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSortSelectLayout:Landroid/widget/LinearLayout;

    .line 213
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->btn_subscribe_1_3:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    .line 214
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->play_all_layout_top_1_3:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    .line 215
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->btn_ll_1_3:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mllBtn13:Landroid/widget/LinearLayout;

    .line 216
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->line_ll:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLineLL:Landroid/view/View;

    .line 217
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->cutting_line_1_3:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLine13:Lcom/xiaopeng/xui/widget/XImageView;

    .line 219
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/view/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/a;-><init>(Landroid/content/Context;)V

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    const-string v2, "mContext"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->layout_cutting_line:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mCuttingLine:Lcom/xiaopeng/xui/widget/XImageView;

    .line 224
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 225
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->music_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    .line 227
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 184
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_rd_detail_fragment:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 1395
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "arguments"

    .line 1399
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 675
    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->au(I)Ljava/lang/String;

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

    .line 680
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->an(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1324
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ll_sort:I

    if-ne p1, v0, :cond_0

    .line 1325
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 1326
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->onClickSort()V

    goto :goto_0

    .line 1327
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ll_selectpage:I

    if-ne p1, v0, :cond_2

    .line 1328
    invoke-static {}, Lbmx;->h()V

    .line 1329
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 1330
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1331
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->openPageView(Z)V

    .line 1333
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setSortEnable(Z)V

    goto :goto_0

    .line 1335
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->openPageView(Z)V

    .line 1341
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setSortEnable(Z)V

    goto :goto_0

    .line 1343
    :cond_2
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->play_all_layout:I

    if-ne p1, v0, :cond_4

    .line 1344
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 1345
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1346
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->stopPlay()V

    goto :goto_0

    .line 1348
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->playAll()V

    goto :goto_0

    .line 1350
    :cond_4
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ll_album_previous_track:I

    if-ne p1, v0, :cond_5

    .line 1351
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 1352
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->playAll()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1404
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1405
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updateViewData()V

    .line 1407
    new-instance p1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$7;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$7;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 1414
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_2

    .line 1416
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 1417
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_0

    .line 1418
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 1419
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    .line 1421
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 1424
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setPrevious()V

    .line 1425
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setPreviousTextColor()V

    return-void
.end method

.method public onNetworkValid()V
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k()V

    :cond_0
    return-void
.end method

.method public onTrackUpdating()V
    .locals 1

    const/4 v0, 0x0

    .line 1128
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 1129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1130
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showLoadingTip(I)V

    :cond_0
    return-void
.end method

.method public onUpdateItemPlayState(I)V
    .locals 11

    .line 1088
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 1090
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updatePlayState(I)V

    .line 1091
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1, v2, v2}, Lbly;->a(II)V

    return-void

    .line 1095
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RdDetailFragment"

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updatePlayState(I)V

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-ne p1, v5, :cond_3

    .line 1106
    :cond_1
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1108
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v4}, Lbly;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 1110
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lbly;->a(II)V

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoveState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ii="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v5

    :cond_3
    if-nez v0, :cond_4

    .line 1122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1, v2, v2}, Lbly;->a(II)V

    :cond_4
    return-void
.end method

.method public onUpdateSort(Ljava/lang/String;)V
    .locals 4

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateSort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdDetailFragment"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeAsc"

    .line 1150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSort:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_reverseorder:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 1152
    sget p1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_ranking_40:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSortRes:I

    .line 1153
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setOrderState(Z)V

    .line 1154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->SORT_LABEL_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v2, v0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "timeDesc"

    .line 1155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSort:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_normalorder:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 1157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setOrderState(Z)V

    .line 1158
    sget p1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_rankingup_40:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSortRes:I

    .line 1159
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->SORT_LABEL_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v3, v0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1162
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setOrderState(Z)V

    .line 1163
    sget p1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_ranking_40:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSortRes:I

    .line 1164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSort:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_reverseorder:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 1166
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mIvSort:Lcom/xiaopeng/xui/widget/XImageView;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSortRes:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 1167
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->refreshMiddle()V

    .line 1169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onUpdateSpecialTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 3

    const/4 v0, 0x0

    .line 1003
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showLoadingTip(I)V

    .line 1006
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 1011
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 1013
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mEverSelected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->tracks_selectpage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbly;->b(Ljava/util/List;)V

    .line 1016
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    sget v1, Lbly;->e:I

    invoke-virtual {v0, v1}, Lbly;->b(I)V

    goto :goto_1

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    sget v1, Lbly;->f:I

    invoke-virtual {v0, v1}, Lbly;->b(I)V

    .line 1022
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->checkPlayState()V

    const-string v0, "onUpdateSpecialTracks:"

    .line 1023
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updateInvisibleItemFirstIndex(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 1008
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->onUpdateTracksError(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdateTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 3

    const/4 v0, 0x0

    .line 971
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showLoadingTip(I)V

    .line 972
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 977
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 979
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mEverSelected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->tracks_selectpage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$6;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 989
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbly;->a(Ljava/util/List;)V

    .line 991
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    sget v1, Lbly;->e:I

    invoke-virtual {v0, v1}, Lbly;->b(I)V

    goto :goto_1

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    sget v1, Lbly;->f:I

    invoke-virtual {v0, v1}, Lbly;->b(I)V

    .line 997
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->checkPlayState()V

    const-string v0, "onUpdateTracks:"

    .line 998
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updateInvisibleItemFirstIndex(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 974
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->onUpdateTracksError(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdateTracksError(ILjava/lang/String;)V
    .locals 3

    .line 1049
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1059
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->copyright_restrict_hint:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lbly;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 1061
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showLoadingTip(I)V

    .line 1062
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lbly;->notifyDataSetChanged()V

    .line 1063
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    goto :goto_0

    .line 1065
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    sget p2, Lbly;->g:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    .line 1067
    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    goto :goto_3

    .line 1050
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->common_tips_network_error:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lbly;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1052
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showLoadingTip(I)V

    .line 1053
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->common_tips_network_error:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    .line 1055
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showLoadingTip(I)V

    .line 1057
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    sget p2, Lbly;->g:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    .line 1069
    :goto_3
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updatePlayState(I)V

    .line 1071
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 1072
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    return-void
.end method

.method public onUpdateTracksPre(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbly;->c(Ljava/util/List;)V

    .line 1078
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    const/4 v0, 0x1

    .line 1079
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 1080
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->checkPlayState()V

    const-string v0, "onUpdateTracksPre:"

    .line 1083
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updateInvisibleItemFirstIndex(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;Ljava/lang/String;)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 1361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    if-eqz v0, :cond_5

    .line 1362
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1363
    :cond_0
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1364
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->vuilabels:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_5

    .line 1365
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1366
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 1377
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p2, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1378
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 1379
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->stopPlay()V

    .line 1380
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_1

    .line 1382
    :cond_2
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->vui_feed_back_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 1383
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_1

    .line 1368
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p2, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1369
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 1370
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->playAll()V

    .line 1371
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_1

    .line 1373
    :cond_4
    new-instance p2, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->vui_feed_back_play:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p2

    .line 1374
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public playAll()V
    .locals 4

    .line 1193
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->findAndGoOnPlayingItem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->g()Ljava/util/List;

    move-result-object v0

    .line 1197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 1199
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v3, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1202
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v3, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setChannelId(I)V

    .line 1203
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1206
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public refreshLove(Z)V
    .locals 2

    .line 1137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setLoveState(Z)V

    .line 1139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setSelected(Z)V

    .line 1140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setLoveState(Z)V

    .line 1141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setSelected(Z)V

    .line 1142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 1143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public refreshMediaSource()V
    .locals 10

    .line 1286
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v2}, Lbly;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    const/4 v5, 0x0

    .line 1292
    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v6, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1293
    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v5, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_0

    .line 1296
    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v6, :cond_0

    .line 1297
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1298
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v3}, Lbly;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1299
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v4, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v6, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOrderNum()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(I)V

    .line 1301
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ltz v3, :cond_4

    .line 1305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Ljava/util/List;I)V

    :cond_4
    return-void
.end method

.method public refreshTrackList()V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->notifyDataSetChanged()V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 10

    .line 1429
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->scrollTo(II)V

    .line 1430
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updateViewData()V

    .line 1432
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->notifyDataSetChanged()V

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    .line 1437
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    .line 1438
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_0

    .line 1439
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1440
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    .line 1442
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 1445
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    invoke-virtual {v0}, Lblz;->notifyDataSetChanged()V

    .line 1446
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mCuttingLine:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1447
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSortSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1448
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1449
    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v5

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/16 v8, 0x8

    if-eqz v5, :cond_4

    .line 1450
    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->setMaxLines(I)V

    .line 1451
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v9, 0x432a0000    # 170.0f

    invoke-static {v5, v9}, Lapf;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 1452
    sget v5, Lcom/xiaopeng/musicradio/program/b$d;->play_top_view:I

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1453
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1454
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1455
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v2, v5}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1456
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, -0x3e400000    # -24.0f

    invoke-static {v2, v6}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1458
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1460
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setVisibility(I)V

    .line 1461
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setVisibility(I)V

    .line 1462
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setVisibility(I)V

    .line 1463
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setVisibility(I)V

    .line 1464
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mllBtn13:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1465
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mCuttingLine:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 1466
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLineLL:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1467
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLine13:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_1

    .line 1470
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->setMaxLines(I)V

    .line 1471
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v9, 0x43d80000    # 432.0f

    invoke-static {v5, v9}, Lapf;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 1472
    sget v5, Lcom/xiaopeng/musicradio/program/b$d;->play_top_view:I

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1473
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1474
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1475
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1476
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1478
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v2, v5}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1480
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setVisibility(I)V

    .line 1481
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setVisibility(I)V

    .line 1482
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setVisibility(I)V

    .line 1483
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setVisibility(I)V

    .line 1484
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mllBtn13:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1485
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mCuttingLine:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 1486
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLineLL:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1487
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLine13:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v8}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 1489
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mCuttingLine:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSortSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setPrevious()V

    .line 1495
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setPreviousTextColor()V

    .line 1496
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 1497
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 1498
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 1499
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public scrollToTrackItem(J)V
    .locals 4

    .line 1269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    if-eqz v0, :cond_1

    .line 1270
    invoke-virtual {v0}, Lbly;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1271
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1272
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 1273
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1274
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$11;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$11;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$12;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$12;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPlayAllLogoLayout13:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$13;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$13;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoveBtn13:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$14;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$14;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$15;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$15;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setOnRefreshListener(Lcom/lcodecore/tkrefreshlayout/g;)V

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lblz;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;)V

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lbly;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 7

    .line 235
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    const/4 v0, 0x1

    .line 236
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableSwiperRefresh(Z)V

    .line 237
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->setOnTopListener(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout$a;)V

    .line 264
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageLogoRes:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 266
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTitleTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 267
    new-instance v1, Lbly;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lbly;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    .line 268
    new-instance v1, Lblz;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lblz;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiStatfulButtonClick(Landroid/view/View;)V

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiStatfulButtonClick(Landroid/view/View;)V

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v2, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->SELECT_PAGE_ARRAY:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$8;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-direct {v2, p0, v5}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$8;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 283
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->copyright_restrict_hint:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    .line 284
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 286
    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v2, v4}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(II)V

    .line 287
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 288
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    .line 291
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    .line 297
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-direct {v5, v6, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 299
    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lapf;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    const/16 v2, 0x30

    .line 300
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    const/16 v2, 0x64

    .line 301
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 302
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 303
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0, v0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    .line 305
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setupRefreshLayout()V

    .line 306
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->enableLayout(Z)V

    .line 308
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLPreviousTrack:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-static {v1, v1}, Lcom/xiaopeng/musicradio/utils/ai;->a(Landroid/view/View;Landroid/view/View;)V

    .line 310
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Landroid/content/Intent;)V

    .line 312
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 313
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageAdapter:Lblz;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 314
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 315
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x432a0000    # 170.0f

    invoke-static {v2, v4}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 317
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->setMaxLines(I)V

    goto :goto_1

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x43d80000    # 432.0f

    invoke-static {v2, v4}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 320
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->setMaxLines(I)V

    .line 322
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->reviewOnScreenChange()V

    .line 324
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updateViewData()V

    .line 326
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->b(Lcom/xiaopeng/xui/vui/VuiView;)V

    .line 327
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTitleTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTitleTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitleVisible(Z)V

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousText:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$9;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setExpandOrContractClickListener(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;)V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPreviousTextFullScreen:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$10;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setExpandOrContractClickListener(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 805
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 803
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    if-nez p1, :cond_2

    .line 808
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setVisibility(I)V

    goto :goto_2

    .line 810
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public showPreviousTrackIfNeed()V
    .locals 6

    .line 1174
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->isDetached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mSelectPageListView:Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1177
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showPreviousTrack(Z)V

    .line 1178
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvPreviousTrack:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->rd_previous_track_format:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v5, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->r()Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1180
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showPreviousTrack(Z)V

    :goto_0
    return-void
.end method

.method public updateData()V
    .locals 4

    .line 1212
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mHasUpdateData:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 1213
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mHasUpdateData:Z

    .line 1214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPlayCount()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 1216
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumPlayCount:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mAttachedContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/xiaopeng/musicradio/utils/be;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumPlayCount:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumPlayCount:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 1222
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 1226
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1230
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1232
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTvAlbumTitle:Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTitleTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->refreshLove(Z)V

    .line 1237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getIntro()Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getShortIntro()Ljava/lang/String;

    .line 1243
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->isAuthorized()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updateTopRightLabel(IZ)V

    .line 1244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k()V

    .line 1245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->u()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updatePlayState(I)V

    .line 1246
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->showPreviousTrackIfNeed()V

    .line 1247
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->updateViewData()V

    :cond_4
    return-void
.end method

.method public updatePaymentAuthorized(JZ)V
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mTracksAdapter:Lbly;

    invoke-virtual {v0, p1, p2, p3}, Lbly;->a(JZ)V

    return-void
.end method
