.class public Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MusicTagsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/player/view/i;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 40
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 78
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/player/view/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/music/player/view/i;->refreshSinger(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->f()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/i;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/i;->setDefault()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 92
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->p_()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->f()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/i;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/i;->setDefault()V

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 105
    :cond_4
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/i;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/view/i;->setDefault()V

    :cond_6
    :goto_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->b:Z

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter$2;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/f;->a()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 143
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->e()V

    return-void
.end method

.method public onChangeAudio(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/i;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/player/view/i;->dismissGuideWhenChangeAudio()V

    :cond_0
    return-void
.end method

.method public onQualityRefreshEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 62
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/i;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/player/view/i;->onRefreshQuality()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->e()V

    return-void
.end method

.method public receiveLogout(Lasj$ag;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicTagsPresenter"

    const-string v0, "receiveLogout: "

    .line 153
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicTagsPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/i;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/player/view/i;->willLeaveThisLogin()V

    :cond_0
    return-void
.end method
