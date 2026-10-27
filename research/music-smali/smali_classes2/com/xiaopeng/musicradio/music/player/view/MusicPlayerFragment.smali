.class public Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;
.super Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;
.source "MusicPlayerFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/g;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/player"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment<",
        "Lcom/xiaopeng/musicradio/music/player/view/g;",
        "Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/g;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPlayerFragment"


# instance fields
.field private mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

.field private mReplayCarImg:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic lambda$setListener$0()V
    .locals 1

    const-string v0, "MusicPlayerFragment.visible"

    .line 81
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->end()V

    return-void
.end method


# virtual methods
.method public backToMain()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/f;->isSelectedLeftIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/f;->dispatchLeftIconClick()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;
    .locals 1

    .line 98
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;-><init>()V

    return-object v0
.end method

.method public enableShareBtn()V
    .locals 0

    return-void
.end method

.method protected findView()V
    .locals 2

    const-string v0, "MusicPlayerFragment.findView"

    .line 55
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 56
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 57
    sget v0, Lbez$d;->img_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 58
    sget v0, Lbez$d;->img_replay_car:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mReplayCarImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 59
    new-instance v0, Lbis;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbis;-><init>(Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    return-void
.end method

.method public finish()V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 50
    sget v0, Lbez$f;->fragment_music_player:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 232
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bB:Ljava/lang/String;

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

    const/4 v0, 0x1

    .line 237
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bA:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isBackToMain()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/f;->isSelectedLeftIcon()Z

    move-result v0

    return v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyPlayStateChange(IZ)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MusicPlayerFragment.onCreate"

    .line 45
    invoke-static {p1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "MusicPlayerFragment"

    const-string v1, "onResume: onMusicPlayerFragmentResume"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;->onResume()V

    .line 93
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->getCurrentSubPage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Music_Player_Page"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 227
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;->onVuiEvent(Landroid/view/View;Lbyf;)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/f;->onVuiEvent(Landroid/view/View;Lbyf;)V

    return-void
.end method

.method public openLrc()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/f;->openLrc()V

    return-void
.end method

.method public refreshPlayMode(IZ)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/f;->refreshPlayMode(IZ)V

    return-void
.end method

.method public refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 108
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/f;->refreshSinger(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/f;->enableLeftIcon(Z)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/f;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefault(I)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefault: ========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->switchToNone()V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->switchToMusic(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->setLoveListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/music/player/view/-$$Lambda$MusicPlayerFragment$09cm9qZmRJ4-jGqen7aHO-lSNl8;->INSTANCE:Lcom/xiaopeng/musicradio/music/player/view/-$$Lambda$MusicPlayerFragment$09cm9qZmRJ4-jGqen7aHO-lSNl8;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string v0, "MusicPlayerFragment"

    const-string v1, "setListener: ========="

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;->setView()V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->setSceneId(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->enableShareBtn()V

    return-void
.end method

.method public showVipTip(Z)V
    .locals 0

    return-void
.end method

.method public switchToMusic(Z)V
    .locals 6

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToMusic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mReplayCarImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    const/4 v0, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1, v2}, Lcom/xiaopeng/musicradio/music/player/view/f;->showBtNoConnect(Z)V

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->showProgress()V

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/f;->enableAll()V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->p()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->enableLove(Z)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/f;->showPlayerTag()V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->setDefault()V

    .line 153
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->refreshPlayMode(IZ)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_music_logo_usb_text4:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_music_logo_qqmusic_text4_48:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_music_logo_kugou_text4_48:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_music_logo_netease_text4_48:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mReplayCarImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mReplayCarImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->icon_replay_car:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mReplayCarImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 173
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v3}, Lcom/xiaopeng/musicradio/music/player/view/f;->hidePlayerTag()V

    .line 174
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v3}, Lcom/xiaopeng/musicradio/music/player/view/f;->hideProgress()V

    .line 175
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v3}, Lcom/xiaopeng/musicradio/music/player/view/f;->disableAll()V

    .line 177
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v3, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->m()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v3, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->n()Z

    move-result v3

    if-nez v3, :cond_6

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1, v4}, Lcom/xiaopeng/musicradio/music/player/view/f;->enableControl(Z)V

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1, v2}, Lcom/xiaopeng/musicradio/music/player/view/f;->showBtNoConnect(Z)V

    goto :goto_2

    :cond_6
    const-string v3, "switchToMusic: ======bt no connect"

    .line 181
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->setDefault()V

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1, v2}, Lcom/xiaopeng/musicradio/music/player/view/f;->showBtNoConnect(Z)V

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    const-string v3, ""

    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/musicradio/music/player/view/f;->updateLrc(Ljava/lang/String;I)V

    .line 187
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lble$f;->music_no_play_tip:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lbez$g;->music_play_on_phone_app:I

    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lcom/xiaopeng/musicradio/music/player/view/f;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcom/xiaopeng/musicradio/music/player/view/f;->setLrcShow(Z)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v1, v4}, Lcom/xiaopeng/musicradio/music/player/view/f;->showBtNoConnect(Z)V

    .line 193
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->refreshPlayMode(IZ)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_music_logo_bluetooth_text:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 196
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    xor-int/2addr p1, v4

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/f;->switchToMusic(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public switchToNone()V
    .locals 3

    const-string v0, "MusicPlayerFragment"

    const-string v1, "switchToNone: ====== "

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mLogoImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/f;->setDefault()V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    sget v1, Lbez$c;->img_cd_empty:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->refreshCover(I)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/f;->refreshSinger(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/music/player/view/f;->updateLrc(Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 213
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->refreshPlayMode(IZ)V

    return-void
.end method

.method public updateLove(ZZZ)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/music/player/view/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/player/view/f;->updateLove(ZZZ)V

    return-void
.end method
