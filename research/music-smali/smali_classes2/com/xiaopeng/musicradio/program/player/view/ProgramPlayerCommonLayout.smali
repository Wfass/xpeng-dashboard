.class public Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;
.super Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;
.source "ProgramPlayerCommonLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout<",
        "Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final SPEED_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ProgramPlayerCommonLayo"


# instance fields
.field private mBackwardImg:Landroid/widget/ImageView;

.field private mBackwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mForwardImg:Landroid/widget/ImageView;

.field private mForwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "1"

    const-string v1, "1.25"

    const-string v2, "1.5"

    const-string v3, "2"

    .line 41
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->SPEED_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->createListView()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->showPlayList(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private createListView()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mListContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$2;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setPageListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setVisibility(I)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->updateVuiScene()V

    return-void
.end method

.method private enableBackward(Z)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardImg:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    return-void
.end method

.method private enableForward(Z)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardImg:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/at;->b(Landroid/view/View;Z)V

    return-void
.end method

.method private getSpeedStatefulAttr()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    .line 245
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->program_xui_speed_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->program_xui_speed_125:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->program_xui_speed_150:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->program_xui_speed_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method private refreshCoverScale()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->refreshCoverScale()V

    return-void
.end method

.method private showPlayList(Z)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 180
    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setVisibility(I)V

    .line 181
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->changeLrcListShow(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->updateVuiScene()V

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->refreshColor()V

    return-void
.end method


# virtual methods
.method protected changeLayoutSelf(Z)V
    .locals 2

    .line 250
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->changeLayoutSelf(Z)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setSelected(Z)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->showPlayList(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 256
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->showPlayList(Z)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->createPresenter()Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;-><init>()V

    return-object v0
.end method

.method public disableAll()V
    .locals 1

    .line 222
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->disableAll()V

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->enableForward(Z)V

    .line 224
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->enableBackward(Z)V

    return-void
.end method

.method public enableAll()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->enableAll()V

    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->enableForward(Z)V

    .line 231
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->enableBackward(Z)V

    return-void
.end method

.method protected findView()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->findView()V

    .line 73
    sget v0, Lble$d;->layout_backward:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 74
    sget v0, Lble$d;->img_backward:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardImg:Landroid/widget/ImageView;

    .line 75
    sget v0, Lble$d;->layout_forward:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 76
    sget v0, Lble$d;->img_forward:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardImg:Landroid/widget/ImageView;

    return-void
.end method

.method public handleVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 3

    const-string v0, "ProgramPlayerCommonLayo"

    const-string v1, "handleVuiEvent: ======="

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 284
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 285
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 286
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVuiEvent: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object p2, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->SPEED_ARRAY:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 288
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->a(F)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;

    const/high16 p2, 0x3fa00000    # 1.25f

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->a(F)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->a(F)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerCommonPresenter;->a(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->handleVuiEvent(Landroid/view/View;Lbyf;)V

    return-void
.end method

.method protected refreshSelfColor(IIII)V
    .locals 0

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshSelfColor(IIII)V

    .line 263
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lapo;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 264
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardImg:Landroid/widget/ImageView;

    const p3, 0x3f19999a    # 0.6f

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 265
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 266
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardImg:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 267
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardImg:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardImg:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardImg:Landroid/widget/ImageView;

    sget p2, Lcom/xiaopeng/musicradio/program/b$a;->x_color_text_3:I

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardImg:Landroid/widget/ImageView;

    sget p2, Lcom/xiaopeng/musicradio/program/b$a;->x_color_text_3:I

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setImageViewColor(Landroid/widget/ImageView;I)V

    :goto_0
    return-void
.end method

.method public setDefault()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setDefault()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 190
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setSpeed(F)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setListener()V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$3;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$4;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$5;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$6;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 4

    .line 194
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->icon_player_speed:I

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 196
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_1x:I

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getSpeedStatefulAttr()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 199
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_125x:I

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getSpeedStatefulAttr()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 202
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_15x:I

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getSpeedStatefulAttr()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    .line 205
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_2x:I

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getSpeedStatefulAttr()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->refreshColor()V

    .line 211
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "unit"

    const-string v1, "speed"

    .line 212
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :catch_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mSceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 82
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setView()V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardImg:Landroid/widget/ImageView;

    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_playback_15s_s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v1, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementType(Lbxy;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->player_player_back_15:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mBackwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardImg:Landroid/widget/ImageView;

    sget v2, Lcom/xiaopeng/musicradio/program/b$c;->ic_music_playforward_15s_s:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget-object v2, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementType(Lbxy;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->player_player_forward_15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mForwardLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->player_player_speed_string:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout$1;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->refreshCoverScale()V

    return-void
.end method

.method protected updateVuiScene()V
    .locals 3

    .line 132
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->updateVuiScene()V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->mPlayListView:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
