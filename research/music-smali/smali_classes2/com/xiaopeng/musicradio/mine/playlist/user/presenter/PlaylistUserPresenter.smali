.class public Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.source "PlaylistUserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method static synthetic a(Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 1

    .line 55
    invoke-static {p1}, Laxu;->d(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "listsign_recommend_music"

    .line 110
    invoke-static {v0}, Laxu;->a(Ljava/lang/String;)Z

    move-result v0

    .line 112
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

    const-string v1, "PlaylistUserPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object v0

    .line 116
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;

    const/4 v2, 0x1

    new-instance v3, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lcom/xiaopeng/musicradio/bean/ListSignBean;)V

    invoke-interface {p1, v2, v3}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected a(ZLjava/lang/Throwable;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->a(ZLjava/lang/Throwable;)V

    const/4 p1, 0x2

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a(I)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->v()V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a(I)V

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
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "PlaylistUserPresenter"

    const-string v0, "onDestroy"

    .line 49
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Laxh;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->v()V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 82
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 87
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->v()V

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 137
    invoke-static {}, Laxi;->a()Laxi;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/PlaylistUserPresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxi;->c(Ljava/lang/String;)Laxm;

    move-result-object v0

    return-object v0
.end method
