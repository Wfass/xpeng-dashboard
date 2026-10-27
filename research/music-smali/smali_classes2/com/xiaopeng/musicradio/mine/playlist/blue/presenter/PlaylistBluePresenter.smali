.class public Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.source "PlaylistBluePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$a;,
        Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->v()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const/16 v0, 0x3e8

    .line 54
    invoke-static {v0}, Laxu;->c(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/datalist/f;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Laxu;->c()Z

    move-result v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayingStatus:playing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PlaylistBluePresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Laxu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 43
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 49
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$r;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 85
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 86
    invoke-virtual {p1}, Lasj$r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$b;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;->updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 75
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 80
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$j;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$j;->a:Ljava/util/HashSet;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;Ljava/util/HashSet;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;->updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_0
    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->v()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 134
    invoke-static {}, Laxi;->a()Laxi;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxi;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->s:Ljava/lang/String;

    const-string v1, "FROM_MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->x()Z

    move-result v0

    return v0
.end method

.method public y()V
    .locals 2

    .line 70
    invoke-static {}, Laxf;->a()Laxf;

    move-result-object v0

    invoke-virtual {v0}, Laxf;->b()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Laxu;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laxu;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
