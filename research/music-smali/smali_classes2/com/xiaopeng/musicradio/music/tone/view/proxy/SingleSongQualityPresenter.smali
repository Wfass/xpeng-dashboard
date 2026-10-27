.class public Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SingleSongQualityPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/tone/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicInfoEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SingleSongQualityPresen"

    const-string v0, "onMusicInfoEvent: ========"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 93
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbqp;->b(I)Lbqn;

    move-result-object p1

    invoke-interface {p1}, Lbqn;->i()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/tone/view/b;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/b;->onRefreshCurMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method

.method public onQualityRefreshEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ad;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SingleSongQualityPresen"

    const-string v0, "onQualityRefreshEvent: ======="

    .line 108
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_1

    .line 110
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbqp;->b(I)Lbqn;

    move-result-object p1

    invoke-interface {p1}, Lbqn;->i()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 114
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result p1

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/tone/view/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/b;->onRefreshSelected(I)V

    :cond_1
    return-void
.end method

.method public onSongQualityChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/tone/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/tone/view/b;->onRefreshSelected(I)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSongQualityChangeEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SingleSongQualityPresen"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/proxy/SingleSongQualityPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/tone/view/b;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/tone/view/b;->onShowLoading(ZI)V

    :cond_1
    return-void
.end method
