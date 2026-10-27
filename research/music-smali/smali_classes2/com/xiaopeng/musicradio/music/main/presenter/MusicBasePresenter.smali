.class public abstract Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "MusicBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "TUIInterface;>;"
    }
.end annotation


# instance fields
.field private b:Z

.field protected d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->d:Z

    .line 24
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->b:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->d:Z

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->d()V

    :cond_0
    return-void
.end method

.method public dealMusicInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->j()V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->l()V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->k()V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->d()V

    return-void
.end method

.method public k()V
    .locals 3

    .line 62
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    .line 63
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->d:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->d:Z

    :goto_0
    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public o_()V
    .locals 0

    return-void
.end method

.method public onMusicAuth(Lasj$n;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 28
    invoke-virtual {p1}, Lasj$n;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->f()V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->f()V

    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->f()V

    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->f()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 110
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->b:Z

    .line 112
    invoke-static {}, Lbni;->a()V

    :cond_0
    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->o_()V

    return-void
.end method

.method public receiveLogout(Lasj$ag;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 100
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    invoke-static {}, Lbni;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->b:Z

    :goto_0
    return-void
.end method
