.class public Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;
.source "HistoryMusicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/history/music/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->q:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->v()V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->v()V

    return-void
.end method

.method private y()Z
    .locals 2

    .line 174
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 175
    invoke-static {}, Laxu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const-string v0, "HistoryMusicPresenter"

    const-string v1, "getDataListPosted start"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    .line 83
    invoke-static {v0}, Laxu;->a(I)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;Landroidx/lifecycle/LiveData;Lcom/xiaopeng/musicradio/datalist/f;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->y()Z

    move-result v0

    .line 193
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

    const-string v1, "HistoryMusicPresenter"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 196
    invoke-static {}, Laxu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$a;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->e()V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->v()V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->notifyDataSetChanged()V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->h()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 60
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "HistoryMusicPresenter"

    const-string v0, "onDestroy"

    .line 66
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$q;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 139
    invoke-virtual {p1}, Lasj$q;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->q:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->q:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const-wide/16 v0, 0x1

    .line 143
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 144
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;)V

    .line 145
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->q:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 157
    invoke-virtual {p1}, Lasj$q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lasj$q;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$a;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEvent(Lasj$r;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 121
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 122
    invoke-virtual {p1}, Lasj$r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$a;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->updateCollectedStatus(Lcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_0
    return-void
.end method

.method public onEvent(Lawk;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->v()V

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "Info"

    .line 111
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "PlayState"

    .line 116
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->v()V

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 2

    .line 205
    invoke-static {}, Lawl;->a()Lawl;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawl;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    return-object v0
.end method

.method protected u()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MsDataBasePresenter;->u()V

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/history/music/presenter/HistoryMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/music/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/a;->updateTitlePlayingState()V

    :cond_0
    return-void
.end method
