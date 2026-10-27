.class public Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;
.super Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;
.source "CollectedMusicActivityPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    .line 15
    const-class v0, Lase$a;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;->a([Ljava/lang/Object;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lase$a;

    if-eqz v0, :cond_1

    .line 16
    iget-object v2, v0, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    iget-object v0, v0, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->removeListItem(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 22
    iget-boolean v3, v0, Lase$a;->b:Z

    if-eqz v3, :cond_2

    iget-object v0, v0, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 24
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->a([Ljava/lang/Object;)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 27
    invoke-static {}, Laxu;->c()Z

    move-result p1

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePlayingStatus:playing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",from=onDataDirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicCollectedMusicPresenter"

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_1

    .line 34
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicActivityPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_5
    :goto_1
    return-void
.end method
