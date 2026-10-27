.class public Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;
.source "MusicPlayerCommonPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;-><init>()V

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->changeMusicSource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->m()V

    :cond_0
    return-void
.end method

.method private o()Lbid;
    .locals 1

    .line 48
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->c(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->o()Lbid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->o()Lbid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbid;->a(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->o()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->j()V

    return-void
.end method

.method public changeAudio(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicPlayerCommonPresen"

    const-string v0, "changeAudio: =="

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->p()V

    return-void
.end method

.method public changeMusicSource(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "MusicPlayerCommonPresen"

    const-string v1, "changeMusicSource: =="

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->c(I)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->o()Lbid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->o()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->r()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public e()I
    .locals 1

    .line 75
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 79
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->e()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->o()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->k()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerCommonPresenter;->p()V

    :cond_0
    return-void
.end method
