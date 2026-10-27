.class public Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "MusicTopLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicTopLayout"


# instance fields
.field private mAlbumFrom:I

.field private mCollectFrom:I

.field public mCurrentState:I

.field private mLayoutWidth:I

.field private mLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mLogoUrl:Ljava/lang/String;

.field private mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

.field private mLoveShow:Z

.field private mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

.field private mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

.field private mRankFrom:I

.field private mRootLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mSceneId:Ljava/lang/String;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mSingerFrom:I

.field private mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTitleHeight:I

.field private mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

.field private mZoneFrom:I

.field private vuilabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 76
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCurrentState:I

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCollectFrom:I

    .line 58
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mSingerFrom:I

    .line 59
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mRankFrom:I

    .line 60
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mAlbumFrom:I

    .line 61
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mZoneFrom:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleHeight:I

    const/4 v1, 0x3

    .line 67
    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    .line 68
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->bt_pause_all:I

    .line 69
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->vuilabels:[Ljava/lang/String;

    .line 71
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCurrentState:I

    const/4 p2, -0x1

    .line 57
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCollectFrom:I

    .line 58
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mSingerFrom:I

    .line 59
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mRankFrom:I

    .line 60
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mAlbumFrom:I

    .line 61
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mZoneFrom:I

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleHeight:I

    const/4 v0, 0x3

    .line 67
    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    .line 68
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->bt_pause_all:I

    .line 69
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->vuilabels:[Ljava/lang/String;

    .line 71
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 82
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCurrentState:I

    const/4 p2, -0x1

    .line 57
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCollectFrom:I

    .line 58
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mSingerFrom:I

    .line 59
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mRankFrom:I

    .line 60
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mAlbumFrom:I

    .line 61
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mZoneFrom:I

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleHeight:I

    const/4 p3, 0x3

    .line 67
    new-array p3, p3, [Ljava/lang/String;

    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->bt_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->bt_continue_all:I

    .line 68
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p3, v0

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->bt_pause_all:I

    .line 69
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->vuilabels:[Ljava/lang/String;

    .line 71
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->music_top_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 93
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->title_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tips_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->play_all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    .line 98
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->btn_subscribe:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->has_collect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setCancelSubscribe(I)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->collect_music:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setSubscribe(I)V

    .line 101
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->item_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->vuilabels:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->reviewOnScreenChange()V

    return-void
.end method


# virtual methods
.method public getLogo()Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    return-object v0
.end method

.method public getPlayAll()Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    return-object v0
.end method

.method public getPlayAllBtn()Lcom/xiaopeng/xui/widget/XButton;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getPlayButton()Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    return-object v0
.end method

.method public getPlayText()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTipsText()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method public getTitleText()Lcom/xiaopeng/xui/widget/XTextView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 117
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onLayout(ZIIII)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getMeasuredHeight()I

    move-result p1

    .line 119
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleHeight:I

    if-nez p2, :cond_0

    if-lez p1, :cond_0

    .line 120
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleHeight:I

    .line 121
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleHeight:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->setTitleHeight(I)V

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout: titleTextHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicTopLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxLines(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method public setAlbumFrom(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mAlbumFrom:I

    return-void
.end method

.method public setBackVisible(Z)V
    .locals 0

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCollectFrom(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCollectFrom:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLogoUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLogoUrl:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    return-void
.end method

.method public setLove(Z)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setLoveState(Z)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setSelected(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mSceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public setLoveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLoveVisible(Z)V
    .locals 1

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveShow:Z

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLoveBtn:Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonSubscribeButton;->setVisibility(I)V

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mMusicScrollLayout:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    return-void
.end method

.method public setPlayState(I)V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;->setPlayState(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 185
    :cond_1
    :goto_0
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCurrentState:I

    if-eq v0, p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->vuilabels:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbxx;->SETVALUE:Lbxx;

    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v3}, Lbxx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mSceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mPlayAll:Lcom/xiaopeng/musicradio/widget/common/CommonBlackPlayAllButton;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 188
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mCurrentState:I

    :cond_2
    return-void
.end method

.method public setRankFrom(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mRankFrom:I

    return-void
.end method

.method public setRoundRadius(F)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mLogo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setRoundRadius(F)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method public setSingerFrom(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mSingerFrom:I

    return-void
.end method

.method public setTipsText(Ljava/lang/String;)V
    .locals 1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTipsText:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mTitleText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setZoneFrom(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicTopLayout;->mZoneFrom:I

    return-void
.end method
