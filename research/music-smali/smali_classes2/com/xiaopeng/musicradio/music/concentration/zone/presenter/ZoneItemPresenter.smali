.class public Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "ZoneItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/zone/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "listsign_zone_song"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/zone/a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/zone/a;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public o_()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/zone/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/zone/a;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "RankItemPresenter"

    const-string v0, "onCreateView"

    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/zone/presenter/ZoneItemPresenter;->j()V

    return-void
.end method
