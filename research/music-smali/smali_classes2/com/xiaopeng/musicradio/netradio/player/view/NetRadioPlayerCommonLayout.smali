.class public Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;
.super Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;
.source "NetRadioPlayerCommonLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout<",
        "Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerCommonPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetRadioPlayerCommonLay"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPlayListView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->createListView()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->showPlayList(Z)V

    return-void
.end method

.method private createListView()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mListContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->updateVuiScene()V

    return-void
.end method

.method private refreshCoverScale()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale()V

    return-void
.end method

.method private showPlayList(Z)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 114
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->changeLrcListShow(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->updateVuiScene()V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->refreshColor()V

    return-void
.end method


# virtual methods
.method protected changeLayoutSelf(Z)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->changeLayoutSelf(Z)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setSelected(Z)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->showPlayList(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 129
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->showPlayList(Z)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->createPresenter()Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerCommonPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerCommonPresenter;
    .locals 1

    .line 47
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerCommonPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerCommonPresenter;-><init>()V

    return-object v0
.end method

.method public refreshLive(Z)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setClickable(Z)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setListener()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setView()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    sget v1, Lbuc$c;->ic_music_live:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 58
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbuc$g;->netradio_vui_live:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPriority(Lbyb;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$1;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->refreshCoverScale()V

    return-void
.end method

.method protected updateVuiScene()V
    .locals 3

    .line 140
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->updateVuiScene()V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->mPlayListView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
