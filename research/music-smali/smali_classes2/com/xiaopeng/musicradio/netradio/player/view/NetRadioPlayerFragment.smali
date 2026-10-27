.class public Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;
.super Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;
.source "NetRadioPlayerFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/player/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/netradio/fragment/player"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment<",
        "Lcom/xiaopeng/musicradio/netradio/player/view/b;",
        "Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/player/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetRadioPlayerFragment"


# instance fields
.field private mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method public backToMain()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->createPresenter()Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;
    .locals 1

    .line 53
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 32
    sget v0, Lbuc$d;->layout_player_base:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 27
    sget v0, Lbuc$f;->fragment_netradio_player:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bD:Ljava/lang/String;

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

    .line 91
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

    const/4 v0, 0x0

    return v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;->onResume()V

    .line 111
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v1, "Music_Player_SubPage_NetRadio"

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->enableAll()V

    return-void
.end method

.method public refrshTip(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->hideProgress()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->showProgress()V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->refreshLive(Z)V

    return-void
.end method

.method public setDefault(I)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->setDefault()V

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    sget v0, Lbuc$c;->img_cd_empty:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->refreshCover(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment$1;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->setLoveListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->setSceneId(Ljava/lang/String;)V

    return-void
.end method

.method public updateLove(ZZ)V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioPlayerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->updateLove(ZZZ)V

    return-void
.end method
