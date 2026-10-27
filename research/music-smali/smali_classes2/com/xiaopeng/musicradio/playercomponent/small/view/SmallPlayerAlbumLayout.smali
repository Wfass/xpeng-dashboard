.class public Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "SmallPlayerAlbumLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmallPlayerAlbumLayout"


# instance fields
.field private mAlbumAnimLayout:Landroid/view/View;

.field private mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

.field private mCardAlbum:Landroid/view/View;

.field private mDefaultBg:Lcom/xiaopeng/xui/view/XView;

.field private mDefaultSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDefaultTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDisableLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLogoLayout:Landroid/widget/FrameLayout;

.field private mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLoveListener:Landroid/view/View$OnClickListener;

.field private mNextImg:Landroid/view/View;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mNextView:Landroid/view/View;

.field private mPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayBtn:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayPauseListener:Landroid/view/View$OnClickListener;

.field private mPreImg:Landroid/view/View;

.field private mPreListener:Landroid/view/View$OnClickListener;

.field private mPreView:Landroid/view/View;

.field private mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

.field private mSubTitleTv:Landroid/widget/TextView;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLoveListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPreListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mNextListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lble$e;->layout_small_player_album:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    sget v0, Lble$d;->layout_album_anim:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumAnimLayout:Landroid/view/View;

    .line 85
    sget v0, Lble$d;->layout_album_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    .line 87
    sget v0, Lble$d;->card_album:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mCardAlbum:Landroid/view/View;

    .line 89
    sget v0, Lble$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mTitleTv:Landroid/widget/TextView;

    .line 90
    sget v0, Lble$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mSubTitleTv:Landroid/widget/TextView;

    .line 91
    sget v0, Lble$d;->img_love:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 92
    sget v0, Lble$d;->img_love_disable:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDisableLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 93
    sget v0, Lble$d;->tv_title_default:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 94
    sget v0, Lble$d;->tv_sub_title_default:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 95
    sget v0, Lble$d;->img_album_default:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultBg:Lcom/xiaopeng/xui/view/XView;

    .line 97
    sget v0, Lble$d;->img_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 98
    sget v0, Lble$d;->layout_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoLayout:Landroid/widget/FrameLayout;

    .line 100
    sget v0, Lble$d;->layout_prev:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPreView:Landroid/view/View;

    .line 101
    sget v0, Lble$d;->btn_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPlayBtn:Lcom/xiaopeng/xui/widget/XImageView;

    .line 102
    sget v0, Lble$d;->btn_pause:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    .line 103
    sget v0, Lble$d;->layout_next:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mNextView:Landroid/view/View;

    .line 104
    sget v0, Lble$d;->progress_music:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XProgressBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    .line 105
    sget v0, Lble$d;->img_next:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mNextImg:Landroid/view/View;

    .line 106
    sget v0, Lble$d;->img_prev:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPreImg:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPreView:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPlayBtn:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$4;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mNextView:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$5;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPreView:Landroid/view/View;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;I)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mNextView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;I)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils;->enlargeTouchDelegate(Landroid/view/View;I)V

    return-void
.end method

.method private refreshCoverImgScale(IIZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverImgScale(IZ)V

    if-eqz p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale()V

    :cond_1
    return-void
.end method

.method private refreshLogo(IIZ)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 344
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 346
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lble$c;->ic_music_logo_bluetooth_text:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 348
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lble$c;->ic_music_logo_himalayas_text4_48:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 350
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lble$c;->ic_music_logo_himalayas_text4_48:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    if-eq p2, p3, :cond_7

    if-eq p2, v0, :cond_6

    const/4 p1, 0x4

    if-eq p2, p1, :cond_5

    .line 363
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lble$c;->ic_music_logo_qqmusic_text4_48:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 354
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lble$c;->ic_music_logo_kugou_text4_48:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 357
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lble$c;->ic_music_logo_netease_text4_48:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 360
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lble$c;->ic_music_logo_usb_text4:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private refreshMarqueeStateWhenPlayStateChange(I)V
    .locals 1

    .line 166
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v0

    invoke-virtual {v0}, Laqz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

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

    .line 169
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshMarqueeState(Z)V

    :cond_1
    return-void
.end method

.method private refreshMarqueeStateWhenResumeChange(Z)V
    .locals 1

    .line 175
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v0

    invoke-virtual {v0}, Laqz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshMarqueeState(Z)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 179
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshMarqueeState(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public enableLove(Z)V
    .locals 4

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmallPlayerAlbumLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDisableLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method public getAlbumView()Landroid/view/View;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumAnimLayout:Landroid/view/View;

    return-object v0
.end method

.method public getCoverPlayTime()F
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getCoverAniPlayTime()F

    move-result v0

    return v0
.end method

.method public matchCoverAnimTime(F)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->matchCoverAnimTime(F)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshMarqueeStateWhenResumeChange(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->onResume()V

    :cond_0
    const/4 v0, 0x1

    .line 208
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshMarqueeStateWhenResumeChange(Z)V

    return-void
.end method

.method public refreshCover(Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshDefaultCover(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 263
    invoke-direct {p0, p2, p3, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshCoverImgScale(IIZ)V

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultBg:Lcom/xiaopeng/xui/view/XView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    return-void
.end method

.method public refreshInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 292
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

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mTitleTv:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$a;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$1;)V

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mSubTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mTitleTv:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mSubTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPreView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mNextView:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 303
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPlayBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public refreshMarqueeState(Z)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public refreshPlayState(I)V
    .locals 3

    .line 243
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

    const/16 v1, 0x8

    const/4 v2, 0x0

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

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPlayBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPlayBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshPlayState(I)V

    .line 258
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshMarqueeStateWhenPlayStateChange(I)V

    return-void
.end method

.method public refreshPos(III)V
    .locals 0

    .line 225
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/xui/widget/XProgressBar;->setMax(I)V

    .line 226
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XProgressBar;->setProgress(I)V

    return-void
.end method

.method public refreshProgressBar(II)V
    .locals 2

    .line 230
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

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mProgressBar:Lcom/xiaopeng/xui/widget/XProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public refreshType(IIZ)V
    .locals 0

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshLogo(IIZ)V

    const/4 p3, 0x0

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshCoverImgScale(IIZ)V

    return-void
.end method

.method public reset(II)V
    .locals 2

    const-string v0, "SmallPlayerAlbumLayout"

    const-string v1, "reset: ====== "

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 309
    sget v0, Lble$c;->img_cd_empty:I

    goto :goto_0

    :cond_0
    sget v0, Lble$c;->img_cd_netease_empty:I

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->setDefaultAlbum(III)V

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLogoLayout:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mTitleTv:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mSubTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultSubTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 316
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->enableLove(Z)V

    .line 318
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPreView:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 319
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mNextView:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 320
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPlayBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPauseBtn:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public setDefaultAlbum(III)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshDefaultCover(I)V

    const/4 p1, 0x1

    .line 269
    invoke-direct {p0, p2, p3, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->refreshCoverImgScale(IIZ)V

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mDefaultBg:Lcom/xiaopeng/xui/view/XView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    return-void
.end method

.method public setLoveClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLoveListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setNextClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mNextListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPlayPauseClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPreClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mPreListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateLove(ZZ)V
    .locals 2

    .line 325
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

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 327
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->enableLove(Z)V

    return-void
.end method
