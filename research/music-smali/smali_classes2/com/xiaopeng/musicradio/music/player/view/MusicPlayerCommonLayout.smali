.class public Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;
.super Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;
.source "MusicPlayerCommonLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout<",
        "Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/f;"
    }
.end annotation


# static fields
.field private static final MODE_VUI_LABEL_ARRAY:[Ljava/lang/String;

.field private static final MODE_VUI_LABEL_ARRAY_NO_RANDOM:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MusicPlayerCommonLayout"


# instance fields
.field private mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

.field private mCurrentSubPageName:Ljava/lang/String;

.field protected mLrcContainer:Landroid/view/View;

.field private mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

.field protected mMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

.field private mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

.field private mThreeOneMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lbez$g;->vui_single:I

    .line 46
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v3, Lbez$g;->vui_list:I

    .line 47
    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v4, Lbez$g;->vui_random:I

    .line 48
    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->MODE_VUI_LABEL_ARRAY:[Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v4, Lbez$g;->vui_single:I

    .line 52
    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lbez$g;->vui_list:I

    .line 53
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->MODE_VUI_LABEL_ARRAY_NO_RANDOM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "Music_Player_SubPage_Lrc"

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mCurrentSubPageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "Music_Player_SubPage_Lrc"

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mCurrentSubPageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "Music_Player_SubPage_Lrc"

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mCurrentSubPageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->closeLrc()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->createLrcView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->createListView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/h;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeCoverPosition(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;Z)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeLrcListShow(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeListAndLrcVisible()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method private changeCoverPosition(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    goto :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private changeListAndLrcVisible()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeLrcVisible()V

    .line 256
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeListVisible()V

    return-void
.end method

.method private changeListVisible()V
    .locals 6

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicPlayerCommonLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableTouchLrc(Z)V

    .line 266
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeLrcListShow(Z)V

    .line 267
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcContainer:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getLrcListLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v0, :cond_4

    const-string v0, "changeListVisible: ===== "

    .line 270
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    if-nez v0, :cond_2

    .line 272
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mListContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshColor()V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mCurrentSubPageName:Ljava/lang/String;

    const-string v2, "Music_Player_SubPage_List"

    if-eq v0, v2, :cond_3

    .line 279
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v3, "Music_Player_Page"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_3
    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mCurrentSubPageName:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->setVisibility(I)V

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->updateVuiScene()V

    .line 284
    invoke-static {}, Lblk;->o()V

    goto :goto_1

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    if-eqz v0, :cond_5

    .line 287
    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->setVisibility(I)V

    .line 289
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->updateVuiScene()V

    :goto_1
    return-void
.end method

.method private changeLrcVisible()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 248
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setLrcShow(Z)V

    .line 249
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeCoverPosition(Z)V

    :cond_3
    return-void
.end method

.method private closeLrc()V
    .locals 2

    const-string v0, "MusicPlayerCommonLayout"

    const-string v1, "closeLrc: ===="

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Landroid/widget/FrameLayout;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$9;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$9;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V

    :cond_0
    return-void
.end method

.method private createListView()V
    .locals 3

    const-string v0, "MusicPlayerCommonLayout"

    const-string v1, "createListView: ====== "

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mListContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private createLrcView()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    if-nez v0, :cond_3

    .line 171
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcContainer:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createLrcView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->isSelectedLeftIcon()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->isSelectedLeftIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 176
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->setVisibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshColor()V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$7;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private handleVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 335
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 336
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 337
    sget-object p2, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->MODE_VUI_LABEL_ARRAY:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 338
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 343
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->a(I)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleVuiPlayMode()V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v1, Lbya;->NORMAL:Lbya;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiMode(Lbya;)V

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->d()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v3, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->MODE_VUI_LABEL_ARRAY:[Ljava/lang/String;

    invoke-static {v1, v0, v3, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v3, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->MODE_VUI_LABEL_ARRAY_NO_RANDOM:[Ljava/lang/String;

    invoke-static {v1, v0, v3, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private isBtConnectShow()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshCoverImgScale(IZ)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverImgScale(IZ)V

    return-void
.end method


# virtual methods
.method protected changeLayoutSelf(Z)V
    .locals 2

    .line 303
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->changeLayoutSelf(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 305
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setLrcShow(Z)V

    .line 306
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeCoverPosition(Z)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->isBtConnectShow()Z

    move-result p1

    if-nez p1, :cond_2

    .line 310
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableTouchLrc(Z)V

    .line 312
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setLrcShow(Z)V

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeTouchViewVisibility()V

    return-void
.end method

.method public changeMusicSource(I)V
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMusicSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshCoverImgScale(IZ)V

    .line 378
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->isBtConnectShow()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableTouchLrc(Z)V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;
    .locals 1

    .line 85
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;-><init>()V

    return-object v0
.end method

.method public disableAll()V
    .locals 0

    .line 475
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->disableAll()V

    return-void
.end method

.method public enableAll()V
    .locals 1

    .line 543
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableAll()V

    .line 544
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->isBtConnectShow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableTouchLrc(Z)V

    return-void
.end method

.method public enableControl(Z)V
    .locals 0

    .line 549
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableControl(Z)V

    .line 550
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->isBtConnectShow()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableTouchLrc(Z)V

    return-void
.end method

.method public enableTouchLrc(Z)V
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTouchLrc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public getCurrentSubPage()Ljava/lang/String;
    .locals 1

    .line 534
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Music_Player_Song_Cover"

    return-object v0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mCurrentSubPageName:Ljava/lang/String;

    return-object v0
.end method

.method public hidePlayerTag()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOneMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->setVisibility(I)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->handleVuiEvent(Landroid/view/View;Lbyf;)V

    return-void
.end method

.method public openLrc()V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openLrc: ====== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mTouchView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setSelected(Z)V

    .line 208
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeListAndLrcVisible()V

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshColor()V

    .line 211
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->b(Landroid/widget/FrameLayout;)V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$8;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;)V

    :cond_0
    return-void
.end method

.method public refreshCover(I)V
    .locals 1

    .line 525
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshCover(I)V

    .line 526
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->e()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshCoverImgScale(IZ)V

    return-void
.end method

.method public refreshCover(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 516
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshCover(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->e()I

    move-result p1

    const/4 v0, 0x0

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshCoverImgScale(IZ)V

    :cond_0
    return-void
.end method

.method public refreshPlayMode(IZ)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 364
    sget p1, Lbez$c;->ic_music_playmode_allcycles_o:I

    goto :goto_0

    .line 361
    :cond_0
    sget p1, Lbez$c;->ic_music_playmode_random_o:I

    goto :goto_0

    .line 358
    :cond_1
    sget p1, Lbez$c;->ic_music_playmode_single_o:I

    goto :goto_0

    .line 355
    :cond_2
    sget p1, Lbez$c;->ic_music_playmode_allcycles_o:I

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshColor()V

    .line 369
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    .line 371
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->handleVuiPlayMode()V

    return-void
.end method

.method protected refreshSelfColor(IIII)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->refreshColor(IIII)V

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOneMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->refreshColor(IIII)V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->refreshColor(IIII)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->refreshColor(IIII)V

    :cond_1
    return-void
.end method

.method public refreshSinger(Ljava/lang/String;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->refreshSinger(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOneMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->refreshSinger(Ljava/lang/String;)V

    return-void
.end method

.method public setDefault()V
    .locals 1

    .line 416
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setDefault()V

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableTouchLrc(Z)V

    return-void
.end method

.method protected setListener()V
    .locals 4

    .line 113
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setListener()V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mTouchView:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->setAlbumClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    const-wide/16 v2, 0xbe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$6;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLrcShow(Z)V
    .locals 3

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLrcShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mTouchView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mTouchView:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mCurrentSubPageName:Ljava/lang/String;

    const-string v1, "Music_Player_SubPage_Lrc"

    if-eq v0, v1, :cond_0

    .line 454
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v2, "Music_Player_Page"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mCurrentSubPageName:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected setView()V
    .locals 5

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setView()V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mNormalPlayInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/g;->getTagStub()Landroid/view/ViewStub;

    move-result-object v0

    .line 93
    sget v1, Lbez$f;->layout_player_vip_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOnePlayerInfoLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/h;->getTagStub()Landroid/view/ViewStub;

    move-result-object v0

    .line 97
    sget v1, Lbez$f;->layout_player_vip_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOneMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    .line 100
    sget v0, Lble$d;->layout_lrc_stud:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcContainer:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setSelected(Z)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;)V

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setLrcShow(Z)V

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->handleVuiPlayMode()V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    new-array v2, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    aput-object v4, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public showBtNoConnect(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    if-nez v0, :cond_1

    .line 495
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcListContianer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v3, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->f()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->showNoPhoneMusicTip(Z)V

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->setSelected(Z)V

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mListContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 503
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 505
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->closeLrc()V

    goto :goto_1

    .line 507
    :cond_4
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeLrcListShow(Z)V

    :goto_1
    if-eqz v0, :cond_5

    xor-int/lit8 p1, p1, 0x1

    .line 510
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableTouchLrc(Z)V

    :cond_5
    return-void
.end method

.method public showPlayerTag()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mThreeOneMusicTagsLayout:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->setVisibility(I)V

    return-void
.end method

.method protected showShadow(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->e()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 386
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->showShadow(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 388
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->showShadow(Z)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->showShadow(Z)V

    :goto_0
    return-void
.end method

.method public switchToMusic(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->changeListAndLrcVisible()V

    :cond_0
    return-void
.end method

.method protected threeOneShowLrcList(Z)Z
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "threeOneShowLrcList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mBtNoConnectView:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerCommonLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->threeOneShowLrcList(Z)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->isBtConnectShow()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public updateLrc(Ljava/lang/String;I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mLrcView:Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicLrcLayout;->refreshLrcView(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected updateVuiScene()V
    .locals 3

    .line 295
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->updateVuiScene()V

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
