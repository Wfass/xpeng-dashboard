.class public Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.source "PlaylistMobilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static synthetic a(Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(Z)Z

    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(I)V

    .line 58
    iget v0, p1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    invoke-static {v0}, Laxu;->b(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/datalist/f;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "listsign_phone_music"

    .line 109
    invoke-static {v0}, Laxu;->a(Ljava/lang/String;)Z

    move-result v0

    .line 111
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

    const-string v1, "PlaylistMobilePresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 114
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object v0

    .line 115
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;

    const/4 v2, 0x1

    new-instance v3, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Lcom/xiaopeng/musicradio/bean/ListSignBean;)V

    invoke-interface {p1, v2, v3}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->v()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 74
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 44
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "PlaylistMobilePresenter"

    const-string v0, "onDestroy"

    .line 50
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Laxh;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->v()V

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 86
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->v()V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/playlist/mobile/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 136
    invoke-static {}, Laxi;->a()Laxi;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/mobile/presenter/PlaylistMobilePresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxi;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    return-object v0
.end method
