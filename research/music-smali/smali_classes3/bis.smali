.class public Lbis;
.super Ljava/lang/Object;
.source "PlayerMainViewManager.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/f;


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

.field private final b:Landroidx/fragment/app/Fragment;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lbis;->c:Z

    .line 30
    iput-object p2, p0, Lbis;->b:Landroidx/fragment/app/Fragment;

    .line 31
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p2

    invoke-virtual {p2}, Lbqp;->b()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lbis;->c:Z

    .line 32
    sget p2, Lbez$d;->layout_player_base:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    iput-object p1, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    return-void
.end method


# virtual methods
.method public disableAll()V
    .locals 1

    .line 98
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->disableAll()V

    return-void
.end method

.method public dispatchLeftIconClick()V
    .locals 1

    .line 166
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->dispatchLeftIconClick()V

    return-void
.end method

.method public enableAll()V
    .locals 1

    .line 93
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableAll()V

    return-void
.end method

.method public enableControl(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableControl(Z)V

    return-void
.end method

.method public enableLeftIcon(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableLeftIcon(Z)V

    return-void
.end method

.method public enableLove(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->enableLove(Z)V

    return-void
.end method

.method public getCurrentSubPage()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getCurrentSubPage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public hidePlayerTag()V
    .locals 1

    .line 123
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->hidePlayerTag()V

    return-void
.end method

.method public hideProgress()V
    .locals 1

    .line 128
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->hideProgress()V

    return-void
.end method

.method public isSelectedLeftIcon()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->isSelectedLeftIcon()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->onVuiEvent(Landroid/view/View;Lbyf;)V

    return-void
.end method

.method public openLrc()V
    .locals 1

    .line 148
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->openLrc()V

    return-void
.end method

.method public refreshCover(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshCover(I)V

    return-void
.end method

.method public refreshPlayMode(IZ)V
    .locals 1

    .line 73
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshPlayMode(IZ)V

    return-void
.end method

.method public refreshSinger(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshSinger(Ljava/lang/String;)V

    return-void
.end method

.method public refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefault()V
    .locals 1

    .line 118
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setDefault()V

    return-void
.end method

.method public setLoveListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setLoveListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLrcShow(Z)V
    .locals 1

    .line 138
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setLrcShow(Z)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setSceneId(Ljava/lang/String;)V

    return-void
.end method

.method public showBtNoConnect(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->showBtNoConnect(Z)V

    return-void
.end method

.method public showPlayerTag()V
    .locals 1

    .line 113
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->showPlayerTag()V

    return-void
.end method

.method public showProgress()V
    .locals 1

    .line 88
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->showProgress()V

    return-void
.end method

.method public switchToMusic(Z)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lbis;->c:Z

    if-eq v0, p1, :cond_0

    .line 172
    iput-boolean p1, p0, Lbis;->c:Z

    .line 173
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->switchToMusic(Z)V

    :cond_0
    return-void
.end method

.method public updateLove(ZZZ)V
    .locals 1

    .line 78
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->updateLove(ZZZ)V

    return-void
.end method

.method public updateLrc(Ljava/lang/String;I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lbis;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->updateLrc(Ljava/lang/String;I)V

    return-void
.end method
