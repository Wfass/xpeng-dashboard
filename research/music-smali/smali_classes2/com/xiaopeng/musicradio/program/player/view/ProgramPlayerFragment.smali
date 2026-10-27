.class public Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;
.super Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;
.source "ProgramPlayerFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/player/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/fragment/player"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment<",
        "Lcom/xiaopeng/musicradio/program/player/view/b;",
        "Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/player/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgramPlayerFragment"


# instance fields
.field private mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

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
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;
    .locals 1

    .line 53
    new-instance v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayerPresenter;-><init>()V

    return-object v0
.end method

.method public enableShareBtn()V
    .locals 0

    return-void
.end method

.method protected findView()V
    .locals 1

    .line 31
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->layout_player_base:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 26
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->fragment_program_player:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bC:Ljava/lang/String;

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

    .line 90
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

    .line 118
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;->onResume()V

    .line 119
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v1, "Music_Player_SubPage_Read"

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 95
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBaseFragment;->onVuiEvent(Landroid/view/View;Lbyf;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->onVuiEvent(Landroid/view/View;Lbyf;)V

    return-void
.end method

.method public refreshLove(ZZ)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->updateLove(ZZZ)V

    return-void
.end method

.method public refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->enableAll()V

    return-void
.end method

.method public setDefault(I)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setDefault()V

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->img_cd_empty:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->refreshCover(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setLoveListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setSpeed(F)V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->setSceneId(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->enableShareBtn()V

    return-void
.end method

.method public updateVipState(IZ)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerFragment;->mPlayerCommonLayout:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayerCommonLayout;->updateTitleLeftLabel(IZ)V

    return-void
.end method
