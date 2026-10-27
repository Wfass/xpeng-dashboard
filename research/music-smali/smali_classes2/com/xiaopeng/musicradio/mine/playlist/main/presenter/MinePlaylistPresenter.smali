.class public Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.source "MinePlaylistPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const-string v0, "MinePlaylistPresenter"

    const-string v1, "getDataListPosted: "

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p1}, Laxu;->d(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;

    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->p()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "listsign_recommend_music"

    .line 114
    invoke-static {v1}, Laxu;->a(Ljava/lang/String;)Z

    move-result v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayingStatus:playing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MinePlaylistPresenter"

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 119
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object v1

    .line 120
    const-class v3, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v1, v3}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 122
    new-instance v3, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lcom/xiaopeng/musicradio/bean/ListSignBean;)V

    invoke-interface {v0, p1, v3}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 78
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$w;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$w;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;

    if-eqz v0, :cond_0

    .line 80
    iget-boolean p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->v()V

    const/4 p1, 0x0

    const/4 v1, -0x1

    .line 82
    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MinePlaylistPresenter"

    const-string v0, "onCreate: "

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MinePlaylistPresenter"

    const-string v0, "onDestroy"

    .line 59
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lbfh$i;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->h()V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 93
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 98
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MinePlaylistPresenter"

    const-string v0, "onMusicBinded: "

    .line 153
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Laxu;->g()V

    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MinePlaylistPresenter"

    const-string v0, "onMusicBinded: "

    .line 141
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Laxu;->g()V

    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MinePlaylistPresenter"

    const-string v0, "onMusicBinded: "

    .line 147
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Laxu;->g()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->v()V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/main/presenter/MinePlaylistPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/playlist/main/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 88
    invoke-static {}, Laxi;->a()Laxi;

    move-result-object v0

    const-string v1, "FROM_MAIN"

    invoke-virtual {v0, v1}, Laxi;->c(Ljava/lang/String;)Laxm;

    move-result-object v0

    return-object v0
.end method
