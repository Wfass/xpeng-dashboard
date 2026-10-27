.class public Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.source "HistoryAlbumPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/history/album/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;)Z
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->i()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 1

    .line 56
    invoke-static {p1}, Laxu;->c(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Laxu;->d()Z

    move-result v0

    .line 114
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

    const-string v1, "CollectedAlbumPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 117
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/album/view/a;

    const/4 v2, 0x1

    new-instance v3, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lcom/xiaopeng/musicradio/bean/ListSignBean;)V

    invoke-interface {p1, v2, v3}, Lcom/xiaopeng/musicradio/mine/history/album/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/album/view/a;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/history/album/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/album/view/a;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/mine/history/album/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/album/view/a;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->v()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 78
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/history/album/view/a;->onDataListLoaded(Ljava/util/List;I)V

    :cond_0
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

    const-string p1, "CollectedAlbumPresenter"

    const-string v0, "onDestroy"

    .line 50
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lawk;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->v()V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/album/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/album/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 84
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 89
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->v()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/album/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/album/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 139
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/album/presenter/HistoryAlbumPresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawl;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    return-object v0
.end method
