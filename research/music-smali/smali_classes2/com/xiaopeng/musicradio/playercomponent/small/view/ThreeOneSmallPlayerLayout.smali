.class public Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "ThreeOneSmallPlayerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmallPlayerAlbumLayout"


# instance fields
.field private mAlbumLayout:Landroid/view/View;

.field private mDefaultSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDefaultTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDisableLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLoveListener:Landroid/view/View$OnClickListener;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNextView:Landroid/view/View;

.field private mOpenPlayerListener:Landroid/view/View$OnClickListener;

.field private mPlayPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

.field private mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

.field private mSubTitleTv:Landroid/widget/TextView;

.field private mTitleTv:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mOpenPlayerListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mLoveListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mNextListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lble$e;->layout_three_one_small_player:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget v0, Lble$d;->layout_album_content_to:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    .line 72
    sget v0, Lble$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mTitleTv:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    .line 73
    sget v0, Lble$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mSubTitleTv:Landroid/widget/TextView;

    .line 74
    sget v0, Lble$d;->img_love:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 75
    sget v0, Lble$d;->img_love_disable:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mDisableLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 76
    sget v0, Lble$d;->tv_title_default:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mDefaultTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 77
    sget v0, Lble$d;->tv_sub_title_default:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mDefaultSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 79
    sget v0, Lble$d;->img_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    .line 80
    sget v0, Lble$d;->progress_music:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XProgressBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    .line 81
    sget v0, Lble$d;->layout_next:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mNextView:Landroid/view/View;

    .line 83
    sget v0, Lble$d;->layout_album:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mAlbumLayout:Landroid/view/View;

    .line 85
    sget v0, Lble$d;->view_click:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mNextView:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$4;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mNextView:Landroid/view/View;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;I)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;I)V

    return-void
.end method

.method private refreshCoverImgScale(IIZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverImgScale(IZ)V

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale()V

    :cond_1
    return-void
.end method

.method private refreshMarqueeStateWhenPlayStateChange(I)V
    .locals 1

    .line 131
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v0

    invoke-virtual {v0}, Laqz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->isResume()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshMarqueeState(Z)V

    :cond_1
    return-void
.end method

.method private refreshMarqueeStateWhenResumeChange(Z)V
    .locals 1

    .line 140
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v0

    invoke-virtual {v0}, Laqz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshMarqueeState(Z)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 144
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshMarqueeState(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public enableLove(Z)V
    .locals 4

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallPlayerAlbumLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mDisableLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method public getAlbumView()Landroid/view/View;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mAlbumLayout:Landroid/view/View;

    return-object v0
.end method

.method public getCoverPlayTime()F
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getCoverAniPlayTime()F

    move-result v0

    return v0
.end method

.method public getDefaultDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getDefaultCover(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public matchCoverAnimTime(F)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->matchCoverAnimTime(F)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshMarqueeStateWhenResumeChange(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->onResume()V

    :cond_0
    const/4 v0, 0x1

    .line 173
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshMarqueeStateWhenResumeChange(Z)V

    return-void
.end method

.method public refreshCover(Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshDefaultCover(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 233
    invoke-direct {p0, p2, p3, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshCoverImgScale(IIZ)V

    :cond_0
    return-void
.end method

.method public refreshInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallPlayerAlbumLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mTitleTv:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$a;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$1;)V

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mSubTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mTitleTv:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mSubTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mDefaultTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mDefaultSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mNextView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public refreshMarqueeState(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mTitleTv:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public refreshPlayState(I)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallPlayerAlbumLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lble$c;->ic_music_pause_s_64:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lble$c;->ic_music_play_s_64:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshPlayState(I)V

    .line 227
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshMarqueeStateWhenPlayStateChange(I)V

    return-void
.end method

.method public refreshPos(III)V
    .locals 0

    .line 196
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/xui/widget/XProgressBar;->setMax(I)V

    .line 197
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XProgressBar;->setProgress(I)V

    return-void
.end method

.method public refreshProgressBar(II)V
    .locals 2

    .line 201
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

    const-string v1, "SmallPlayerAlbumLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public refreshType(IIZ)V
    .locals 0

    const/4 p3, 0x0

    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshCoverImgScale(IIZ)V

    return-void
.end method

.method public reset(II)V
    .locals 2

    const-string v0, "SmallPlayerAlbumLayout"

    const-string v1, "reset: ====== "

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 284
    sget v0, Lble$c;->img_cd_empty:I

    goto :goto_0

    :cond_0
    sget v0, Lble$c;->img_cd_netease_empty:I

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->setDefaultAlbum(III)V

    .line 285
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mTitleTv:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mSubTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mDefaultTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mDefaultSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 290
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->enableLove(Z)V

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mNextView:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public resetMarqueeState()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mTitleTv:Lcom/xiaopeng/musicradio/widget/MarqueeTextView;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a()V

    :cond_0
    return-void
.end method

.method public setDefaultAlbum(III)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshDefaultCover(I)V

    const/4 p1, 0x1

    .line 239
    invoke-direct {p0, p2, p3, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->refreshCoverImgScale(IIZ)V

    return-void
.end method

.method public setLoveClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mLoveListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setNextClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mNextListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOpenPlayerListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mOpenPlayerListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPlayPauseClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPlayerALbumShow(Z)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->setVisibility(I)V

    return-void
.end method

.method public updateLove(ZZ)V
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallPlayerAlbumLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 299
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;->enableLove(Z)V

    return-void
.end method
