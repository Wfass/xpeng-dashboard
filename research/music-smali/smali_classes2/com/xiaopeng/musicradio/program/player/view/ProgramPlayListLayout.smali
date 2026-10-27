.class public Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "ProgramPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/player/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/program/player/view/a;",
        "Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/player/view/a;"
    }
.end annotation


# static fields
.field public static final SELECT_PAGE_ARRAY:[Ljava/lang/String;

.field public static final SORT_LABEL_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ProgramPlayListLayout"


# instance fields
.field private mEverSelected:Z

.field private mFirstInit:Z

.field private mFirstShow:Z

.field private mIvSelectPage:Lcom/xiaopeng/xui/widget/XImageView;

.field private mIvSort:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mLastHeadSpeechPosition:I

.field private mLoadingTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mPageListener:Landroid/view/View$OnClickListener;

.field private mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

.field private mScrollRun:Ljava/lang/Runnable;

.field private mSelectPageAdapter:Lblz;

.field private mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

.field private mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

.field private mTracksAdapter:Lbly;

.field private mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTvSort:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 74
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

    sput-object v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->SORT_LABEL_ARRAY:[Ljava/lang/String;

    .line 75
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

    sput-object v0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->SELECT_PAGE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstInit:Z

    .line 508
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstShow:Z

    .line 659
    new-instance p1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$2;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstInit:Z

    .line 508
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstShow:Z

    .line 659
    new-instance p1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$2;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstInit:Z

    .line 508
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstShow:Z

    .line 659
    new-instance p1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$2;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mEverSelected:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mEverSelected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lblz;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageAdapter:Lblz;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLastHeadSpeechPosition:I

    return p0
.end method

.method static synthetic access$2500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->showXmlyBuyDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->retrySort()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->updateDetailList(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->scrollToPlay()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->onClickSort()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->openPageView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private checkLoadMore()V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 556
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    sget v1, Lbly;->d:I

    invoke-virtual {v0, v1}, Lbly;->b(I)V

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkLoadMoreWhenFirstShow(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 546
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    if-eqz p1, :cond_0

    .line 547
    new-instance v0, Lcom/xiaopeng/musicradio/program/player/view/-$$Lambda$ProgramPlayListLayout$UGDC7RcB8BFioVGZNS0pr_KOEwk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/player/view/-$$Lambda$ProgramPlayListLayout$UGDC7RcB8BFioVGZNS0pr_KOEwk;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private checkPlayState(Z)V
    .locals 8

    .line 633
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 636
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->getPlayState()I

    move-result v1

    .line 637
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v2}, Lbly;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 639
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 640
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 642
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v2}, Lbly;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lbly;->a(II)V

    .line 643
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLastHeadSpeechPosition:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lbly;->a(II)V

    :cond_3
    if-eqz p1, :cond_4

    .line 653
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 654
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 655
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method private enableLayout(Z)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 487
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->refreshMiddle()V

    return-void
.end method

.method public static synthetic lambda$UGDC7RcB8BFioVGZNS0pr_KOEwk(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->checkLoadMore()V

    return-void
.end method

.method private onClickSort()V
    .locals 2

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mEverSelected:Z

    .line 470
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->h()V

    .line 471
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeAsc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    const-string v1, "timeDesc"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->h()V

    .line 475
    invoke-static {}, Lblk;->s()V

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->h()V

    .line 479
    invoke-static {}, Lblk;->t()V

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    return-void
.end method

.method private onSelectPageVisible()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f()Ljava/util/List;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectPageVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgramPlayListLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageAdapter:Lblz;

    invoke-virtual {v1, v0}, Lblz;->a(Ljava/util/List;)V

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageAdapter:Lblz;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->j()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lblz;->a(I)V

    .line 464
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    :goto_0
    return-void
.end method

.method private openPageView(Z)V
    .locals 4

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openPageView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 404
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->i()I

    move-result p1

    if-gtz p1, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->no_page_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setVisibility(I)V

    .line 415
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->onSelectPageVisible()V

    .line 416
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b()V

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 420
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setClickable(Z)V

    .line 422
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setAlpha(F)V

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_arrow_up_o:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 425
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->SELECT_PAGE_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v3, v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 432
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    .line 434
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setVisibility(I)V

    .line 435
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setVisibility(I)V

    .line 436
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b()V

    .line 437
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    .line 438
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 439
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setEnabled(Z)V

    .line 440
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setClickable(Z)V

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setAlpha(F)V

    .line 443
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_arrow_down_o:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 444
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bC:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1, v1, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 445
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->SELECT_PAGE_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v2, v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->refreshMiddle()V

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPageListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 450
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bC:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private refreshFeatureStart()V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 571
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 572
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    .line 573
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v0

    .line 574
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v2}, Lbly;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(II)V

    :cond_0
    return-void
.end method

.method private refreshMiddle()V
    .locals 0

    return-void
.end method

.method private retrySort()V
    .locals 2

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mEverSelected:Z

    .line 372
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->h()V

    .line 373
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    return-void
.end method

.method private scrollToPlay()V
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v0}, Lbly;->i()I

    move-result v0

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgramPlayListLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(I)V

    .line 670
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b()V

    return-void
.end method

.method private setupRefreshLayout()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/category/view/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/program/category/view/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setHeaderView(Lcom/lcodecore/tkrefreshlayout/b;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setOverScrollRefreshShow(Z)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setEnableOverScroll(Z)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setTargetView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setEnableLoadmore(Z)V

    return-void
.end method

.method private showXmlyBuyDialog()V
    .locals 3

    .line 391
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ProgramPlayListLayout"

    const-string v2, "showXmlyBuyDialog"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbtg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtg;

    .line 393
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lbtg;->startVipBuy(Landroid/content/Context;I)V

    return-void
.end method

.method private updateDetailList(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V
    .locals 3

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v1, p3}, Lbly;->b(Z)V

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g()Z

    move-result v2

    sget v2, Lbly;->f:I

    invoke-virtual {v1, v2, p3}, Lbly;->a(IZ)V

    .line 531
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lbly;->a(Ljava/util/List;)V

    .line 532
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstShow:Z

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->checkLoadMoreWhenFirstShow(Z)V

    .line 533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateTracks: ======== "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ProgramPlayListLayout"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 535
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mEverSelected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->tracks_selectpage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    .line 537
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstShow:Z

    if-nez p1, :cond_3

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, p3

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v0

    :goto_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->checkPlayState(Z)V

    .line 538
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstShow:Z

    .line 539
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->refreshFeatureStart()V

    .line 540
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->refreshMiddle()V

    .line 541
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLoadingTips:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 542
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setEnableRefresh(Z)V

    return-void
.end method


# virtual methods
.method public clearList()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbly;->b(Z)V

    const/4 v0, 0x1

    .line 698
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstShow:Z

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->createPresenter()Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;
    .locals 4

    .line 110
    new-instance v0, Lbly;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbly;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    .line 111
    new-instance v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 116
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rv_tracks_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    .line 117
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_album_sort:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSort:Lcom/xiaopeng/xui/widget/XTextView;

    .line 118
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rv_select_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    .line 119
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_album_select:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    .line 120
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->swipe_refresh:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    .line 121
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ll_selectpage:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 122
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ll_sort:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 123
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->ic_selectpage_sort_unnor:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mIvSort:Lcom/xiaopeng/xui/widget/XImageView;

    .line 124
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->allow_selectpage:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageLogo:Lcom/xiaopeng/xui/widget/XImageView;

    .line 125
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->logo_selectpage:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mIvSelectPage:Lcom/xiaopeng/xui/widget/XImageView;

    .line 126
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_loading_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLoadingTips:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 380
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_program_play_list:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 385
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 386
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->onNotifyList()V

    .line 387
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->refreshMiddle()V

    return-void
.end method

.method public onNone()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLoadingTips:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setEnableRefresh(Z)V

    return-void
.end method

.method public onNotifyList()V
    .locals 3

    .line 682
    new-instance v0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$3;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onTrackUpdating()V
    .locals 2

    const/4 v0, 0x0

    .line 620
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    .line 621
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v1}, Lbly;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipViewClickable(Z)V

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    :cond_0
    return-void
.end method

.method public onUpateType(Z)V
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onUpdatePlayState()V
    .locals 1

    const/4 v0, 0x1

    .line 629
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->checkPlayState(Z)V

    return-void
.end method

.method public onUpdateSort(Ljava/lang/String;)V
    .locals 4

    const-string v0, "timeAsc"

    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSort:Lcom/xiaopeng/xui/widget/XTextView;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_reverseorder:I

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 494
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mIvSort:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_rankingup_40:I

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 495
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setOrderState(Z)V

    .line 496
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->SORT_LABEL_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v2, v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSort:Lcom/xiaopeng/xui/widget/XTextView;

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->tracklist_normalorder:I

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 499
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mIvSort:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_ranking_40:I

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 500
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setOrderState(Z)V

    .line 501
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v2, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->SORT_LABEL_ARRAY:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->refreshMiddle()V

    .line 505
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bC:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onUpdateTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V
    .locals 2

    .line 511
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstInit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mFirstInit:Z

    .line 513
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$11;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 520
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->updateDetailList(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V

    :goto_0
    return-void
.end method

.method public onUpdateTracksError(ILjava/lang/String;)V
    .locals 3

    .line 581
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->common_tips_no_result:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setNoResultText(Ljava/lang/String;)V

    .line 593
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lbly;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 594
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    .line 595
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lbly;->notifyDataSetChanged()V

    .line 596
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    goto :goto_1

    .line 598
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    sget p2, Lbly;->g:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    .line 599
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    goto :goto_1

    .line 582
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->common_tips_network_error:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setNoResultText(Ljava/lang/String;)V

    .line 583
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lbly;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 584
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->common_tips_network_error:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    sget p2, Lbly;->g:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    goto :goto_1

    .line 588
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    .line 589
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    .line 602
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipViewClickable(Z)V

    .line 604
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    return-void
.end method

.method public onUpdateTracksPre(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbly;->c(Ljava/util/List;)V

    .line 610
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    const/4 p1, 0x1

    .line 611
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    .line 612
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTvSelectPage:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 613
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->checkPlayState(Z)V

    .line 614
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->refreshFeatureStart()V

    .line 615
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->refreshMiddle()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 712
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_1

    const-string p1, "VIEW_PLAY_LIST"

    if-nez p2, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->scrollToPlay()V

    .line 716
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$1;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSwiper:Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$4;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setOnRefreshListener(Lcom/lcodecore/tkrefreshlayout/g;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$5;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$6;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageAdapter:Lblz;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$8;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    invoke-virtual {v0, v1}, Lblz;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;)V

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    invoke-virtual {v0, v1}, Lbly;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$10;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPageListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mPageListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setAutoClickLoadingEnable(Z)V

    .line 132
    new-instance v0, Lblz;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lblz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageAdapter:Lblz;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageAdapter:Lblz;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 138
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v4, v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/program/b$b;->program_player_page_gap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/program/b$b;->dp_24:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/program/b$b;->dp_24:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 142
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setupRefreshLayout()V

    .line 145
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableLayout(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSort:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiStatfulButtonClick(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiStatfulButtonClick(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mLLSelectPage:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget-object v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->SELECT_PAGE_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mRvTrackList:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mSelectPageListView:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bC:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Ljava/lang/String;Lbxu;ZZ)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->enableViewVuiMode(Z)V

    return-void
.end method

.method public updatePaymentAuthorized(JZ)V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->mTracksAdapter:Lbly;

    invoke-virtual {v0, p1, p2, p3}, Lbly;->a(JZ)V

    return-void
.end method
