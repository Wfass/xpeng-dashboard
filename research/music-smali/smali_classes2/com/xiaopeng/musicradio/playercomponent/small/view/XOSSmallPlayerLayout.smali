.class public Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "XOSSmallPlayerLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/playercomponent/small/view/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/playercomponent/small/view/f;",
        "Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/playercomponent/small/view/f;"
    }
.end annotation


# static fields
.field private static final PAGE_ALBUM:I = 0x0

.field private static final PAGE_LRC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XOSSmallPlayerLayout"


# instance fields
.field private mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

.field private mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

.field private mIndicatorLayout:Landroid/widget/LinearLayout;

.field private mIndicatorViewFirst:Landroid/view/View;

.field private mIndicatorViewSecond:Landroid/view/View;

.field private mIsThreeOne:Z

.field private mLrcView:Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

.field private mSmallClick:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mStartPoint:Landroid/graphics/PointF;

.field private mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

.field private mThreeOneView:Landroid/view/View;

.field private mThreeTwoView:Landroid/view/View;

.field private mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mStartPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mStartPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mStartPoint:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/graphics/PointF;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mStartPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mLrcView:Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/a;)Lcom/xiaopeng/musicradio/playercomponent/small/view/a;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mLrcView:Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorViewFirst:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorViewSecond:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    return-object p0
.end method

.method static synthetic access$802(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private configLayout()V
    .locals 7

    .line 277
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIsThreeOne:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isThreeOne = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XOSSmallPlayerLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIsThreeOne:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 280
    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIsThreeOne:Z

    .line 281
    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIsThreeOne:Z

    if-eqz v4, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->infalteToSmall()V

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIsThreeOne:Z

    const/4 v6, 0x4

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIsThreeOne:Z

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 286
    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeTwoView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIsThreeOne:Z

    if-eqz v5, :cond_3

    move v3, v6

    :cond_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeTwoView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIsThreeOne:Z

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_4

    .line 290
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->resetMarqueeState()V

    :cond_4
    return-void
.end method

.method private infalteToSmall()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    sget v0, Lble$d;->viewstub_small_to:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 172
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$4;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->setLoveClick(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$5;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->setNextClick(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$6;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->setPlayPauseClick(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$7;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->setOpenPlayerListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->c()V

    return-void
.end method

.method private refreshProgressBar(II)V
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshProgressBar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XOSSmallPlayerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshProgressBar(II)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshProgressBar(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changeTheme()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->createPresenter()Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;
    .locals 1

    .line 81
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 86
    sget v0, Lble$d;->small_click:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mSmallClick:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    sget v0, Lble$d;->viewpager_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    .line 88
    sget v0, Lble$d;->layout_indicator:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorLayout:Landroid/widget/LinearLayout;

    .line 89
    sget v0, Lble$d;->view_first_ind:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorViewFirst:Landroid/view/View;

    .line 90
    sget v0, Lble$d;->view_second_ind:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorViewSecond:Landroid/view/View;

    .line 91
    sget v0, Lble$d;->layout_two_one:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneView:Landroid/view/View;

    .line 92
    sget v0, Lble$d;->layout_three_two:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeTwoView:Landroid/view/View;

    .line 93
    sget v0, Lble$d;->view_player_eff:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 311
    sget v0, Lble$e;->layout_xos_small_player:I

    return v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 4

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->getContentViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->a(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 300
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->addView(Landroid/view/View;)V

    .line 304
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XOSSmallPlayerLayout Layout.inflate.cost: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XOSSmallPlayerLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public hidePlayState()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->configLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 224
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onLayout(ZIIII)V

    .line 225
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->configLayout()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->b()V

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->onPause()V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->onPause()V

    :cond_1
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 231
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->configLayout()V

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c()V

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->onResume()V

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->onResume()V

    :cond_1
    return-void
.end method

.method public openPlayer()V
    .locals 3

    const-string v0, "XOSSmallPlayerLayout"

    const-string v1, "openPlayer"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OpenPlayer"

    .line 208
    invoke-static {v1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->setCurrentPageKey(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->start()V

    .line 210
    new-instance v1, Lbli$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbli$a;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lblk;->j()V

    const-string v1, "onClick: =========="

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshBg(Landroid/graphics/Bitmap;ZZ)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Landroid/graphics/Bitmap;ZZZ)V

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mLrcView:Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/a;->refreshBg(Landroid/graphics/Bitmap;ZZ)V

    :cond_0
    return-void
.end method

.method public refreshCover(I)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->m()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->n()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->setDefaultAlbum(III)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mLrcView:Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    if-eqz v0, :cond_1

    .line 335
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/a;->setDefaultAlbum(I)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_2

    .line 338
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->m()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->n()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->setDefaultAlbum(III)V

    :cond_2
    return-void
.end method

.method public refreshCover(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->m()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->n()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshCover(Landroid/graphics/drawable/Drawable;II)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mLrcView:Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    if-eqz v0, :cond_1

    .line 321
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/a;->refreshCover(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_2

    .line 324
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->m()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->n()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshCover(Landroid/graphics/drawable/Drawable;II)V

    :cond_2
    return-void
.end method

.method public refreshInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public refreshPlayState(I)V
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XOSSmallPlayerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshPlayState(I)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshPlayState(I)V

    :cond_1
    return-void
.end method

.method public refreshPos(III)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshPos(III)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshPos(III)V

    :cond_1
    return-void
.end method

.method public refreshType(II)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    sget v1, Lble$a;->small_player_day_mask_color:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->setMaskColor(I)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mBgEffView:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    const v1, 0x3e75c28f    # 0.24f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->setViewAlpha(F)V

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->l()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshType(IIZ)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v0, :cond_1

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->l()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshType(IIZ)V

    .line 382
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->refreshProgressBar(II)V

    const/4 p2, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 392
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->setCurrentItem(I)V

    .line 393
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->setNoScroll(Z)V

    .line 395
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->setClickable(Z)V

    goto :goto_2

    .line 384
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 385
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 387
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->setNoScroll(Z)V

    .line 390
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->setClickable(Z)V

    :goto_2
    return-void
.end method

.method public reset(I)V
    .locals 3

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, v0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->updateLove(ZZ)V

    .line 433
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v1, :cond_0

    .line 434
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->n()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->reset(II)V

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mLrcView:Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    if-eqz v1, :cond_1

    .line 437
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/a;->reset(I)V

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v1, :cond_2

    .line 440
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->n()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->reset(II)V

    .line 442
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->setClickable(Z)V

    .line 443
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 445
    invoke-virtual {p0, v0, p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->refreshPos(III)V

    return-void
.end method

.method public resetView(F)V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->matchCoverAnimTime(F)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 248
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->matchCoverAnimTime(F)V

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->setPlayerALbumShow(Z)V

    :cond_2
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mSmallClick:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeTwoView:Landroid/view/View;

    const-string v1, "TRANS_NAME_BG"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 101
    sget v0, Lble$d;->view_content_anim_stub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "TRANS_NAME_CONTENT"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;)V

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    new-instance v2, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mViewPager:Lcom/xiaopeng/musicradio/widget/TouchViewPager;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/TouchViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    return-void
.end method

.method public startCloseAnim()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->setPlayerALbumShow(Z)V

    :cond_0
    return-void
.end method

.method public updateLove(ZZ)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->updateLove(ZZ)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->mThreeOneSmallPlayerLayout:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->updateLove(ZZ)V

    :cond_1
    return-void
.end method
